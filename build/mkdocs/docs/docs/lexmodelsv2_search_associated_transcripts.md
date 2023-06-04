<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelsv2_search_associated_transcripts</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Search for associated transcripts that meet the specified criteria

### Description

Search for associated transcripts that meet the specified criteria.

### Usage

    lexmodelsv2_search_associated_transcripts(botId, botVersion, localeId,
      botRecommendationId, searchOrder, filters, maxResults, nextIndex)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lexmodelsv2_search_associated_transcripts_:_botId">botId</code></td>
<td><p>[required] The unique identifier of the bot associated with the
transcripts that you are searching.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_search_associated_transcripts_:_botVersion">botVersion</code></td>
<td><p>[required] The version of the bot containing the transcripts that
you are searching.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_search_associated_transcripts_:_localeId">localeId</code></td>
<td><p>[required] The identifier of the language and locale of the
transcripts to search. The string must match one of the supported
locales. For more information, see <a
href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported
languages</a></p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_search_associated_transcripts_:_botRecommendationId">botRecommendationId</code></td>
<td><p>[required] The unique identifier of the bot recommendation
associated with the transcripts to search.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_search_associated_transcripts_:_searchOrder">searchOrder</code></td>
<td><p>How SearchResults are ordered. Valid values are Ascending or
Descending. The default is Descending.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_search_associated_transcripts_:_filters">filters</code></td>
<td><p>[required] A list of filter objects.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_search_associated_transcripts_:_maxResults">maxResults</code></td>
<td><p>The maximum number of bot recommendations to return in each page
of results. If there are fewer results than the max page size, only the
actual number of results are returned.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_search_associated_transcripts_:_nextIndex">nextIndex</code></td>
<td><p>If the response from the SearchAssociatedTranscriptsRequest
operation contains more results than specified in the maxResults
parameter, an index is returned in the response. Use that index in the
nextIndex parameter to return the next page of results.</p></td>
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
      nextIndex = 123,
      associatedTranscripts = list(
        list(
          transcript = "string"
        )
      ),
      totalResults = 123
    )

### Request syntax

    svc$search_associated_transcripts(
      botId = "string",
      botVersion = "string",
      localeId = "string",
      botRecommendationId = "string",
      searchOrder = "Ascending"|"Descending",
      filters = list(
        list(
          name = "IntentId"|"SlotTypeId",
          values = list(
            "string"
          )
        )
      ),
      maxResults = 123,
      nextIndex = 123
    )
