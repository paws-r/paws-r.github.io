<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelsv2_stop_bot_recommendation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Stop an already running Bot Recommendation request

### Description

Stop an already running Bot Recommendation request.

### Usage

    lexmodelsv2_stop_bot_recommendation(botId, botVersion, localeId,
      botRecommendationId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lexmodelsv2_stop_bot_recommendation_:_botId">botId</code></td>
<td><p>[required] The unique identifier of the bot containing the bot
recommendation to be stopped.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_stop_bot_recommendation_:_botVersion">botVersion</code></td>
<td><p>[required] The version of the bot containing the bot
recommendation.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_stop_bot_recommendation_:_localeId">localeId</code></td>
<td><p>[required] The identifier of the language and locale of the bot
recommendation to stop. The string must match one of the supported
locales. For more information, see <a
href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported
languages</a></p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_stop_bot_recommendation_:_botRecommendationId">botRecommendationId</code></td>
<td><p>[required] The unique identifier of the bot recommendation to be
stopped.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      botId = "string",
      botVersion = "string",
      localeId = "string",
      botRecommendationStatus = "Processing"|"Deleting"|"Deleted"|"Downloading"|"Updating"|"Available"|"Failed"|"Stopping"|"Stopped",
      botRecommendationId = "string"
    )

### Request syntax

    svc$stop_bot_recommendation(
      botId = "string",
      botVersion = "string",
      localeId = "string",
      botRecommendationId = "string"
    )
