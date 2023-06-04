<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelsv2_create_bot_locale</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a locale in the bot

### Description

Creates a locale in the bot. The locale contains the intents and slot
types that the bot uses in conversations with users in the specified
language and locale. You must add a locale to a bot before you can add
intents and slot types to the bot.

### Usage

    lexmodelsv2_create_bot_locale(botId, botVersion, localeId, description,
      nluIntentConfidenceThreshold, voiceSettings)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="lexmodelsv2_create_bot_locale_:_botId">botId</code></td>
<td><p>[required] The identifier of the bot to create the locale
for.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_create_bot_locale_:_botVersion">botVersion</code></td>
<td><p>[required] The version of the bot to create the locale for. This
can only be the draft version of the bot.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_create_bot_locale_:_localeId">localeId</code></td>
<td><p>[required] The identifier of the language and locale that the bot
will be used in. The string must match one of the supported locales. All
of the intents, slot types, and slots used in the bot must have the same
locale. For more information, see <a
href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported
languages</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_create_bot_locale_:_description">description</code></td>
<td><p>A description of the bot locale. Use this to help identify the
bot locale in lists.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_create_bot_locale_:_nluIntentConfidenceThreshold">nluIntentConfidenceThreshold</code></td>
<td><p>[required] Determines the threshold where Amazon Lex will insert
the <code>AMAZON.FallbackIntent</code>,
<code>AMAZON.KendraSearchIntent</code>, or both when returning
alternative intents. <code>AMAZON.FallbackIntent</code> and
<code>AMAZON.KendraSearchIntent</code> are only inserted if they are
configured for the bot.</p>
<p>For example, suppose a bot is configured with the confidence
threshold of 0.80 and the <code>AMAZON.FallbackIntent</code>. Amazon Lex
returns three alternative intents with the following confidence scores:
IntentA (0.70), IntentB (0.60), IntentC (0.50). The response from the
<code>RecognizeText</code> operation would be:</p>
<ul>
<li><p>AMAZON.FallbackIntent</p></li>
<li><p>IntentA</p></li>
<li><p>IntentB</p></li>
<li><p>IntentC</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_create_bot_locale_:_voiceSettings">voiceSettings</code></td>
<td><p>The Amazon Polly voice ID that Amazon Lex uses for voice
interaction with the user.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      botId = "string",
      botVersion = "string",
      localeName = "string",
      localeId = "string",
      description = "string",
      nluIntentConfidenceThreshold = 123.0,
      voiceSettings = list(
        voiceId = "string",
        engine = "standard"|"neural"
      ),
      botLocaleStatus = "Creating"|"Building"|"Built"|"ReadyExpressTesting"|"Failed"|"Deleting"|"NotBuilt"|"Importing"|"Processing",
      creationDateTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$create_bot_locale(
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
