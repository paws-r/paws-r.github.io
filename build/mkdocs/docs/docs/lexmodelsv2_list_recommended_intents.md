<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelsv2_list_recommended_intents</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a list of recommended intents provided by the bot recommendation that you can use in your bot

### Description

Gets a list of recommended intents provided by the bot recommendation
that you can use in your bot. Intents in the response are ordered by
relevance.

### Usage

    lexmodelsv2_list_recommended_intents(botId, botVersion, localeId,
      botRecommendationId, nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lexmodelsv2_list_recommended_intents_:_botId">botId</code></td>
<td><p>[required] The unique identifier of the bot associated with the
recommended intents.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_list_recommended_intents_:_botVersion">botVersion</code></td>
<td><p>[required] The version of the bot that contains the recommended
intents.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_list_recommended_intents_:_localeId">localeId</code></td>
<td><p>[required] The identifier of the language and locale of the
recommended intents.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_list_recommended_intents_:_botRecommendationId">botRecommendationId</code></td>
<td><p>[required] The identifier of the bot recommendation that contains
the recommended intents.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_list_recommended_intents_:_nextToken">nextToken</code></td>
<td><p>If the response from the ListRecommendedIntents operation
contains more results than specified in the maxResults parameter, a
token is returned in the response. Use that token in the nextToken
parameter to return the next page of results.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_list_recommended_intents_:_maxResults">maxResults</code></td>
<td><p>The maximum number of bot recommendations to return in each page
of results. If there are fewer results than the max page size, only the
actual number of results are returned.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      botId = "string",
      botVersion = "string",
      localeId = "string",
      botRecommendationId = "string",
      summaryList = list(
        list(
          intentId = "string",
          intentName = "string",
          sampleUtterancesCount = 123
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_recommended_intents(
      botId = "string",
      botVersion = "string",
      localeId = "string",
      botRecommendationId = "string",
      nextToken = "string",
      maxResults = 123
    )
