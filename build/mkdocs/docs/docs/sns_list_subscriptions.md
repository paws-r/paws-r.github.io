<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sns_list_subscriptions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of the requester's subscriptions

### Description

Returns a list of the requester's subscriptions. Each call returns a
limited list of subscriptions, up to 100. If there are more
subscriptions, a `NextToken` is also returned. Use the `NextToken`
parameter in a new `list_subscriptions` call to get further results.

This action is throttled at 30 transactions per second (TPS).

### Usage

    sns_list_subscriptions(NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sns_list_subscriptions_:_NextToken">NextToken</code></td>
<td><p>Token returned by the previous <code>list_subscriptions</code>
request.</p></td>
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

    svc$list_subscriptions(
      NextToken = "string"
    )
