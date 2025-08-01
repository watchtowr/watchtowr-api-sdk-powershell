#
# Complete watchTowr Platform API Documentation
# The watchTowr Client API combining all watchTowr Platform APIs into a single comprehensive reference, including:       * Continuous Assurance API       * Adversary Sight API       * Intelligence API       * Platform API 
# Version: 1.0
# Contact: support@watchTowr.io
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

Get the configuration object 'Configuration'.

.DESCRIPTION

Get the configuration object 'Configuration'.

.OUTPUTS

System.Collections.Hashtable
#>
function Get-Configuration {

    $Configuration = $Script:Configuration

    if ([string]::IsNullOrEmpty($Configuration["BaseUrl"])) {
        $Configuration["BaseUrl"] = "https://your-tenant-id.sg.client.watchtowr.io";
    }

    if (!$Configuration.containsKey("Username")) {
        $Configuration["Username"] = $null
    }
    if (!$Configuration.containsKey("Password")) {
        $Configuration["Password"] = $null
    }
    if (!$Configuration.containsKey("AccessToken")) {
        $Configuration["AccessToken"] = $null
    }
    if (!$Configuration.containsKey("Cookie")) {
        $Configuration["Cookie"] = $null
    }

    if (!$Configuration["DefaultHeaders"]) {
        $Configuration["DefaultHeaders"] = @{}
    }

    if (!$Configuration["ApiKey"]) {
        $Configuration["ApiKey"] = @{}
    }

    if (!$Configuration["ApiKeyPrefix"]) {
        $Configuration["ApiKeyPrefix"] = @{}
    }

    if (!$Configuration.containsKey("SkipCertificateCheck")) {
        $Configuration["SkipCertificateCheck"] = $false
    }

    if (!$Configuration.containsKey("Proxy")) {
        $Configuration["Proxy"] = $null
    }

    Return $Configuration

}

<#
.SYNOPSIS

Set the configuration.

.DESCRIPTION

Set the configuration.

.PARAMETER BaseUrl
Base URL of the HTTP endpoints

.PARAMETER Username
Username in HTTP basic authentication

.PARAMETER Password
Password in HTTP basic authentication

.PARAMETER ApiKey
API Keys for authentication/authorization

.PARAMETER ApiKeyPrefix
Prefix in the API Keys

.PARAMETER Cookie
Cookie for authentication/authorization

.PARAMETER AccessToken
Access token for authentication/authorization

.PARAMETER SkipCertificateCheck
Skip certificate verification

.PARAMETER DefaultHeaders
Default HTTP headers to be included in the HTTP request

.PARAMETER Proxy
Proxy setting in the HTTP request, e.g.

$proxy = [System.Net.WebRequest]::GetSystemWebProxy()
$proxy.Credentials = [System.Net.CredentialCache]::DefaultCredentials

.PARAMETER PassThru
Return an object of the Configuration

.OUTPUTS

System.Collections.Hashtable
#>
function Set-Configuration {

    [CmdletBinding()]
    Param(
        [string]$BaseUrl,
        [AllowEmptyString()]
        [string]$Username,
        [AllowEmptyString()]
        [string]$Password,
        [hashtable]$ApiKey,
        [hashtable]$ApiKeyPrefix,
        [AllowEmptyString()]
        [string]$Cookie,
        [AllowEmptyString()]
        [string]$AccessToken,
        [switch]$SkipCertificateCheck,
        [hashtable]$DefaultHeaders,
        [System.Object]$Proxy,
        [switch]$PassThru
    )

    Process {

        If ($BaseUrl) {
            # validate URL
            $URL = $BaseUrl -as [System.URI]
            if (!($null -ne $URL.AbsoluteURI -and $URL.Scheme -match '[http|https]')) {
                throw "Invalid URL '$($BaseUrl)' cannot be used in the base URL."
            }
            $Script:Configuration["BaseUrl"] = $BaseUrl
        }

        If ($Username) {
            $Script:Configuration['Username'] = $Username
        }

        If ($Password) {
            $Script:Configuration['Password'] = $Password
        }

        If ($ApiKey) {
            $Script:Configuration['ApiKey'] = $ApiKey
        }

        If ($ApiKeyPrefix) {
            $Script:Configuration['ApiKeyPrefix'] = $ApiKeyPrefix
        }

        If ($Cookie) {
            $Script:Configuration['Cookie'] = $Cookie
        }

        If ($AccessToken) {
            $Script:Configuration['AccessToken'] = $AccessToken
        }

        If ($SkipCertificateCheck.IsPresent) {
            $Script:Configuration['SkipCertificateCheck'] = $true
        } else {
            $Script:Configuration['SkipCertificateCheck'] = $false
        }

        If ($DefaultHeaders) {
            $Script:Configuration['DefaultHeaders'] = $DefaultHeaders
        }

        If ($null -ne $Proxy) {
            If ('System.Net.IWebProxy' -notin $Proxy.GetType().ImplementedInterfaces.FullName) {
                throw "Incorrect Proxy type '$($Proxy.GetType().FullName)'. Must implement System.Net.IWebProxy interface."
            }
            $Script:Configuration['Proxy'] = $Proxy
        } else {
            $Script:Configuration['Proxy'] = $null
        }

        If ($PassThru.IsPresent) {
            $Script:Configuration
        }
    }
}

