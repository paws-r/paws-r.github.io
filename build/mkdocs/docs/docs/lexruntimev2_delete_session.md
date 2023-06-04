<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexruntimev2_delete_session</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes session information for a specified bot, alias, and user ID

### Description

Removes session information for a specified bot, alias, and user ID.

You can use this operation to restart a conversation with a bot. When
you remove a session, the entire history of the session is removed so
that you can start again.

You don't need to delete a session. Sessions have a time limit and will
expire. Set the session time limit when you create the bot. The default
is 5 minutes, but you can specify anything between 1 minute and 24
hours.

If you specify a bot or alias ID that doesn't exist, you receive a
`BadRequestException.`

If the locale doesn't exist in the bot, or if the locale hasn't been
enables for the alias, you receive a `BadRequestException`.

### Usage

    lexruntimev2_delete_session(botId, botAliasId, localeId, sessionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="lexruntimev2_delete_session_:_botId">botId</code></td>
<td><p>[required] The identifier of the bot that contains the session
data.</p></td>
</tr>
<tr class="even">
<td><code
id="lexruntimev2_delete_session_:_botAliasId">botAliasId</code></td>
<td><p>[required] The alias identifier in use for the bot that contains
the session data.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexruntimev2_delete_session_:_localeId">localeId</code></td>
<td><p>[required] The locale where the session is in use.</p></td>
</tr>
<tr class="even">
<td><code
id="lexruntimev2_delete_session_:_sessionId">sessionId</code></td>
<td><p>[required] The identifier of the session to delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      botId = "string",
      botAliasId = "string",
      localeId = "string",
      sessionId = "string"
    )

### Request syntax

    svc$delete_session(
      botId = "string",
      botAliasId = "string",
      localeId = "string",
      sessionId = "string"
    )
