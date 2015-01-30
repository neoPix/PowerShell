param(
	[Parameter(Mandatory=$true)][string] $inputFile,
	[Parameter(Mandatory=$true)][string] $outputFile
)

import-csv -Path $inputFile -Delimiter ";" | ConvertTo-Json -Compress | Out-File $outputFile