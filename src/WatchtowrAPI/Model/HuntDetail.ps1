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

.PARAMETER Id
ID
.PARAMETER Priority
Priority
.PARAMETER Type
Type
.PARAMETER CreatedAt
Created at
.PARAMETER UpdatedAt
Updated at
.PARAMETER TotalFindings
Total findings
.PARAMETER TotalAssets
Total assets
.PARAMETER HuntRequestType
Hunt request type
.PARAMETER RapidExposureMechanism
Rapid exposure mechanism
.PARAMETER Title
Title
.PARAMETER Description
No description available.
.PARAMETER Hypothesis
Hypothesis
.PARAMETER References
references
.PARAMETER CompletedAt
Completed at
.PARAMETER CompletedBy
Completed by
.PARAMETER RequestedBy
Request by
.PARAMETER Status
Status
.OUTPUTS

HuntDetail<PSCustomObject>
#>

function Initialize-HuntDetail {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [Decimal]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("low", "normal", "medium", "high")]
        [String]
        ${Priority},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("bespoke", "proactive")]
        [String]
        ${Type},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${CreatedAt},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${UpdatedAt},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [Decimal]
        ${TotalFindings},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [Decimal]
        ${TotalAssets},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("Misconfig", "Others", "SoftwareVulnerability", "ThreatIntelligence")]
        [String]
        ${HuntRequestType},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("impactLessPoc", "versionMetadata", "technologyMetadata", "indicatorOfCompromise", "N/A")]
        [String]
        ${RapidExposureMechanism},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Title},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Hypothesis},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${References},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${CompletedAt},
        [Parameter(Position = 14, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CompletedBy},
        [Parameter(Position = 15, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${RequestedBy},
        [Parameter(Position = 16, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("received", "in-progress", "completed", "not-covered")]
        [String]
        ${Status}
    )

    Process {
        'Creating PSCustomObject: WatchtowrAPI => HuntDetail' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Id) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if ($null -eq $Priority) {
            throw "invalid value for 'Priority', 'Priority' cannot be null."
        }

        if ($null -eq $Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }

        if ($null -eq $CreatedAt) {
            throw "invalid value for 'CreatedAt', 'CreatedAt' cannot be null."
        }

        if ($null -eq $UpdatedAt) {
            throw "invalid value for 'UpdatedAt', 'UpdatedAt' cannot be null."
        }

        if ($null -eq $TotalFindings) {
            throw "invalid value for 'TotalFindings', 'TotalFindings' cannot be null."
        }

        if ($null -eq $TotalAssets) {
            throw "invalid value for 'TotalAssets', 'TotalAssets' cannot be null."
        }

        if ($null -eq $HuntRequestType) {
            throw "invalid value for 'HuntRequestType', 'HuntRequestType' cannot be null."
        }

        if ($null -eq $Title) {
            throw "invalid value for 'Title', 'Title' cannot be null."
        }

        if ($null -eq $Description) {
            throw "invalid value for 'Description', 'Description' cannot be null."
        }

        if ($null -eq $Hypothesis) {
            throw "invalid value for 'Hypothesis', 'Hypothesis' cannot be null."
        }

        if ($null -eq $References) {
            throw "invalid value for 'References', 'References' cannot be null."
        }

        if ($null -eq $CompletedAt) {
            throw "invalid value for 'CompletedAt', 'CompletedAt' cannot be null."
        }

        if ($null -eq $CompletedBy) {
            throw "invalid value for 'CompletedBy', 'CompletedBy' cannot be null."
        }

        if ($null -eq $RequestedBy) {
            throw "invalid value for 'RequestedBy', 'RequestedBy' cannot be null."
        }

        if ($null -eq $Status) {
            throw "invalid value for 'Status', 'Status' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "priority" = ${Priority}
            "type" = ${Type}
            "created_at" = ${CreatedAt}
            "updated_at" = ${UpdatedAt}
            "total_findings" = ${TotalFindings}
            "total_assets" = ${TotalAssets}
            "hunt_request_type" = ${HuntRequestType}
            "rapid_exposure_mechanism" = ${RapidExposureMechanism}
            "title" = ${Title}
            "description" = ${Description}
            "hypothesis" = ${Hypothesis}
            "references" = ${References}
            "completed_at" = ${CompletedAt}
            "completed_by" = ${CompletedBy}
            "requested_by" = ${RequestedBy}
            "status" = ${Status}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to HuntDetail<PSCustomObject>

.DESCRIPTION

Convert from JSON to HuntDetail<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

HuntDetail<PSCustomObject>
#>
function ConvertFrom-JsonToHuntDetail {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: WatchtowrAPI => HuntDetail' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in HuntDetail
        $AllProperties = ("id", "priority", "type", "created_at", "updated_at", "total_findings", "total_assets", "hunt_request_type", "rapid_exposure_mechanism", "title", "description", "hypothesis", "references", "completed_at", "completed_by", "requested_by", "status")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'id' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) {
            throw "Error! JSON cannot be serialized due to the required property 'id' missing."
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "priority"))) {
            throw "Error! JSON cannot be serialized due to the required property 'priority' missing."
        } else {
            $Priority = $JsonParameters.PSobject.Properties["priority"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) {
            throw "Error! JSON cannot be serialized due to the required property 'type' missing."
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "total_findings"))) {
            throw "Error! JSON cannot be serialized due to the required property 'total_findings' missing."
        } else {
            $TotalFindings = $JsonParameters.PSobject.Properties["total_findings"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "total_assets"))) {
            throw "Error! JSON cannot be serialized due to the required property 'total_assets' missing."
        } else {
            $TotalAssets = $JsonParameters.PSobject.Properties["total_assets"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "hunt_request_type"))) {
            throw "Error! JSON cannot be serialized due to the required property 'hunt_request_type' missing."
        } else {
            $HuntRequestType = $JsonParameters.PSobject.Properties["hunt_request_type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "title"))) {
            throw "Error! JSON cannot be serialized due to the required property 'title' missing."
        } else {
            $Title = $JsonParameters.PSobject.Properties["title"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) {
            throw "Error! JSON cannot be serialized due to the required property 'description' missing."
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "hypothesis"))) {
            throw "Error! JSON cannot be serialized due to the required property 'hypothesis' missing."
        } else {
            $Hypothesis = $JsonParameters.PSobject.Properties["hypothesis"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "references"))) {
            throw "Error! JSON cannot be serialized due to the required property 'references' missing."
        } else {
            $References = $JsonParameters.PSobject.Properties["references"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "completed_at"))) {
            throw "Error! JSON cannot be serialized due to the required property 'completed_at' missing."
        } else {
            $CompletedAt = $JsonParameters.PSobject.Properties["completed_at"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "completed_by"))) {
            throw "Error! JSON cannot be serialized due to the required property 'completed_by' missing."
        } else {
            $CompletedBy = $JsonParameters.PSobject.Properties["completed_by"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requested_by"))) {
            throw "Error! JSON cannot be serialized due to the required property 'requested_by' missing."
        } else {
            $RequestedBy = $JsonParameters.PSobject.Properties["requested_by"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "status"))) {
            throw "Error! JSON cannot be serialized due to the required property 'status' missing."
        } else {
            $Status = $JsonParameters.PSobject.Properties["status"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "rapid_exposure_mechanism"))) { #optional property not found
            $RapidExposureMechanism = $null
        } else {
            $RapidExposureMechanism = $JsonParameters.PSobject.Properties["rapid_exposure_mechanism"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "priority" = ${Priority}
            "type" = ${Type}
            "created_at" = ${CreatedAt}
            "updated_at" = ${UpdatedAt}
            "total_findings" = ${TotalFindings}
            "total_assets" = ${TotalAssets}
            "hunt_request_type" = ${HuntRequestType}
            "rapid_exposure_mechanism" = ${RapidExposureMechanism}
            "title" = ${Title}
            "description" = ${Description}
            "hypothesis" = ${Hypothesis}
            "references" = ${References}
            "completed_at" = ${CompletedAt}
            "completed_by" = ${CompletedBy}
            "requested_by" = ${RequestedBy}
            "status" = ${Status}
        }

        return $PSO
    }

}

