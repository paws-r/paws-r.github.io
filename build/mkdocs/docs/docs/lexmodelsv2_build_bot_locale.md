<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelsv2_build_bot_locale</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Builds a bot, its intents, and its slot types into a specific locale

### Description

Builds a bot, its intents, and its slot types into a specific locale. A
bot can be built into multiple locales. At runtime the locale is used to
choose a specific build of the bot.

### Usage

    lexmodelsv2_build_bot_locale(botId, botVersion, localeId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="lexmodelsv2_build_bot_locale_:_botId">botId</code></td>
<td><p>[required] The identifier of the bot to build. The identifier is
returned in the response from the <code>create_bot</code>
operation.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_build_bot_locale_:_botVersion">botVersion</code></td>
<td><p>[required] The version of the bot to build. This can only be the
draft version of the bot.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_build_bot_locale_:_localeId">localeId</code></td>
<td><p>[required] The identifier of the language and locale that the bot
will be used in. The string must match one of the supported locales. All
of the intents, slot types, and slots used in the bot must have the same
locale. For more information, see <a
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
      botLocaleStatus = "Creating"|"Building"|"Built"|"ReadyExpressTesting"|"Failed"|"Deleting"|"NotBuilt"|"Importing"|"Processing",
      lastBuildSubmittedDateTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$build_bot_locale(
      botId = "string",
      botVersion = "string",
      localeId = "string"
    )
