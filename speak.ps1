param(
	[Parameter(Mandatory=$true,ValueFromPipeline='True')][string[]] $text,
	[parameter()][ValidateRange(-10,10)][Int] $Rate,
	[parameter()][ValidateRange(1,100)] $Volume
)

Add-Type -AssemblyName System.speech
$speak = New-Object System.Speech.Synthesis.SpeechSynthesizer

If ($PSBoundParameters['Volume']) {
	$speak.Volume = $PSBoundParameters['Volume']
} Else {
	$speak.Volume = 100
}

If ($PSBoundParameters['Rate']) {
	$speak.Rate = $PSBoundParameters['Rate']
} Else {
	$speak.rate = -2
}
ForEach ($line in $text) {
	$speak.Speak(($text | Out-String) ) | Out-Null
}