<#
.SYNOPSIS

Set the API Key.

.DESCRIPTION

Set the API Key.

.PARAMETER Id
ID of the security schema

.PARAMETER ApiKey
API Key

.OUTPUTS

None
#>
function Set-ConfigurationApiKey {
    [CmdletBinding()]
    Param(
        [string]$Id,
        [AllowEmptyString()]
        [string]$ApiKey
    )
    Process {
        if (!$Script:Configuration["ApiKey"]) {
            $Script:Configuration["ApiKey"] = @{}
        }
        $Script:Configuration["ApiKey"][$Id] = $ApiKey
    }
}

<#
.SYNOPSIS

Set the API Key prefix.

.DESCRIPTION

Set the API Key prefix.

.PARAMETER Id
ID of the security schema

.PARAMETER ApiKey
API Key prefix

.OUTPUTS

None
#>
function Set-ConfigurationApiKeyPrefix {
    [CmdletBinding()]
    Param(
        [string]$Id,
        [AllowEmptyString()]
        [string]$ApiKeyPrefix
    )
    Process {
        if (!$Script:Configuration["ApiKeyPrefix"]) {
            $Script:Configuration["ApiKeyPrefix"] = @{}
        }
        $Script:Configuration["ApiKeyPrefix"][$Id] = $ApiKeyPrefix
    }
}

<#
.SYNOPSIS

Set the default header.

.DESCRIPTION

Set the default header.

.PARAMETER Key
Key of the HTTP header

.PARAMETER Value
Value of the HTTP header

.OUTPUTS

None
#>
function Set-ConfigurationDefaultHeader {
    [CmdletBinding()]
    Param(
        [string]$Key,
        [AllowEmptyString()]
        [string]$Value
    )
    Process {
        if (!$Script:Configuration["DefaultHeaders"]) {
            $Script:Configuration["DefaultHeaders"] = @{}
        }
        $Script:Configuration["DefaultHeaders"][$Key] = $Value
    }
}


<#
.SYNOPSIS

Get the host setting.

.DESCRIPTION

Get the host setting in the form of array of hashtables.

.OUTPUTS

System.Collections.Hashtable[]
#>
function Get-HostSetting {
    return ,@(
          @{
            "Url" = "https://{tenant-id}.{region}.client.watchtowr.io";
            "Description" = "watchTowr Platform Client API";
            "Variables" = @{
              "tenant-id" = @{
                  "Description" = "Your tenant identifier";
                  "DefaultValue" = "your-tenant-id";
                };
              "region" = @{
                  "Description" = "Region";
                  "DefaultValue" = "sg";
                  "EnumValues" = @(
                    "sg",
                    "au",
                    "eu",
                    "us"
                  )
                }
              }
          }
    )

}

<#
.SYNOPSIS

Get the URL from the host settings.

.PARAMETER Index
Index of the host settings (array)

.PARAMETER Variables
Names and values of the variables (hashtable)

.DESCRIPTION

Get the URL from the host settings.

.OUTPUTS

String
#>
function Get-UrlFromHostSetting {

    [CmdletBinding()]
    Param(
        [Parameter(ValueFromPipeline = $true)]
        [Int]$Index,
        [Hashtable]$Variables = @{}
    )

    Process {
        $Hosts = Get-HostSetting

        # check array index out of bound
        if ($Index -lt 0 -or $Index -ge $Hosts.Length) {
            throw "Invalid index $index when selecting the host. Must be less than $($Hosts.Length)"
        }

        $MyHost = $Hosts[$Index];
        $Url = $MyHost["Url"];

        # go through variable and assign a value
        foreach ($h in $MyHost["Variables"].GetEnumerator()) {
            if ($Variables.containsKey($h.Name)) { # check to see if it's in the variables provided by the user
                if ($h.Value["EnumValues"] -Contains $Variables[$h.Name]) {
                   $Url = $Url.replace("{$($h.Name)}", $Variables[$h.Name])
                } else {
                   throw "The variable '$($h.Name)' in the host URL has invalid value $($Variables[$h.Name]). Must be $($h.Value["EnumValues"] -join ",")"
                }
            } else {
                $Url = $Url.replace("{$($h.Name)}", $h.Value["DefaultValue"])
            }
        }

        return $Url;

    }
}

<#
.SYNOPSIS
Sets the configuration for http signing.
.DESCRIPTION

