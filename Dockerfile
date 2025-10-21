# Dockerfile para Odoo 17 con dependencias adicionales
FROM odoo:17

USER root

# Actualiza pip e instala dependencias de Python necesarias
RUN pip3 install --upgrade pip \
    && pip3 install openpyxl pymssql

# Regresa al usuario odoo (por seguridad)
USER odoo
