<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wafv2_generate_mobile_sdk_release_url</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Generates a presigned download URL for the specified release of the mobile SDK

### Description

Generates a presigned download URL for the specified release of the
mobile SDK.

The mobile SDK is not generally available. Customers who have access to
the mobile SDK can use it to establish and manage WAF tokens for use in
HTTP(S) requests from a mobile device to WAF. For more information, see
[WAF client application
integration](https://docs.aws.amazon.com/waf/latest/developerguide/waf-application-integration.html)
in the *WAF Developer Guide*.

### Usage

    wafv2_generate_mobile_sdk_release_url(Platform, ReleaseVersion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="wafv2_generate_mobile_sdk_release_url_:_Platform">Platform</code></td>
<td><p>[required] The device platform.</p></td>
</tr>
<tr class="even">
<td><code
id="wafv2_generate_mobile_sdk_release_url_:_ReleaseVersion">ReleaseVersion</code></td>
<td><p>[required] The release version. For the latest available version,
specify <code>LATEST</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Url = "string"
    )

### Request syntax

    svc$generate_mobile_sdk_release_url(
      Platform = "IOS"|"ANDROID",
      ReleaseVersion = "string"
    )
