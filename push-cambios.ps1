# Script para hacer commit y push automático
cd "c:\Users\MINEDUCYT\Desktop\Kevin León web\ProyectoPersonal\mi portafolio"

# Mostrar cambios
Write-Host "[*] Estado del repositorio:" -ForegroundColor Cyan
git status

# Pedir mensaje
$mensaje = Read-Host "Escribe el mensaje del commit"

if ([string]::IsNullOrWhiteSpace($mensaje)) {
    $fecha = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    $mensaje = "Cambios actualizados $fecha"
}

# Hacer commit
Write-Host "[*] Realizando commit..." -ForegroundColor Yellow
git add .
git commit -m "$mensaje"

# Hacer push
Write-Host "[*] Enviando cambios a GitHub..." -ForegroundColor Yellow
git push origin main

if ($LASTEXITCODE -eq 0) {
    Write-Host "[OK] Cambios enviados exitosamente!" -ForegroundColor Green
} else {
    Write-Host "[ERROR] Hubo un error al enviar los cambios" -ForegroundColor Red
}

Read-Host "Presiona Enter para cerrar"
