<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelbuildingservice_delete_bot</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes all versions of the bot, including the $LATEST version

### Description

Deletes all versions of the bot, including the `⁠$LATEST⁠` version. To
delete a specific version of the bot, use the `delete_bot_version`
operation. The `delete_bot` operation doesn't immediately remove the bot
schema. Instead, it is marked for deletion and removed later.

Amazon Lex stores utterances indefinitely for improving the ability of
your bot to respond to user inputs. These utterances are not removed
when the bot is deleted. To remove the utterances, use the
`delete_utterances` operation.

If a bot has an alias, you can't delete it. Instead, the `delete_bot`
operation returns a `ResourceInUseException` exception that includes a
reference to the alias that refers to the bot. To remove the reference
to the bot, delete the alias. If you get the same exception again,
delete the referring alias until the `delete_bot` operation is
successful.

This operation requires permissions for the `lex:DeleteBot` action.

### Usage

    lexmodelbuildingservice_delete_bot(name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_delete_bot_:_name">name</code></td>
<td><p>[required] The name of the bot. The name is case
sensitive.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_bot(
      name = "string"
    )
