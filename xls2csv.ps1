param(
	[Parameter(Mandatory=$true)][string] $inputFile,
	[Parameter(Mandatory=$true)][string] $outputFile
)

$objExcel = New-Object -ComObject Excel.Application 
if ((test-path $inputFile) -and ($inputFile -match ".xl\w*$")) 
{
	$path = (resolve-path -Path $inputFile).path 
	if(Test-path $outputFile)
	{
		Remove-Item -Path $outputFile -Force | Out-Null
	}
	$objworkbook=$objExcel.Workbooks.Open($inputFile)
	$objworkbook.SaveAs($outputFile,6)
	$objworkbook.Close($false) 
 }