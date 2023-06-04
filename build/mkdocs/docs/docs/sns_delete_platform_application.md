<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sns_delete_platform_application</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a platform application object for one of the supported push notification services, such as APNS and GCM (Firebase Cloud Messaging)

### Description

Deletes a platform application object for one of the supported push
notification services, such as APNS and GCM (Firebase Cloud Messaging).
For more information, see [Using Amazon SNS Mobile Push
Notifications](https://docs.aws.amazon.com/sns/latest/dg/sns-mobile-application-as-subscriber.html).

### Usage

    sns_delete_platform_application(PlatformApplicationArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sns_delete_platform_application_:_PlatformApplicationArn">PlatformApplicationArn</code></td>
<td><p>[required] PlatformApplicationArn of platform application object
to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_platform_application(
      PlatformApplicationArn = "string"
    )
