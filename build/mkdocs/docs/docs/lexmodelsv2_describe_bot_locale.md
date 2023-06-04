<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelsv2_describe_bot_locale</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the settings that a bot has for a specific locale

### Description

Describes the settings that a bot has for a specific locale.

### Usage

    lexmodelsv2_describe_bot_locale(botId, botVersion, localeId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="lexmodelsv2_describe_bot_locale_:_botId">botId</code></td>
<td><p>[required] The identifier of the bot associated with the
locale.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_describe_bot_locale_:_botVersion">botVersion</code></td>
<td><p>[required] The identifier of the version of the bot associated
with the locale.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_describe_bot_locale_:_localeId">localeId</code></td>
<td><p>[required] The unique identifier of the locale to describe. The
string must match one of the supported locales. For more information,
see <a
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
      localeName = "string",
      description = "string",
      nluIntentConfidenceThreshold = 123.0,
      voiceSettings = list(
        voiceId = "string",
        engine = "standard"|"neural"
      ),
      intentsCount = 123,
      slotTypesCount = 123,
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
      lastBuildSubmittedDateTime = as.POSIXct(
        "2015-01-01"
      ),
      botLocaleHistoryEvents = list(
        list(
          event = "string",
          eventDate = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      recommendedActions = list(
        "string"
      )
    )

### Request syntax

    svc$describe_bot_locale(
      botId = "string",
      botVersion = "string",
      localeId = "string"
    )
