<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelsv2_delete_bot_alias</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified bot alias

### Description

Deletes the specified bot alias.

### Usage

    lexmodelsv2_delete_bot_alias(botAliasId, botId, skipResourceInUseCheck)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lexmodelsv2_delete_bot_alias_:_botAliasId">botAliasId</code></td>
<td><p>[required] The unique identifier of the bot alias to
delete.</p></td>
</tr>
<tr class="even">
<td><code id="lexmodelsv2_delete_bot_alias_:_botId">botId</code></td>
<td><p>[required] The unique identifier of the bot associated with the
alias to delete.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_delete_bot_alias_:_skipResourceInUseCheck">skipResourceInUseCheck</code></td>
<td><p>By default, Amazon Lex checks if any other resource, such as a
bot network, is using the bot alias before it is deleted and throws a
<code>ResourceInUseException</code> exception if the alias is being used
by another resource. Set this parameter to <code>true</code> to skip
this check and remove the alias even if it is being used by another
resource.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      botAliasId = "string",
      botId = "string",
      botAliasStatus = "Creating"|"Available"|"Deleting"|"Failed"
    )

### Request syntax

    svc$delete_bot_alias(
      botAliasId = "string",
      botId = "string",
      skipResourceInUseCheck = TRUE|FALSE
    )
