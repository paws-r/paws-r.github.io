<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelbuildingservice_delete_bot_channel_association</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the association between an Amazon Lex bot and a messaging platform

### Description

Deletes the association between an Amazon Lex bot and a messaging
platform.

This operation requires permission for the
`lex:DeleteBotChannelAssociation` action.

### Usage

    lexmodelbuildingservice_delete_bot_channel_association(name, botName,
      botAlias)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_delete_bot_channel_association_:_name">name</code></td>
<td><p>[required] The name of the association. The name is case
sensitive.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelbuildingservice_delete_bot_channel_association_:_botName">botName</code></td>
<td><p>[required] The name of the Amazon Lex bot.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_delete_bot_channel_association_:_botAlias">botAlias</code></td>
<td><p>[required] An alias that points to the specific version of the
Amazon Lex bot to which this association is being made.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_bot_channel_association(
      name = "string",
      botName = "string",
      botAlias = "string"
    )
