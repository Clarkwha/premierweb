# PowerShell script to stop the Node.js server on port 8000

Write-Host "Looking for Node.js process on port 8000..." -ForegroundColor Yellow

# Find the process using port 8000
$process = Get-NetTCPConnection -LocalPort 8000 -ErrorAction SilentlyContinue | Select-Object -ExpandProperty OwningProcess -Unique

if ($process) {
    $processId = $process
    $processInfo = Get-Process -Id $processId -ErrorAction SilentlyContinue
    
    if ($processInfo) {
        Write-Host "Found process: $($processInfo.ProcessName) (PID: $processId)" -ForegroundColor Green
        Write-Host "Stopping process..." -ForegroundColor Yellow
        Stop-Process -Id $processId -Force
        Write-Host "Server stopped successfully!" -ForegroundColor Green
    } else {
        Write-Host "Process not found." -ForegroundColor Red
    }
} else {
    Write-Host "No process found using port 8000." -ForegroundColor Red
    Write-Host "The server may already be stopped." -ForegroundColor Yellow
}







