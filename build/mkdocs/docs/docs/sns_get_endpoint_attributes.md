<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sns_get_endpoint_attributes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the endpoint attributes for a device on one of the supported push notification services, such as GCM (Firebase Cloud Messaging) and APNS

### Description

Retrieves the endpoint attributes for a device on one of the supported
push notification services, such as GCM (Firebase Cloud Messaging) and
APNS. For more information, see [Using Amazon SNS Mobile Push
Notifications](https://docs.aws.amazon.com/sns/latest/dg/sns-mobile-application-as-subscriber.html).

### Usage

    sns_get_endpoint_attributes(EndpointArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sns_get_endpoint_attributes_:_EndpointArn">EndpointArn</code></td>
<td><p>[required] EndpointArn for GetEndpointAttributes input.</p></td>
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

    svc$get_endpoint_attributes(
      EndpointArn = "string"
    )
