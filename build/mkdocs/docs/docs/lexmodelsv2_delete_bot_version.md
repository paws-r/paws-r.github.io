<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelsv2_delete_bot_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a specific version of a bot

### Description

Deletes a specific version of a bot. To delete all versions of a bot,
use the `delete_bot` operation.

### Usage

    lexmodelsv2_delete_bot_version(botId, botVersion,
      skipResourceInUseCheck)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="lexmodelsv2_delete_bot_version_:_botId">botId</code></td>
<td><p>[required] The identifier of the bot that contains the
version.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_delete_bot_version_:_botVersion">botVersion</code></td>
<td><p>[required] The version of the bot to delete.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_delete_bot_version_:_skipResourceInUseCheck">skipResourceInUseCheck</code></td>
<td><p>By default, Amazon Lex checks if any other resource, such as an
alias or bot network, is using the bot version before it is deleted and
throws a <code>ResourceInUseException</code> exception if the version is
being used by another resource. Set this parameter to <code>true</code>
to skip this check and remove the version even if it is being used by
another resource.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      botId = "string",
      botVersion = "string",
      botStatus = "Creating"|"Available"|"Inactive"|"Deleting"|"Failed"|"Versioning"|"Importing"|"Updating"
    )

### Request syntax

    svc$delete_bot_version(
      botId = "string",
      botVersion = "string",
      skipResourceInUseCheck = TRUE|FALSE
    )
