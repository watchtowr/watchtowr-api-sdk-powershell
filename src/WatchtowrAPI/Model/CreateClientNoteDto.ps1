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

.PARAMETER Note
Content of the note.
.PARAMETER Title
Title of the note.
.OUTPUTS

CreateClientNoteDto<PSCustomObject>
#>

function Initialize-CreateClientNoteDto {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Note},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Title}
    )

    Process {
        'Creating PSCustomObject: WatchtowrAPI => CreateClientNoteDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Note) {
            throw "invalid value for 'Note', 'Note' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "note" = ${Note}
            "title" = ${Title}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to CreateClientNoteDto<PSCustomObject>

.DESCRIPTION

Convert from JSON to CreateClientNoteDto<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

CreateClientNoteDto<PSCustomObject>
#>
function ConvertFrom-JsonToCreateClientNoteDto {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: WatchtowrAPI => CreateClientNoteDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in CreateClientNoteDto
        $AllProperties = ("note", "title")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'note' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "note"))) {
            throw "Error! JSON cannot be serialized due to the required property 'note' missing."
        } else {
            $Note = $JsonParameters.PSobject.Properties["note"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "title"))) { #optional property not found
            $Title = $null
        } else {
            $Title = $JsonParameters.PSobject.Properties["title"].value
        }

        $PSO = [PSCustomObject]@{
            "note" = ${Note}
            "title" = ${Title}
        }

        return $PSO
    }

}

