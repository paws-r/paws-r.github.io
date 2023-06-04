<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>shield_get_subscription_state</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the SubscriptionState, either Active or Inactive

### Description

Returns the `SubscriptionState`, either `Active` or `Inactive`.

### Usage

    shield_get_subscription_state()

### Value

A list with the following syntax:

    list(
      SubscriptionState = "ACTIVE"|"INACTIVE"
    )

### Request syntax

    svc$get_subscription_state()
