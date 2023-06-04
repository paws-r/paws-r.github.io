<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_list_lex_bots</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This API is in preview release for Amazon Connect and is subject to change

### Description

This API is in preview release for Amazon Connect and is subject to
change.

Returns a paginated list of all the Amazon Lex V1 bots currently
associated with the instance. To return both Amazon Lex V1 and V2 bots,
use the `list_bots` API.

### Usage

    connect_list_lex_bots(InstanceId, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="connect_list_lex_bots_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code id="connect_list_lex_bots_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of results. Use the value returned in
the previous response in the next request to retrieve the next set of
results.</p></td>
</tr>
<tr class="odd">
<td><code id="connect_list_lex_bots_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return per page. If no value is
specified, the default is 10.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      LexBots = list(
        list(
          Name = "string",
          LexRegion = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_lex_bots(
      InstanceId = "string",
      NextToken = "string",
      MaxResults = 123
    )
