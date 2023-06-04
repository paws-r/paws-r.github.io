<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelsv2_delete_bot</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes all versions of a bot, including the Draft version

### Description

Deletes all versions of a bot, including the `Draft` version. To delete
a specific version, use the `delete_bot_version` operation.

When you delete a bot, all of the resources contained in the bot are
also deleted. Deleting a bot removes all locales, intents, slot, and
slot types defined for the bot.

If a bot has an alias, the `delete_bot` operation returns a
`ResourceInUseException` exception. If you want to delete the bot and
the alias, set the `skipResourceInUseCheck` parameter to `true`.

### Usage

    lexmodelsv2_delete_bot(botId, skipResourceInUseCheck)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="lexmodelsv2_delete_bot_:_botId">botId</code></td>
<td><p>[required] The identifier of the bot to delete.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_delete_bot_:_skipResourceInUseCheck">skipResourceInUseCheck</code></td>
<td><p>By default, Amazon Lex checks if any other resource, such as an
alias or bot network, is using the bot version before it is deleted and
throws a <code>ResourceInUseException</code> exception if the bot is
being used by another resource. Set this parameter to <code>true</code>
to skip this check and remove the bot even if it is being used by
another resource.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      botId = "string",
      botStatus = "Creating"|"Available"|"Inactive"|"Deleting"|"Failed"|"Versioning"|"Importing"|"Updating"
    )

### Request syntax

    svc$delete_bot(
      botId = "string",
      skipResourceInUseCheck = TRUE|FALSE
    )
