<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspaces_describe_client_branding</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the specified client branding

### Description

Describes the specified client branding. Client branding allows you to
customize the log in page of various device types for your users. You
can add your company logo, the support email address, support link, link
to reset password, and a custom message for users trying to sign in.

Only device types that have branding information configured will be
shown in the response.

### Usage

    workspaces_describe_client_branding(ResourceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspaces_describe_client_branding_:_ResourceId">ResourceId</code></td>
<td><p>[required] The directory identifier of the WorkSpace for which
you want to view client branding information.</p></td>
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

    svc$describe_client_branding(
      ResourceId = "string"
    )
