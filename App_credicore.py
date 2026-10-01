
import streamlit as st
import pyodbc
import pandas as pd

st.set_page_config(page_title="CrediCore - Gestión de Créditos", layout="wide")

st.title(" CrediCore - Sistema de Gestión de Créditos")
st.subheader("Plataforma de Atención al Cliente y Control de Transacciones")

def get_connection():
    return pyodbc.connect(
        "DRIVER={ODBC Driver 17 for SQL Server};"
        "SERVER=127.0.0.1;"
        "DATABASE=CrediCore;"
        "UID=sa;"
        "PWD=____;"
    )

opcion = st.sidebar.selectbox(
    "Selecciona una opción",
    ["Ver Cartera (Vista BI)", "Registrar Pago de Crédito"]
)

if opcion == "Ver Cartera (Vista BI)":
    st.header(" Vista General de Cartera (vw_AtencionAlCliente)")
    try:
        conn = get_connection()
        query = "SELECT * FROM vw_AtencionAlCliente;"
        df = pd.read_sql(query, conn)
        conn.close()

        estados = ["Todos"] + list(df["Estado del Credito"].unique())
        estado_sel = st.selectbox("Filtrar por Estado de Crédito:", estados)

        if estado_sel != "Todos":
            df_filtrado = df[df["Estado del Credito"] == estado_sel]
        else:
            df_filtrado = df

        st.dataframe(df_filtrado, use_container_width=True)
        st.metric("Total de Registros", len(df_filtrado))

    except Exception as e:
        st.error(f"Error al conectar con la base de datos: {e}")

elif opcion == "Registrar Pago de Crédito":
    st.header(" Registrar Nuevo Pago / Abono")
    
    with st.form("form_pago"):
        id_credito = st.number_input("ID del Crédito:", min_value=1, step=1)
        monto_pago = st.number_input("Monto del Pago:", min_value=-1000.0, step=10.0)
        btn_pagar = st.form_submit_button("Procesar Pago")

    if btn_pagar:
        try:
            conn = get_connection()
            cursor = conn.cursor()
            cursor.execute("{CALL sp_RegistrarPago (?, ?)}", (id_credito, monto_pago))
            conn.commit()
            
            st.success(f"¡Pago de Q{monto_pago:.2f} registrado exitosamente!")
            cursor.close()
            conn.close()

        except Exception as err:
            st.error(f" Error devuelto por la Base de Datos: {err}")