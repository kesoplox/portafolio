# Script para hacer commit y push automático
$carpeta = "c:\Users\MINEDUCYT\Desktop\Kevin León web\ProyectoPersonal\mi portafolio"
cd $carpeta

# Mostrar cambios
git status

# Pedir mensaje
$mensaje = Read-Host "Escribe el mensaje del commit"

# Hacer commit
git add .
git commit -m $mensaje

# Hacer push
git push origin main

Write-Host "✅ Cambios enviados a GitHub exitosamente!" -ForegroundColor Green
Pause
