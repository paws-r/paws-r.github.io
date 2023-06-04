<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexruntimeservice_delete_session</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes session information for a specified bot, alias, and user ID

### Description

Removes session information for a specified bot, alias, and user ID.

### Usage

    lexruntimeservice_delete_session(botName, botAlias, userId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lexruntimeservice_delete_session_:_botName">botName</code></td>
<td><p>[required] The name of the bot that contains the session
data.</p></td>
</tr>
<tr class="even">
<td><code
id="lexruntimeservice_delete_session_:_botAlias">botAlias</code></td>
<td><p>[required] The alias in use for the bot that contains the session
data.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexruntimeservice_delete_session_:_userId">userId</code></td>
<td><p>[required] The identifier of the user associated with the session
data.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      botName = "string",
      botAlias = "string",
      userId = "string",
      sessionId = "string"
    )

### Request syntax

    svc$delete_session(
      botName = "string",
      botAlias = "string",
      userId = "string"
    )
