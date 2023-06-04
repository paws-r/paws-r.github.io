<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sns_list_topics</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of the requester's topics

### Description

Returns a list of the requester's topics. Each call returns a limited
list of topics, up to 100. If there are more topics, a `NextToken` is
also returned. Use the `NextToken` parameter in a new `list_topics` call
to get further results.

This action is throttled at 30 transactions per second (TPS).

### Usage

    sns_list_topics(NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sns_list_topics_:_NextToken">NextToken</code></td>
<td><p>Token returned by the previous <code>list_topics</code>
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Topics = list(
        list(
          TopicArn = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_topics(
      NextToken = "string"
    )
