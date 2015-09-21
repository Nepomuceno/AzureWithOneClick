param(
	[String]$ResourceGroupName = 'test-group'
)

New-AzureResourceGroup -Name $ResourceGroupName -Location westeurope -Verbose

Test-AzureResourceGroupTemplate  -ResourceGroupName $ResourceGroupName `
                                 -TemplateFile .\template-file.json `
                                 -TemplateParameterFile .\parameter-file.json `
                                 -Verbose