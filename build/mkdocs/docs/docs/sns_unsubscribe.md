<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sns_unsubscribe</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a subscription

### Description

Deletes a subscription. If the subscription requires authentication for
deletion, only the owner of the subscription or the topic's owner can
unsubscribe, and an Amazon Web Services signature is required. If the
`unsubscribe` call does not require authentication and the requester is
not the subscription owner, a final cancellation message is delivered to
the endpoint, so that the endpoint owner can easily resubscribe to the
topic if the `unsubscribe` request was unintended.

Amazon SQS queue subscriptions require authentication for deletion. Only
the owner of the subscription, or the owner of the topic can unsubscribe
using the required Amazon Web Services signature.

This action is throttled at 100 transactions per second (TPS).

### Usage

    sns_unsubscribe(SubscriptionArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sns_unsubscribe_:_SubscriptionArn">SubscriptionArn</code></td>
<td><p>[required] The ARN of the subscription to be deleted.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$unsubscribe(
      SubscriptionArn = "string"
    )
