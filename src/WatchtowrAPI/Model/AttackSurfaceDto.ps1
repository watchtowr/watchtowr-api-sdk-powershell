#
# Complete watchTowr Platform API Documentation
# The watchTowr Client API combining all watchTowr Platform APIs into a single comprehensive reference, including:       * Continuous Assurance API       * Adversary Sight API       * Intelligence API       * Platform API 
# Version: 1.0
# Contact: support@watchTowr.io
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER TotalVerifiedAssets
Total count of verified assets
.PARAMETER TotalPointsOfInterest
Total count of points of interest
.PARAMETER TotalNetworkServices
Total count of network services
.PARAMETER TotalCertificates
Total count of TLS/SSL certificates
.OUTPUTS

AttackSurfaceDto<PSCustomObject>
#>

function Initialize-AttackSurfaceDto {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [Decimal]
        ${TotalVerifiedAssets},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [Decimal]
        ${TotalPointsOfInterest},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [Decimal]
        ${TotalNetworkServices},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [Decimal]
        ${TotalCertificates}
    )

    Process {
        'Creating PSCustomObject: WatchtowrAPI => AttackSurfaceDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $TotalVerifiedAssets) {
            throw "invalid value for 'TotalVerifiedAssets', 'TotalVerifiedAssets' cannot be null."
        }

        if ($null -eq $TotalPointsOfInterest) {
            throw "invalid value for 'TotalPointsOfInterest', 'TotalPointsOfInterest' cannot be null."
        }

        if ($null -eq $TotalNetworkServices) {
            throw "invalid value for 'TotalNetworkServices', 'TotalNetworkServices' cannot be null."
        }

        if ($null -eq $TotalCertificates) {
            throw "invalid value for 'TotalCertificates', 'TotalCertificates' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "totalVerifiedAssets" = ${TotalVerifiedAssets}
            "totalPointsOfInterest" = ${TotalPointsOfInterest}
            "totalNetworkServices" = ${TotalNetworkServices}
            "totalCertificates" = ${TotalCertificates}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AttackSurfaceDto<PSCustomObject>

.DESCRIPTION

Convert from JSON to AttackSurfaceDto<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AttackSurfaceDto<PSCustomObject>
#>
function ConvertFrom-JsonToAttackSurfaceDto {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: WatchtowrAPI => AttackSurfaceDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in AttackSurfaceDto
        $AllProperties = ("totalVerifiedAssets", "totalPointsOfInterest", "totalNetworkServices", "totalCertificates")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'totalVerifiedAssets' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "totalVerifiedAssets"))) {
            throw "Error! JSON cannot be serialized due to the required property 'totalVerifiedAssets' missing."
        } else {
            $TotalVerifiedAssets = $JsonParameters.PSobject.Properties["totalVerifiedAssets"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "totalPointsOfInterest"))) {
            throw "Error! JSON cannot be serialized due to the required property 'totalPointsOfInterest' missing."
        } else {
            $TotalPointsOfInterest = $JsonParameters.PSobject.Properties["totalPointsOfInterest"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "totalNetworkServices"))) {
            throw "Error! JSON cannot be serialized due to the required property 'totalNetworkServices' missing."
        } else {
            $TotalNetworkServices = $JsonParameters.PSobject.Properties["totalNetworkServices"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "totalCertificates"))) {
            throw "Error! JSON cannot be serialized due to the required property 'totalCertificates' missing."
        } else {
            $TotalCertificates = $JsonParameters.PSobject.Properties["totalCertificates"].value
        }

        $PSO = [PSCustomObject]@{
            "totalVerifiedAssets" = ${TotalVerifiedAssets}
            "totalPointsOfInterest" = ${TotalPointsOfInterest}
            "totalNetworkServices" = ${TotalNetworkServices}
            "totalCertificates" = ${TotalCertificates}
        }

        return $PSO
    }

}

