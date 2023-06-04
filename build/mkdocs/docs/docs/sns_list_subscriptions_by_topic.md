<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sns_list_subscriptions_by_topic</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of the subscriptions to a specific topic

### Description

Returns a list of the subscriptions to a specific topic. Each call
returns a limited list of subscriptions, up to 100. If there are more
subscriptions, a `NextToken` is also returned. Use the `NextToken`
parameter in a new `list_subscriptions_by_topic` call to get further
results.

This action is throttled at 30 transactions per second (TPS).

### Usage

    sns_list_subscriptions_by_topic(TopicArn, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sns_list_subscriptions_by_topic_:_TopicArn">TopicArn</code></td>
<td><p>[required] The ARN of the topic for which you wish to find
subscriptions.</p></td>
</tr>
<tr class="even">
<td><code
id="sns_list_subscriptions_by_topic_:_NextToken">NextToken</code></td>
<td><p>Token returned by the previous
<code>list_subscriptions_by_topic</code> request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Subscriptions = list(
        list(
          SubscriptionArn = "string",
          Owner = "string",
          Protocol = "string",
          Endpoint = "string",
          TopicArn = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_subscriptions_by_topic(
      TopicArn = "string",
      NextToken = "string"
    )
