<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sns_delete_endpoint</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the endpoint for a device and mobile app from Amazon SNS

### Description

Deletes the endpoint for a device and mobile app from Amazon SNS. This
action is idempotent. For more information, see [Using Amazon SNS Mobile
Push
Notifications](https://docs.aws.amazon.com/sns/latest/dg/sns-mobile-application-as-subscriber.html).

When you delete an endpoint that is also subscribed to a topic, then you
must also unsubscribe the endpoint from the topic.

### Usage

    sns_delete_endpoint(EndpointArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sns_delete_endpoint_:_EndpointArn">EndpointArn</code></td>
<td><p>[required] EndpointArn of endpoint to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_endpoint(
      EndpointArn = "string"
    )
