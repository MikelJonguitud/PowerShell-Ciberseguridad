#<<Editado por Mikel Eduardo Jonguitud Hern�ndez>>  
#<<20/08/2025>>
$usuarios = Get-LocalUser 

$sinLogon = @() 

$conLogon = @() 

foreach ($u in $usuarios) { 

    if (-not $u.LastLogon) { 

        $sinLogon += "$($u.Name): Estado = $($u.Enabled), �ltimo acceso = NUNCA" 

    } else { 

        $conLogon += "$($u.Name): Estado = $($u.Enabled), �ltimo acceso = $($u.LastLogon)" 

    } 

} 

# Guardar en archivos separados 

$sinLogon | Out-File -FilePath "$env:USERPROFILE\Desktop\usuarios_sin_logon.txt" 

$conLogon | Out-File -FilePath "$env:USERPROFILE\Desktop\usuarios_con_logon.txt" 

# Mostrar en pantalla 

Write-Output "`n Usuarios que NUNCA han iniciado sesi�n:" 

$sinLogon | ForEach-Object { Write-Output $_ } 

Write-Output "`n Usuarios que S� han iniciado sesi�n:" 

$conLogon | ForEach-Object { Write-Output $_ } 
