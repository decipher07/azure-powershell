
# ----------------------------------------------------------------------------------
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# Code generated by Microsoft (R) AutoRest Code Generator.Changes may cause incorrect behavior and will be lost if the code
# is regenerated.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Create a Custom Location in the specified Subscription and Resource Group
.Description
Create a Custom Location in the specified Subscription and Resource Group
.Example
$HostResourceId = (Get-AzConnectedKubernetes -ClusterName azps-connect -ResourceGroupName azps_test_cluster).Id
$ClusterExtensionId = (Get-AzKubernetesExtension -ClusterName azps-connect -ClusterType ConnectedClusters -ResourceGroupName azps_test_cluster -Name azps-extension).Id
New-AzCustomLocation -ResourceGroupName azps_test_cluster -Name azps-customlocation -Location eastus -ClusterExtensionId $ClusterExtensionId -HostResourceId $HostResourceId -Namespace azps-namespace

.Outputs
Microsoft.Azure.PowerShell.Cmdlets.CustomLocation.Models.ICustomLocation
.Link
https://learn.microsoft.com/powershell/module/az.customlocation/new-azcustomlocation
#>
function New-AzCustomLocation {
[OutputType([Microsoft.Azure.PowerShell.Cmdlets.CustomLocation.Models.ICustomLocation])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
param(
    [Parameter(Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.CustomLocation.Category('Path')]
    [System.String]
    # Custom Locations name.
    ${Name},

    [Parameter(Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.CustomLocation.Category('Path')]
    [System.String]
    # The name of the resource group.
    # The name is case insensitive.
    ${ResourceGroupName},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.CustomLocation.Category('Path')]
    [Microsoft.Azure.PowerShell.Cmdlets.CustomLocation.Runtime.DefaultInfo(Script='(Get-AzContext).Subscription.Id')]
    [System.String]
    # The ID of the target subscription.
    ${SubscriptionId},

    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.CustomLocation.Category('Body')]
    [System.String]
    # The geo-location where the resource lives
    ${Location},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Azure.PowerShell.Cmdlets.CustomLocation.Category('Body')]
    [System.String]
    # The type of the Custom Locations authentication
    ${AuthenticationType},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Azure.PowerShell.Cmdlets.CustomLocation.Category('Body')]
    [System.String]
    # The kubeconfig value.
    ${AuthenticationValue},

    [Parameter(ParameterSetName='CreateExpanded')]
    [AllowEmptyCollection()]
    [Microsoft.Azure.PowerShell.Cmdlets.CustomLocation.Category('Body')]
    [System.String[]]
    # Contains the reference to the add-on that contains charts to deploy CRDs and operators.
    ${ClusterExtensionId},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Azure.PowerShell.Cmdlets.CustomLocation.Category('Body')]
    [System.String]
    # Display name for the Custom Locations location.
    ${DisplayName},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Azure.PowerShell.Cmdlets.CustomLocation.Category('Body')]
    [System.String]
    # Connected Cluster or AKS Cluster.
    # The Custom Locations RP will perform a checkAccess API for listAdminCredentials permissions.
    ${HostResourceId},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Azure.PowerShell.Cmdlets.CustomLocation.PSArgumentCompleterAttribute("SystemAssigned", "None")]
    [Microsoft.Azure.PowerShell.Cmdlets.CustomLocation.Category('Body')]
    [System.String]
    # The identity type.
    ${IdentityType},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Azure.PowerShell.Cmdlets.CustomLocation.Category('Body')]
    [System.String]
    # Kubernetes namespace that will be created on the specified cluster.
    ${Namespace},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Azure.PowerShell.Cmdlets.CustomLocation.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.CustomLocation.Runtime.Info(PossibleTypes=([Microsoft.Azure.PowerShell.Cmdlets.CustomLocation.Models.ITrackedResourceTags]))]
    [System.Collections.Hashtable]
    # Resource tags.
    ${Tag},

    [Parameter(ParameterSetName='CreateViaJsonFilePath', Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.CustomLocation.Category('Body')]
    [System.String]
    # Path of Json file supplied to the Create operation
    ${JsonFilePath},

    [Parameter(ParameterSetName='CreateViaJsonString', Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.CustomLocation.Category('Body')]
    [System.String]
    # Json string supplied to the Create operation
    ${JsonString},

    [Parameter()]
    [Alias('AzureRMContext', 'AzureCredential')]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.CustomLocation.Category('Azure')]
    [System.Management.Automation.PSObject]
    # The DefaultProfile parameter is not functional.
    # Use the SubscriptionId parameter when available if executing the cmdlet against a different subscription.
    ${DefaultProfile},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.CustomLocation.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Run the command as a job
    ${AsJob},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.CustomLocation.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.CustomLocation.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.CustomLocation.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.CustomLocation.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.CustomLocation.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.CustomLocation.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Run the command asynchronously
    ${NoWait},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.CustomLocation.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.CustomLocation.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.CustomLocation.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName

        $mapping = @{
            CreateExpanded = 'Az.CustomLocation.private\New-AzCustomLocation_CreateExpanded';
            CreateViaJsonFilePath = 'Az.CustomLocation.private\New-AzCustomLocation_CreateViaJsonFilePath';
            CreateViaJsonString = 'Az.CustomLocation.private\New-AzCustomLocation_CreateViaJsonString';
        }
        if (('CreateExpanded', 'CreateViaJsonFilePath', 'CreateViaJsonString') -contains $parameterSet -and -not $PSBoundParameters.ContainsKey('SubscriptionId') ) {
            $testPlayback = $false
            $PSBoundParameters['HttpPipelinePrepend'] | Foreach-Object { if ($_) { $testPlayback = $testPlayback -or ('Microsoft.Azure.PowerShell.Cmdlets.CustomLocation.Runtime.PipelineMock' -eq $_.Target.GetType().FullName -and 'Playback' -eq $_.Target.Mode) } }
            if ($testPlayback) {
                $PSBoundParameters['SubscriptionId'] = . (Join-Path $PSScriptRoot '..' 'utils' 'Get-SubscriptionIdTestSafe.ps1')
            } else {
                $PSBoundParameters['SubscriptionId'] = (Get-AzContext).Subscription.Id
            }
        }
        if (('CreateExpanded') -contains $parameterSet -and -not $PSBoundParameters.ContainsKey('HostType') ) {
            $PSBoundParameters['HostType'] = "Kubernetes"
        }

        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {

        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {

        throw
    }

}
end {
    try {
        $steppablePipeline.End()

    } catch {

        throw
    }
} 
}
