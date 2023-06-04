<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sns_set_endpoint_attributes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sets the attributes for an endpoint for a device on one of the supported push notification services, such as GCM (Firebase Cloud Messaging) and APNS

### Description

Sets the attributes for an endpoint for a device on one of the supported
push notification services, such as GCM (Firebase Cloud Messaging) and
APNS. For more information, see [Using Amazon SNS Mobile Push
Notifications](https://docs.aws.amazon.com/sns/latest/dg/sns-mobile-application-as-subscriber.html).

### Usage

    sns_set_endpoint_attributes(EndpointArn, Attributes)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sns_set_endpoint_attributes_:_EndpointArn">EndpointArn</code></td>
<td><p>[required] EndpointArn used for SetEndpointAttributes
action.</p></td>
</tr>
<tr class="even">
<td><code
id="sns_set_endpoint_attributes_:_Attributes">Attributes</code></td>
<td><p>[required] A map of the endpoint attributes. Attributes in this
map include the following:</p>
<ul>
<li><p><code>CustomUserData</code> – arbitrary user data to associate
with the endpoint. Amazon SNS does not use this data. The data must be
in UTF-8 format and less than 2KB.</p></li>
<li><p><code>Enabled</code> – flag that enables/disables delivery to the
endpoint. Amazon SNS will set this to false when a notification service
indicates to Amazon SNS that the endpoint is invalid. Users can set it
back to true, typically after updating Token.</p></li>
<li><p><code>Token</code> – device token, also referred to as a
registration id, for an app and mobile device. This is returned from the
notification service when an app and mobile device are registered with
the notification service.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$set_endpoint_attributes(
      EndpointArn = "string",
      Attributes = list(
        "string"
      )
    )
