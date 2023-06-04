<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workdocs_delete_notification_subscription</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified subscription from the specified organization

### Description

Deletes the specified subscription from the specified organization.

### Usage

    workdocs_delete_notification_subscription(SubscriptionId,
      OrganizationId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workdocs_delete_notification_subscription_:_SubscriptionId">SubscriptionId</code></td>
<td><p>[required] The ID of the subscription.</p></td>
</tr>
<tr class="even">
<td><code
id="workdocs_delete_notification_subscription_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The ID of the organization.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_notification_subscription(
      SubscriptionId = "string",
      OrganizationId = "string"
    )
