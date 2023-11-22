param(
    $userName,
    $password,
    $ip, $port,
    $subId, $resourceGroupName, $region, $tenant, $servicePricipalId, $servicePricipalSecret
)

$script:ErrorActionPreference = 'Stop'
echo "Hello!"
$secpasswd = ConvertTo-SecureString $password -AsPlainText -Force
$cred = New-Object System.Management.Automation.PSCredential -ArgumentList $username, $secpasswd
$session = New-PSSession -ComputerName $ip -Port $port -Authentication Credssp -Credential $cred


Invoke-Command -Session $session -ScriptBlock {
    if(Test-Path c:\arc-installer) {
        rm c:\arc-installer -r
    }
}

Copy-Item -ToSession $session "$PSScriptRoot\arc-installer" -Destination "c:\arc-installer" -Recurse

Invoke-Command -Session $session -ScriptBlock {
    Param ($subId, $resourceGroupName, $region, $tenant, $servicePricipalId, $servicePricipalSecret)
    $script:ErrorActionPreference = 'Stop'
    cd c:\arc-installer
    set-executionpolicy Bypass -force
    function Install-ModuleIfMissing {
        param(
            [Parameter(Mandatory=$true)]
            [string]$Name,
            [string]$Repository = 'PSGallery',
            [switch]$Force
        )
        $script:ErrorActionPreference = 'Stop'
        $module = Get-Module -Name $Name -ListAvailable
        if(!$module) {
            Write-Host "Installing module $Name"
            Install-Module -Name $Name -Repository $Repository -Force:$Force
        }
    }
    $creds = [System.Management.Automation.PSCredential]::new($servicePricipalId, (ConvertTo-SecureString $servicePricipalSecret -AsPlainText -Force))

    Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Force -Confirm:$false

    Install-ModuleIfMissing -Name Az -Repository PSGallery -Force

    Connect-AzAccount -Subscription $subId -Tenant $tenant -Credential $creds -ServicePrincipal
    echo "login to Azure"

    Import-Module .\AzSHCI.ARCInstaller.psm1 -Force
    Install-ModuleIfMissing Az.Accounts -Force
    Install-ModuleIfMissing Az.ConnectedMachine -Force
    Install-ModuleIfMissing Az.Resources -Force
    $module = Get-Module -Name AzStackHci.EnvironmentChecker -ListAvailable
    if($module) {
        Write-Host "Removing module AzStackHci.EnvironmentChecker"
        Uninstall-Module -Name AzStackHci.EnvironmentChecker -Force
    }
    echo "Installed modules"
    $id= (Get-AzContext).Tenant.Id
    $token = (Get-AzAccessToken).Token
    $accountid= (Get-AzContext).Account.Id
    Invoke-AzStackHciArcInitialization -SubscriptionID $subId -ResourceGroup $resourceGroupName -TenantID $id -Region $region -Cloud "AzureCloud" -ArmAccessToken $token -AccountID  $accountid
    echo "Registered new server"
} -ArgumentList $subId, $resourceGroupName, $region, $tenant, $servicePricipalId, $servicePricipalSecret