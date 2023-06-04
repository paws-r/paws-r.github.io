<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sns_create_platform_endpoint</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an endpoint for a device and mobile app on one of the supported push notification services, such as GCM (Firebase Cloud Messaging) and APNS

### Description

Creates an endpoint for a device and mobile app on one of the supported
push notification services, such as GCM (Firebase Cloud Messaging) and
APNS. `create_platform_endpoint` requires the `PlatformApplicationArn`
that is returned from `create_platform_application`. You can use the
returned `EndpointArn` to send a message to a mobile app or by the
`subscribe` action for subscription to a topic. The
`create_platform_endpoint` action is idempotent, so if the requester
already owns an endpoint with the same device token and attributes, that
endpoint's ARN is returned without creating a new endpoint. For more
information, see [Using Amazon SNS Mobile Push
Notifications](https://docs.aws.amazon.com/sns/latest/dg/sns-mobile-application-as-subscriber.html).

When using `create_platform_endpoint` with Baidu, two attributes must be
provided: ChannelId and UserId. The token field must also contain the
ChannelId. For more information, see [Creating an Amazon SNS Endpoint
for
Baidu](https://docs.aws.amazon.com/sns/latest/dg/sns-mobile-application-as-subscriber.html).

### Usage

    sns_create_platform_endpoint(PlatformApplicationArn, Token,
      CustomUserData, Attributes)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sns_create_platform_endpoint_:_PlatformApplicationArn">PlatformApplicationArn</code></td>
<td><p>[required] PlatformApplicationArn returned from
CreatePlatformApplication is used to create a an endpoint.</p></td>
</tr>
<tr class="even">
<td><code id="sns_create_platform_endpoint_:_Token">Token</code></td>
<td><p>[required] Unique identifier created by the notification service
for an app on a device. The specific name for Token will vary, depending
on which notification service is being used. For example, when using
APNS as the notification service, you need the device token.
Alternatively, when using GCM (Firebase Cloud Messaging) or ADM, the
device token equivalent is called the registration ID.</p></td>
</tr>
<tr class="odd">
<td><code
id="sns_create_platform_endpoint_:_CustomUserData">CustomUserData</code></td>
<td><p>Arbitrary user data to associate with the endpoint. Amazon SNS
does not use this data. The data must be in UTF-8 format and less than
2KB.</p></td>
</tr>
<tr class="even">
<td><code
id="sns_create_platform_endpoint_:_Attributes">Attributes</code></td>
<td><p>For a list of attributes, see
<code>set_endpoint_attributes</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EndpointArn = "string"
    )

### Request syntax

    svc$create_platform_endpoint(
      PlatformApplicationArn = "string",
      Token = "string",
      CustomUserData = "string",
      Attributes = list(
        "string"
      )
    )
