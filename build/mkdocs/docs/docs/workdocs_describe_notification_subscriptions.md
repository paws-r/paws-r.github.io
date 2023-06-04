<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workdocs_describe_notification_subscriptions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the specified notification subscriptions

### Description

Lists the specified notification subscriptions.

### Usage

    workdocs_describe_notification_subscriptions(OrganizationId, Marker,
      Limit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workdocs_describe_notification_subscriptions_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The ID of the organization.</p></td>
</tr>
<tr class="even">
<td><code
id="workdocs_describe_notification_subscriptions_:_Marker">Marker</code></td>
<td><p>The marker for the next set of results. (You received this marker
from a previous call.)</p></td>
</tr>
<tr class="odd">
<td><code
id="workdocs_describe_notification_subscriptions_:_Limit">Limit</code></td>
<td><p>The maximum number of items to return with this call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Subscriptions = list(
        list(
          SubscriptionId = "string",
          EndPoint = "string",
          Protocol = "HTTPS"|"SQS"
        )
      ),
      Marker = "string"
    )

### Request syntax

    svc$describe_notification_subscriptions(
      OrganizationId = "string",
      Marker = "string",
      Limit = 123
    )
