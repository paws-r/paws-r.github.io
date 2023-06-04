<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sns_create_platform_application</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a platform application object for one of the supported push notification services, such as APNS and GCM (Firebase Cloud Messaging), to which devices and mobile apps may register

### Description

Creates a platform application object for one of the supported push
notification services, such as APNS and GCM (Firebase Cloud Messaging),
to which devices and mobile apps may register. You must specify
`PlatformPrincipal` and `PlatformCredential` attributes when using the
`create_platform_application` action.

`PlatformPrincipal` and `PlatformCredential` are received from the
notification service.

-   For `ADM`, `PlatformPrincipal` is `⁠client id⁠` and
    `PlatformCredential` is `⁠client secret⁠`.

-   For `Baidu`, `PlatformPrincipal` is `⁠API key⁠` and
    `PlatformCredential` is `⁠secret key⁠`.

-   For `APNS` and `APNS_SANDBOX` using certificate credentials,
    `PlatformPrincipal` is `⁠SSL certificate⁠` and `PlatformCredential` is
    `⁠private key⁠`.

-   For `APNS` and `APNS_SANDBOX` using token credentials,
    `PlatformPrincipal` is `⁠signing key ID⁠` and `PlatformCredential` is
    `⁠signing key⁠`.

-   For `GCM` (Firebase Cloud Messaging), there is no
    `PlatformPrincipal` and the `PlatformCredential` is `⁠API key⁠`.

-   For `MPNS`, `PlatformPrincipal` is `⁠TLS certificate⁠` and
    `PlatformCredential` is `⁠private key⁠`.

-   For `WNS`, `PlatformPrincipal` is `⁠Package Security Identifier⁠` and
    `PlatformCredential` is `⁠secret key⁠`.

You can use the returned `PlatformApplicationArn` as an attribute for
the `create_platform_endpoint` action.

### Usage

    sns_create_platform_application(Name, Platform, Attributes)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sns_create_platform_application_:_Name">Name</code></td>
<td><p>[required] Application names must be made up of only uppercase
and lowercase ASCII letters, numbers, underscores, hyphens, and periods,
and must be between 1 and 256 characters long.</p></td>
</tr>
<tr class="even">
<td><code
id="sns_create_platform_application_:_Platform">Platform</code></td>
<td><p>[required] The following platforms are supported: ADM (Amazon
Device Messaging), APNS (Apple Push Notification Service), APNS_SANDBOX,
and GCM (Firebase Cloud Messaging).</p></td>
</tr>
<tr class="odd">
<td><code
id="sns_create_platform_application_:_Attributes">Attributes</code></td>
<td><p>[required] For a list of attributes, see
<code>set_platform_application_attributes</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PlatformApplicationArn = "string"
    )

### Request syntax

    svc$create_platform_application(
      Name = "string",
      Platform = "string",
      Attributes = list(
        "string"
      )
    )
