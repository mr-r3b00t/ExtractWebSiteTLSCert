$WebRequest = [Net.WebRequest]::Create("https://127.0.0.1:8834")
try { $WebRequest.GetResponse() }
catch
{#do nothing}
$cert = $WebRequest.ServicePoint.Certificate
$bytes = $cert.Export([Security.Cryptography.X509Certificates.X509ContentType]::Cert)
set-content -value $bytes -encoding byte -path "C:\users\public\Desktop\nessus.crt"
