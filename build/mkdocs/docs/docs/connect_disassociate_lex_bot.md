<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_disassociate_lex_bot</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This API is in preview release for Amazon Connect and is subject to change

### Description

This API is in preview release for Amazon Connect and is subject to
change.

Revokes authorization from the specified instance to access the
specified Amazon Lex bot.

### Usage

    connect_disassociate_lex_bot(InstanceId, BotName, LexRegion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_disassociate_lex_bot_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_disassociate_lex_bot_:_BotName">BotName</code></td>
<td><p>[required] The name of the Amazon Lex bot. Maximum character
limit of 50.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_disassociate_lex_bot_:_LexRegion">LexRegion</code></td>
<td><p>[required] The Amazon Web Services Region in which the Amazon Lex
bot has been created.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$disassociate_lex_bot(
      InstanceId = "string",
      BotName = "string",
      LexRegion = "string"
    )