Sets the configuration for the HTTP signature security scheme.
The HTTP signature security scheme is used to sign HTTP requests with a key
which is in possession of the API client.
An 'Authorization' header is calculated by creating a hash of select headers,
and optionally the body of the HTTP request, then signing the hash value using
a key. The 'Authorization' header is added to outbound HTTP requests.

Ref: https://openapi-generator.tech

.PARAMETER KeyId
KeyId for HTTP signing

.PARAMETER KeyFilePath
KeyFilePath for HTTP signing

.PARAMETER KeyPassPhrase
KeyPassPhrase, if the HTTP signing key is protected

.PARAMETER HttpSigningHeader
HttpSigningHeader list of HTTP headers used to calculate the signature. The two special signature headers '(request-target)' and '(created)'
SHOULD be included.
    The '(created)' header expresses when the signature was created.
    The '(request-target)' header is a concatenation of the lowercased :method, an
    ASCII space, and the :path pseudo-headers.
If no headers are specified then '(created)' sets as default.

.PARAMETER HashAlgorithm
HashAlgorithm to calculate the hash, Supported values are "sha256" and "sha512"

.PARAMETER SigningAlgorithm
SigningAlgorithm specifies the signature algorithm, supported values are "RSASSA-PKCS1-v1_5" and "RSASSA-PSS"
RSA key : Supported values "RSASSA-PKCS1-v1_5" and "RSASSA-PSS", for ECDSA key this parameter is not applicable

.PARAMETER SignatureValidityPeriod
SignatureValidityPeriod specifies the signature maximum validity time in seconds. It accepts integer value

.OUTPUTS

System.Collections.Hashtable
#>
function Set-ConfigurationHttpSigning {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [string]$KeyId,
        [Parameter(Mandatory = $true)]
        [string]$KeyFilePath,
        [Parameter(Mandatory = $false)]
        [securestring]$KeyPassPhrase,
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        [string[]] $HttpSigningHeader = @("(created)"),
        [Parameter(Mandatory = $false)]
        [ValidateSet("sha256", "sha512")]
        [string] $HashAlgorithm = "sha256",
        [Parameter(Mandatory = $false)]
        [ValidateSet("RSASSA-PKCS1-v1_5", "RSASSA-PSS")]
        [string]$SigningAlgorithm ,
        [Parameter(Mandatory = $false)]
        [int]$SignatureValidityPeriod
    )

    Process {
        $httpSignatureConfiguration = @{ }

        if (Test-Path -Path $KeyFilePath) {
            $httpSignatureConfiguration["KeyId"] = $KeyId
            $httpSignatureConfiguration["KeyFilePath"] = $KeyFilePath
        }
        else {
            throw "Private key file path does not exist"
        }

        $keyType = Get-KeyTypeFromFile -KeyFilePath $KeyFilePath
        if ([String]::IsNullOrEmpty($SigningAlgorithm)) {
            if ($keyType -eq "RSA") {
                $SigningAlgorithm = "RSASSA-PKCS1-v1_5"
            }
        }

        if ($keyType -eq "RSA" -and
            ($SigningAlgorithm -ne "RSASSA-PKCS1-v1_5" -and $SigningAlgorithm -ne "RSASSA-PSS" )) {
            throw "Provided Key and SigningAlgorithm : $SigningAlgorithm is not compatible."
        }

        if ($HttpSigningHeader -contains "(expires)" -and $SignatureValidityPeriod -le 0) {
            throw "SignatureValidityPeriod must be greater than 0 seconds."
        }

        if ($HttpSigningHeader -contains "(expires)") {
            $httpSignatureConfiguration["SignatureValidityPeriod"] = $SignatureValidityPeriod
        }
        if ($null -ne $HttpSigningHeader -and $HttpSigningHeader.Length -gt 0) {
            $httpSignatureConfiguration["HttpSigningHeader"] = $HttpSigningHeader
        }

        if ($null -ne $HashAlgorithm ) {
            $httpSignatureConfiguration["HashAlgorithm"] = $HashAlgorithm
        }

        if ($null -ne $SigningAlgorithm) {
            $httpSignatureConfiguration["SigningAlgorithm"] = $SigningAlgorithm
        }

        if ($null -ne $KeyPassPhrase) {
            $httpSignatureConfiguration["KeyPassPhrase"] = $KeyPassPhrase
        }

        $Script:Configuration["HttpSigning"] = New-Object -TypeName PSCustomObject -Property $httpSignatureConfiguration
    }
}

<#
.SYNOPSIS

Get the configuration object 'ConfigurationHttpSigning'.

.DESCRIPTION

Get the configuration object 'ConfigurationHttpSigning'.

.OUTPUTS

[PSCustomObject]
#>
function Get-ConfigurationHttpSigning{

    $httpSignatureConfiguration = $Script:Configuration["HttpSigning"]
    return $httpSignatureConfiguration
}
