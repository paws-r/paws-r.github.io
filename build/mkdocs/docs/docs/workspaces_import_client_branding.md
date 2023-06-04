<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspaces_import_client_branding</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Imports client branding

### Description

Imports client branding. Client branding allows you to customize your
WorkSpace's client login portal. You can tailor your login portal
company logo, the support email address, support link, link to reset
password, and a custom message for users trying to sign in.

After you import client branding, the default branding experience for
the specified platform type is replaced with the imported experience

-   You must specify at least one platform type when importing client
    branding.

-   You can import up to 6 MB of data with each request. If your request
    exceeds this limit, you can import client branding for different
    platform types using separate requests.

-   In each platform type, the `SupportEmail` and `SupportLink`
    parameters are mutually exclusive. You can specify only one
    parameter for each platform type, but not both.

-   Imported data can take up to a minute to appear in the WorkSpaces
    client.

### Usage

    workspaces_import_client_branding(ResourceId, DeviceTypeWindows,
      DeviceTypeOsx, DeviceTypeAndroid, DeviceTypeIos, DeviceTypeLinux,
      DeviceTypeWeb)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspaces_import_client_branding_:_ResourceId">ResourceId</code></td>
<td><p>[required] The directory identifier of the WorkSpace for which
you want to import client branding.</p></td>
</tr>
<tr class="even">
<td><code
id="workspaces_import_client_branding_:_DeviceTypeWindows">DeviceTypeWindows</code></td>
<td><p>The branding information to import for Windows devices.</p></td>
</tr>
<tr class="odd">
<td><code
id="workspaces_import_client_branding_:_DeviceTypeOsx">DeviceTypeOsx</code></td>
<td><p>The branding information to import for macOS devices.</p></td>
</tr>
<tr class="even">
<td><code
id="workspaces_import_client_branding_:_DeviceTypeAndroid">DeviceTypeAndroid</code></td>
<td><p>The branding information to import for Android devices.</p></td>
</tr>
<tr class="odd">
<td><code
id="workspaces_import_client_branding_:_DeviceTypeIos">DeviceTypeIos</code></td>
<td><p>The branding information to import for iOS devices.</p></td>
</tr>
<tr class="even">
<td><code
id="workspaces_import_client_branding_:_DeviceTypeLinux">DeviceTypeLinux</code></td>
<td><p>The branding information to import for Linux devices.</p></td>
</tr>
<tr class="odd">
<td><code
id="workspaces_import_client_branding_:_DeviceTypeWeb">DeviceTypeWeb</code></td>
<td><p>The branding information to import for web access.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DeviceTypeWindows = list(
        LogoUrl = "string",
        SupportEmail = "string",
        SupportLink = "string",
        ForgotPasswordLink = "string",
        LoginMessage = list(
          "string"
        )
      ),
      DeviceTypeOsx = list(
        LogoUrl = "string",
        SupportEmail = "string",
        SupportLink = "string",
        ForgotPasswordLink = "string",
        LoginMessage = list(
          "string"
        )
      ),
      DeviceTypeAndroid = list(
        LogoUrl = "string",
        SupportEmail = "string",
        SupportLink = "string",
        ForgotPasswordLink = "string",
        LoginMessage = list(
          "string"
        )
      ),
      DeviceTypeIos = list(
        LogoUrl = "string",
        Logo2xUrl = "string",
        Logo3xUrl = "string",
        SupportEmail = "string",
        SupportLink = "string",
        ForgotPasswordLink = "string",
        LoginMessage = list(
          "string"
        )
      ),
      DeviceTypeLinux = list(
        LogoUrl = "string",
        SupportEmail = "string",
        SupportLink = "string",
        ForgotPasswordLink = "string",
        LoginMessage = list(
          "string"
        )
      ),
      DeviceTypeWeb = list(
        LogoUrl = "string",
        SupportEmail = "string",
        SupportLink = "string",
        ForgotPasswordLink = "string",
        LoginMessage = list(
          "string"
        )
      )
    )

### Request syntax

    svc$import_client_branding(
      ResourceId = "string",
      DeviceTypeWindows = list(
        Logo = raw,
        SupportEmail = "string",
        SupportLink = "string",
        ForgotPasswordLink = "string",
        LoginMessage = list(
          "string"
        )
      ),
      DeviceTypeOsx = list(
        Logo = raw,
        SupportEmail = "string",
        SupportLink = "string",
        ForgotPasswordLink = "string",
        LoginMessage = list(
          "string"
        )
      ),
      DeviceTypeAndroid = list(
        Logo = raw,
        SupportEmail = "string",
        SupportLink = "string",
        ForgotPasswordLink = "string",
        LoginMessage = list(
          "string"
        )
      ),
      DeviceTypeIos = list(
        Logo = raw,
        Logo2x = raw,
        Logo3x = raw,
        SupportEmail = "string",
        SupportLink = "string",
        ForgotPasswordLink = "string",
        LoginMessage = list(
          "string"
        )
      ),
      DeviceTypeLinux = list(
        Logo = raw,
        SupportEmail = "string",
        SupportLink = "string",
        ForgotPasswordLink = "string",
        LoginMessage = list(
          "string"
        )
      ),
      DeviceTypeWeb = list(
        Logo = raw,
        SupportEmail = "string",
        SupportLink = "string",
        ForgotPasswordLink = "string",
        LoginMessage = list(
          "string"
        )
      )
    )
