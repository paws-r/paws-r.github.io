<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workdocs_create_notification_subscription</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Configure Amazon WorkDocs to use Amazon SNS notifications

### Description

Configure Amazon WorkDocs to use Amazon SNS notifications. The endpoint
receives a confirmation message, and must confirm the subscription.

For more information, see [Setting up notifications for an IAM user or
role](https://docs.aws.amazon.com/workdocs/latest/developerguide/manage-notifications.html)
in the *Amazon WorkDocs Developer Guide*.

### Usage

    workdocs_create_notification_subscription(OrganizationId, Endpoint,
      Protocol, SubscriptionType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workdocs_create_notification_subscription_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The ID of the organization.</p></td>
</tr>
<tr class="even">
<td><code
id="workdocs_create_notification_subscription_:_Endpoint">Endpoint</code></td>
<td><p>[required] The endpoint to receive the notifications. If the
protocol is HTTPS, the endpoint is a URL that begins with
<code>https</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="workdocs_create_notification_subscription_:_Protocol">Protocol</code></td>
<td><p>[required] The protocol to use. The supported value is https,
which delivers JSON-encoded messages using HTTPS POST.</p></td>
</tr>
<tr class="even">
<td><code
id="workdocs_create_notification_subscription_:_SubscriptionType">SubscriptionType</code></td>
<td><p>[required] The notification type.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Subscription = list(
        SubscriptionId = "string",
        EndPoint = "string",
        Protocol = "HTTPS"|"SQS"
      )
    )

### Request syntax

    svc$create_notification_subscription(
      OrganizationId = "string",
      Endpoint = "string",
      Protocol = "HTTPS"|"SQS",
      SubscriptionType = "ALL"
    )
