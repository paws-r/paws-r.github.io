<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_list_bots</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This API is in preview release for Amazon Connect and is subject to change

### Description

This API is in preview release for Amazon Connect and is subject to
change.

For the specified version of Amazon Lex, returns a paginated list of all
the Amazon Lex bots currently associated with the instance. Use this API
to returns both Amazon Lex V1 and V2 bots.

### Usage

    connect_list_bots(InstanceId, NextToken, MaxResults, LexVersion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="connect_list_bots_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code id="connect_list_bots_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of results. Use the value returned in
the previous response in the next request to retrieve the next set of
results.</p></td>
</tr>
<tr class="odd">
<td><code id="connect_list_bots_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return per page.</p></td>
</tr>
<tr class="even">
<td><code id="connect_list_bots_:_LexVersion">LexVersion</code></td>
<td><p>[required] The version of Amazon Lex or Amazon Lex V2.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      LexBots = list(
        list(
          LexBot = list(
            Name = "string",
            LexRegion = "string"
          ),
          LexV2Bot = list(
            AliasArn = "string"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_bots(
      InstanceId = "string",
      NextToken = "string",
      MaxResults = 123,
      LexVersion = "V1"|"V2"
    )
