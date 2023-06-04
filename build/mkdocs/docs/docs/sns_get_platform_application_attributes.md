<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sns_get_platform_application_attributes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the attributes of the platform application object for the supported push notification services, such as APNS and GCM (Firebase Cloud Messaging)

### Description

Retrieves the attributes of the platform application object for the
supported push notification services, such as APNS and GCM (Firebase
Cloud Messaging). For more information, see [Using Amazon SNS Mobile
Push
Notifications](https://docs.aws.amazon.com/sns/latest/dg/sns-mobile-application-as-subscriber.html).

### Usage

    sns_get_platform_application_attributes(PlatformApplicationArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sns_get_platform_application_attributes_:_PlatformApplicationArn">PlatformApplicationArn</code></td>
<td><p>[required] PlatformApplicationArn for
GetPlatformApplicationAttributesInput.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Attributes = list(
        "string"
      )
    )

### Request syntax

    svc$get_platform_application_attributes(
      PlatformApplicationArn = "string"
    )
