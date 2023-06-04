<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_disassociate_bot</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This API is in preview release for Amazon Connect and is subject to change

### Description

This API is in preview release for Amazon Connect and is subject to
change.

Revokes authorization from the specified instance to access the
specified Amazon Lex or Amazon Lex V2 bot.

### Usage

    connect_disassociate_bot(InstanceId, LexBot, LexV2Bot)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_disassociate_bot_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code id="connect_disassociate_bot_:_LexBot">LexBot</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code id="connect_disassociate_bot_:_LexV2Bot">LexV2Bot</code></td>
<td><p>The Amazon Lex V2 bot to disassociate from the instance.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$disassociate_bot(
      InstanceId = "string",
      LexBot = list(
        Name = "string",
        LexRegion = "string"
      ),
      LexV2Bot = list(
        AliasArn = "string"
      )
    )
