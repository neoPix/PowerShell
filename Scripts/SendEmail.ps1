param(
	[Parameter(Mandatory=$true,ValueFromPipeline='True')][string[]] $text,
	[Parameter(Mandatory=$true)][string] $title,
	[Parameter(Mandatory=$true)][string] $from,
	[Parameter(Mandatory=$true)][string] $to,
	[Parameter(Mandatory=$true)][string] $server
)

$smtp = New-Object Net.Mail.SmtpClient($server)
$smtp.Send($from, $to, $title, $text)
