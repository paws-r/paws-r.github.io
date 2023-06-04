<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_associate_lex_bot</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This API is in preview release for Amazon Connect and is subject to change

### Description

This API is in preview release for Amazon Connect and is subject to
change.

Allows the specified Amazon Connect instance to access the specified
Amazon Lex V1 bot. This API only supports the association of Amazon Lex
V1 bots.

### Usage

    connect_associate_lex_bot(InstanceId, LexBot)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_associate_lex_bot_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code id="connect_associate_lex_bot_:_LexBot">LexBot</code></td>
<td><p>[required] The Amazon Lex bot to associate with the
instance.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$associate_lex_bot(
      InstanceId = "string",
      LexBot = list(
        Name = "string",
        LexRegion = "string"
      )
    )
