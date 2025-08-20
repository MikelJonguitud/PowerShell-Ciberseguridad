# PowerShell-Ciberseguridad
Tarea de FCFM

# Scripts de Ciberseguridad  
Este repositorio contiene diferentes scripts desarrollados en el marco de mi formación en **Seguridad en Tecnologías de la Información (LSTI)**
### 1. Auditoría de usuarios locales (`auditoria_usuarios.ps1`)
- **Descripción**: Recorre los usuarios locales de Windows y los clasifica en dos grupos:  
  - Usuarios que **nunca han iniciado sesión**.  
  - Usuarios que **sí han iniciado sesión** (mostrando la última fecha).  
- **Salidas**:  
  - `usuarios_sin_logon.txt` → Usuarios sin inicio de sesión.  
  - `usuarios_con_logon.txt` → Usuarios con registro de inicio de sesión.  
- **Tareas de ciberseguridad que resuelve**:  
  - Detección de cuentas inactivas que podrían representar un **riesgo de seguridad**.  
  - Apoyo en la **auditoría de cuentas** para administración de accesos.  

### 2. Validación de archivos (`validar_archivo.ps1`)
- **Descripción**: Valida si un archivo existe y es accesible en el sistema.  
  - Si existe, muestra el mensaje de confirmación.  
  - Si no existe, captura el error y devuelve una alerta clara.  
  - Utiliza `try/catch/finally` para el manejo adecuado de excepciones.  
- **Ejemplo de uso**:
  ```powershell
  Validar-Archivo -Ruta "C:\archivo_inexistente.txt"
  Validar-Archivo -Ruta "$env:USERPROFILE\Desktop\archivo.txt"
