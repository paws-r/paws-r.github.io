<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelbuildingservice_delete_bot_alias</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an alias for the specified bot

### Description

Deletes an alias for the specified bot.

You can't delete an alias that is used in the association between a bot
and a messaging channel. If an alias is used in a channel association,
the `delete_bot` operation returns a `ResourceInUseException` exception
that includes a reference to the channel association that refers to the
bot. You can remove the reference to the alias by deleting the channel
association. If you get the same exception again, delete the referring
association until the `delete_bot_alias` operation is successful.

### Usage

    lexmodelbuildingservice_delete_bot_alias(name, botName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_delete_bot_alias_:_name">name</code></td>
<td><p>[required] The name of the alias to delete. The name is case
sensitive.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelbuildingservice_delete_bot_alias_:_botName">botName</code></td>
<td><p>[required] The name of the bot that the alias points to.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_bot_alias(
      name = "string",
      botName = "string"
    )
