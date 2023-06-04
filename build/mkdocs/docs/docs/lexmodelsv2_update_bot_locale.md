<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelsv2_update_bot_locale</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the settings that a bot has for a specific locale

### Description

Updates the settings that a bot has for a specific locale.

### Usage

    lexmodelsv2_update_bot_locale(botId, botVersion, localeId, description,
      nluIntentConfidenceThreshold, voiceSettings)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="lexmodelsv2_update_bot_locale_:_botId">botId</code></td>
<td><p>[required] The unique identifier of the bot that contains the
locale.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_update_bot_locale_:_botVersion">botVersion</code></td>
<td><p>[required] The version of the bot that contains the locale to be
updated. The version can only be the <code>DRAFT</code>
version.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_update_bot_locale_:_localeId">localeId</code></td>
<td><p>[required] The identifier of the language and locale to update.
The string must match one of the supported locales. For more
information, see <a
href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported
languages</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_update_bot_locale_:_description">description</code></td>
<td><p>The new description of the locale.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_update_bot_locale_:_nluIntentConfidenceThreshold">nluIntentConfidenceThreshold</code></td>
<td><p>[required] The new confidence threshold where Amazon Lex inserts
the <code>AMAZON.FallbackIntent</code> and
<code>AMAZON.KendraSearchIntent</code> intents in the list of possible
intents for an utterance.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_update_bot_locale_:_voiceSettings">voiceSettings</code></td>
<td><p>The new Amazon Polly voice Amazon Lex should use for voice
interaction with the user.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      botId = "string",
      botVersion = "string",
      localeId = "string",
      localeName = "string",
      description = "string",
      nluIntentConfidenceThreshold = 123.0,
      voiceSettings = list(
        voiceId = "string",
        engine = "standard"|"neural"
      ),
      botLocaleStatus = "Creating"|"Building"|"Built"|"ReadyExpressTesting"|"Failed"|"Deleting"|"NotBuilt"|"Importing"|"Processing",
      failureReasons = list(
        "string"
      ),
      creationDateTime = as.POSIXct(
        "2015-01-01"
      ),
      lastUpdatedDateTime = as.POSIXct(
        "2015-01-01"
      ),
      recommendedActions = list(
        "string"
      )
    )

### Request syntax

    svc$update_bot_locale(
      botId = "string",
      botVersion = "string",
      localeId = "string",
      description = "string",
      nluIntentConfidenceThreshold = 123.0,
      voiceSettings = list(
        voiceId = "string",
        engine = "standard"|"neural"
      )
    )
