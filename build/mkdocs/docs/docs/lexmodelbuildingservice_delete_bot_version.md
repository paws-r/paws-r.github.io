<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelbuildingservice_delete_bot_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a specific version of a bot

### Description

Deletes a specific version of a bot. To delete all versions of a bot,
use the `delete_bot` operation.

This operation requires permissions for the `lex:DeleteBotVersion`
action.

### Usage

    lexmodelbuildingservice_delete_bot_version(name, version)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_delete_bot_version_:_name">name</code></td>
<td><p>[required] The name of the bot.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelbuildingservice_delete_bot_version_:_version">version</code></td>
<td><p>[required] The version of the bot to delete. You cannot delete
the <code style="white-space: pre;">⁠$LATEST⁠</code> version of the bot.
To delete the <code style="white-space: pre;">⁠$LATEST⁠</code> version,
use the <code>delete_bot</code> operation.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_bot_version(
      name = "string",
      version = "string"
    )
