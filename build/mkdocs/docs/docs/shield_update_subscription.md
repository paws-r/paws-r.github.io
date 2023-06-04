<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>shield_update_subscription</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the details of an existing subscription

### Description

Updates the details of an existing subscription. Only enter values for
parameters you want to change. Empty parameters are not updated.

For accounts that are members of an Organizations organization, Shield
Advanced subscriptions are billed against the organization's payer
account, regardless of whether the payer account itself is subscribed.

### Usage

    shield_update_subscription(AutoRenew)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="shield_update_subscription_:_AutoRenew">AutoRenew</code></td>
<td><p>When you initally create a subscription, <code>AutoRenew</code>
is set to <code>ENABLED</code>. If <code>ENABLED</code>, the
subscription will be automatically renewed at the end of the existing
subscription period. You can change this by submitting an
<code>update_subscription</code> request. If the
<code>update_subscription</code> request does not included a value for
<code>AutoRenew</code>, the existing value for <code>AutoRenew</code>
remains unchanged.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_subscription(
      AutoRenew = "ENABLED"|"DISABLED"
    )
