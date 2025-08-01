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

.PARAMETER Type
No description available.
.PARAMETER Source
No description available.
.PARAMETER Status
No description available.
.PARAMETER CreatedAt
No description available.
.PARAMETER UpdatedAt
No description available.
.PARAMETER DeletedAt
No description available.
.PARAMETER Id
No description available.
.PARAMETER Name
No description available.
.PARAMETER Owner
No description available.
.PARAMETER Platform
No description available.
.PARAMETER Url
No description available.
.PARAMETER BusinessUnits
No description available.
.PARAMETER CustomProperties
No description available.
.PARAMETER Criticality
No description available.
.OUTPUTS

ClientContainer<PSCustomObject>
#>

function Initialize-ClientContainer {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Source},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("verified", "Unregistered", "Incorrect Identification", "pending", "VerifiedOutOfScope", "VerifiedReducedAttack", "Tracked")]
        [String]
        ${Status},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${CreatedAt},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${UpdatedAt},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${DeletedAt},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [Decimal]
        ${Id},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Owner},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Platform},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Url},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${BusinessUnits},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${CustomProperties},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Criticality}
    )

    Process {
        'Creating PSCustomObject: WatchtowrAPI => ClientContainer' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }

        if ($null -eq $Source) {
            throw "invalid value for 'Source', 'Source' cannot be null."
        }

        if ($null -eq $Status) {
            throw "invalid value for 'Status', 'Status' cannot be null."
        }

        if ($null -eq $CreatedAt) {
            throw "invalid value for 'CreatedAt', 'CreatedAt' cannot be null."
        }

        if ($null -eq $UpdatedAt) {
            throw "invalid value for 'UpdatedAt', 'UpdatedAt' cannot be null."
        }

        if ($null -eq $DeletedAt) {
            throw "invalid value for 'DeletedAt', 'DeletedAt' cannot be null."
        }

        if ($null -eq $Id) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if ($null -eq $Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if ($null -eq $Owner) {
            throw "invalid value for 'Owner', 'Owner' cannot be null."
        }

        if ($null -eq $Platform) {
            throw "invalid value for 'Platform', 'Platform' cannot be null."
        }

        if ($null -eq $Url) {
            throw "invalid value for 'Url', 'Url' cannot be null."
        }

        if ($null -eq $BusinessUnits) {
            throw "invalid value for 'BusinessUnits', 'BusinessUnits' cannot be null."
        }

        if ($null -eq $CustomProperties) {
            throw "invalid value for 'CustomProperties', 'CustomProperties' cannot be null."
        }

        if ($null -eq $Criticality) {
            throw "invalid value for 'Criticality', 'Criticality' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "source" = ${Source}
            "status" = ${Status}
            "created_at" = ${CreatedAt}
            "updated_at" = ${UpdatedAt}
            "deleted_at" = ${DeletedAt}
            "id" = ${Id}
            "name" = ${Name}
            "owner" = ${Owner}
            "platform" = ${Platform}
            "url" = ${Url}
            "businessUnits" = ${BusinessUnits}
            "customProperties" = ${CustomProperties}
            "criticality" = ${Criticality}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ClientContainer<PSCustomObject>

.DESCRIPTION

Convert from JSON to ClientContainer<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ClientContainer<PSCustomObject>
#>
function ConvertFrom-JsonToClientContainer {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: WatchtowrAPI => ClientContainer' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ClientContainer
        $AllProperties = ("type", "source", "status", "created_at", "updated_at", "deleted_at", "id", "name", "owner", "platform", "url", "businessUnits", "customProperties", "criticality")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'type' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) {
            throw "Error! JSON cannot be serialized due to the required property 'type' missing."
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "source"))) {
            throw "Error! JSON cannot be serialized due to the required property 'source' missing."
        } else {
            $Source = $JsonParameters.PSobject.Properties["source"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "status"))) {
            throw "Error! JSON cannot be serialized due to the required property 'status' missing."
        } else {
            $Status = $JsonParameters.PSobject.Properties["status"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created_at"))) {
            throw "Error! JSON cannot be serialized due to the required property 'created_at' missing."
        } else {
            $CreatedAt = $JsonParameters.PSobject.Properties["created_at"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "updated_at"))) {
            throw "Error! JSON cannot be serialized due to the required property 'updated_at' missing."
        } else {
            $UpdatedAt = $JsonParameters.PSobject.Properties["updated_at"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "deleted_at"))) {
            throw "Error! JSON cannot be serialized due to the required property 'deleted_at' missing."
        } else {
            $DeletedAt = $JsonParameters.PSobject.Properties["deleted_at"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) {
            throw "Error! JSON cannot be serialized due to the required property 'id' missing."
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) {
            throw "Error! JSON cannot be serialized due to the required property 'name' missing."
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "owner"))) {
            throw "Error! JSON cannot be serialized due to the required property 'owner' missing."
        } else {
            $Owner = $JsonParameters.PSobject.Properties["owner"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "platform"))) {
            throw "Error! JSON cannot be serialized due to the required property 'platform' missing."
        } else {
            $Platform = $JsonParameters.PSobject.Properties["platform"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "url"))) {
            throw "Error! JSON cannot be serialized due to the required property 'url' missing."
        } else {
            $Url = $JsonParameters.PSobject.Properties["url"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "businessUnits"))) {
            throw "Error! JSON cannot be serialized due to the required property 'businessUnits' missing."
        } else {
            $BusinessUnits = $JsonParameters.PSobject.Properties["businessUnits"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "customProperties"))) {
            throw "Error! JSON cannot be serialized due to the required property 'customProperties' missing."
        } else {
            $CustomProperties = $JsonParameters.PSobject.Properties["customProperties"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "criticality"))) {
            throw "Error! JSON cannot be serialized due to the required property 'criticality' missing."
        } else {
            $Criticality = $JsonParameters.PSobject.Properties["criticality"].value
        }

        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "source" = ${Source}
            "status" = ${Status}
            "created_at" = ${CreatedAt}
            "updated_at" = ${UpdatedAt}
            "deleted_at" = ${DeletedAt}
            "id" = ${Id}
            "name" = ${Name}
            "owner" = ${Owner}
            "platform" = ${Platform}
            "url" = ${Url}
            "businessUnits" = ${BusinessUnits}
            "customProperties" = ${CustomProperties}
            "criticality" = ${Criticality}
        }

        return $PSO
    }

}

