Install-Module PowerShell-yaml
Import-Module .\ConvertAnalyticsRuleFromYamlToArm.ps1

foreach($parserYaml in $(Get-Item .\Deploy\*.yaml))
{
     $outputFilePath = "..\Live\Detections\$($parserYaml.BaseName).json"
     ConvertAnalyticsRuleFromYamlToArm $parserYaml.FullName $outputFilePath
}
