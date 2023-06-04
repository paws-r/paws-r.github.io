<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>shield_create_subscription</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Activates Shield Advanced for an account

### Description

Activates Shield Advanced for an account.

For accounts that are members of an Organizations organization, Shield
Advanced subscriptions are billed against the organization's payer
account, regardless of whether the payer account itself is subscribed.

When you initially create a subscription, your subscription is set to be
automatically renewed at the end of the existing subscription period.
You can change this by submitting an `update_subscription` request.

### Usage

    shield_create_subscription()

### Value

An empty list.

### Request syntax

    svc$create_subscription()
