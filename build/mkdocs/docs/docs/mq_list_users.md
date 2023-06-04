<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>mq_list_users</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of all ActiveMQ users

### Description

Returns a list of all ActiveMQ users.

### Usage

    mq_list_users(BrokerId, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="mq_list_users_:_BrokerId">BrokerId</code></td>
<td><p>[required] The unique ID that Amazon MQ generates for the
broker.</p></td>
</tr>
<tr class="even">
<td><code id="mq_list_users_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of brokers that Amazon MQ can return per page
(20 by default). This value must be an integer from 5 to 100.</p></td>
</tr>
<tr class="odd">
<td><code id="mq_list_users_:_NextToken">NextToken</code></td>
<td><p>The token that specifies the next page of results Amazon MQ
should return. To request the first page, leave nextToken
empty.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      BrokerId = "string",
      MaxResults = 123,
      NextToken = "string",
      Users = list(
        list(
          PendingChange = "CREATE"|"UPDATE"|"DELETE",
          Username = "string"
        )
      )
    )

### Request syntax

    svc$list_users(
      BrokerId = "string",
      MaxResults = 123,
      NextToken = "string"
    )
