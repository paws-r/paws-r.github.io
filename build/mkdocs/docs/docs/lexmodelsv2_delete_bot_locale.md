<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelsv2_delete_bot_locale</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes a locale from a bot

### Description

Removes a locale from a bot.

When you delete a locale, all intents, slots, and slot types defined for
the locale are also deleted.

### Usage

    lexmodelsv2_delete_bot_locale(botId, botVersion, localeId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="lexmodelsv2_delete_bot_locale_:_botId">botId</code></td>
<td><p>[required] The unique identifier of the bot that contains the
locale.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_delete_bot_locale_:_botVersion">botVersion</code></td>
<td><p>[required] The version of the bot that contains the
locale.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_delete_bot_locale_:_localeId">localeId</code></td>
<td><p>[required] The identifier of the language and locale that will be
deleted. The string must match one of the supported locales. For more
information, see <a
href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported
languages</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      botId = "string",
      botVersion = "string",
      localeId = "string",
      botLocaleStatus = "Creating"|"Building"|"Built"|"ReadyExpressTesting"|"Failed"|"Deleting"|"NotBuilt"|"Importing"|"Processing"
    )

### Request syntax

    svc$delete_bot_locale(
      botId = "string",
      botVersion = "string",
      localeId = "string"
    )
