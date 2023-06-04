<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sns_get_subscription_attributes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns all of the properties of a subscription

### Description

Returns all of the properties of a subscription.

### Usage

    sns_get_subscription_attributes(SubscriptionArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sns_get_subscription_attributes_:_SubscriptionArn">SubscriptionArn</code></td>
<td><p>[required] The ARN of the subscription whose properties you want
to get.</p></td>
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

    svc$get_subscription_attributes(
      SubscriptionArn = "string"
    )
