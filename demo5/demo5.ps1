param(
	[String]$ResourceGroupName = 'test-group'
)

New-AzureResourceGroup -Name $ResourceGroupName -Location westeurope -Verbose

New-AzureResourceGroupDeployment -ResourceGroupName $ResourceGroupName `
                                 -Name "$ResourceGroupName-deployment" `
                                 -TemplateFile .\template-file.json `
                                 -TemplateParameterFile .\parameter-file.json `
                                 -Verbose