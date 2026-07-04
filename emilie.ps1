$client = New-Object System.Net.Sockets.TcpClient("ADRESSE_IP", 9100)
$stream = $client.GetStream()
$bytes = [System.Text.Encoding]::ASCII.GetBytes("TEST IMPRESSION`r`n`f")
$stream.Write($bytes, 0, $bytes.Length)
$stream.Close(); $client.Close()
Get-ItemProperty "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Windows Protected Print" -ErrorAction SilentlyContinue