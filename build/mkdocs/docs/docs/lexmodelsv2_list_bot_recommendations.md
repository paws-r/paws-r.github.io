<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelsv2_list_bot_recommendations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get a list of bot recommendations that meet the specified criteria

### Description

Get a list of bot recommendations that meet the specified criteria.

### Usage

    lexmodelsv2_list_bot_recommendations(botId, botVersion, localeId,
      maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lexmodelsv2_list_bot_recommendations_:_botId">botId</code></td>
<td><p>[required] The unique identifier of the bot that contains the bot
recommendation list.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_list_bot_recommendations_:_botVersion">botVersion</code></td>
<td><p>[required] The version of the bot that contains the bot
recommendation list.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_list_bot_recommendations_:_localeId">localeId</code></td>
<td><p>[required] The identifier of the language and locale of the bot
recommendation list.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_list_bot_recommendations_:_maxResults">maxResults</code></td>
<td><p>The maximum number of bot recommendations to return in each page
of results. If there are fewer results than the max page size, only the
actual number of results are returned.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_list_bot_recommendations_:_nextToken">nextToken</code></td>
<td><p>If the response from the ListBotRecommendation operation contains
more results than specified in the maxResults parameter, a token is
returned in the response. Use that token in the nextToken parameter to
return the next page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      botId = "string",
      botVersion = "string",
      localeId = "string",
      botRecommendationSummaries = list(
        list(
          botRecommendationStatus = "Processing"|"Deleting"|"Deleted"|"Downloading"|"Updating"|"Available"|"Failed"|"Stopping"|"Stopped",
          botRecommendationId = "string",
          creationDateTime = as.POSIXct(
            "2015-01-01"
          ),
          lastUpdatedDateTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_bot_recommendations(
      botId = "string",
      botVersion = "string",
      localeId = "string",
      maxResults = 123,
      nextToken = "string"
    )
