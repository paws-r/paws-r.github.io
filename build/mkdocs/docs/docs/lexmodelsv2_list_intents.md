<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelsv2_list_intents</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get a list of intents that meet the specified criteria

### Description

Get a list of intents that meet the specified criteria.

### Usage

    lexmodelsv2_list_intents(botId, botVersion, localeId, sortBy, filters,
      maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="lexmodelsv2_list_intents_:_botId">botId</code></td>
<td><p>[required] The unique identifier of the bot that contains the
intent.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_list_intents_:_botVersion">botVersion</code></td>
<td><p>[required] The version of the bot that contains the
intent.</p></td>
</tr>
<tr class="odd">
<td><code id="lexmodelsv2_list_intents_:_localeId">localeId</code></td>
<td><p>[required] The identifier of the language and locale of the
intents to list. The string must match one of the supported locales. For
more information, see <a
href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported
languages</a>.</p></td>
</tr>
<tr class="even">
<td><code id="lexmodelsv2_list_intents_:_sortBy">sortBy</code></td>
<td><p>Determines the sort order for the response from the
<code>list_intents</code> operation. You can choose to sort by the
intent name or last updated date in either ascending or descending
order.</p></td>
</tr>
<tr class="odd">
<td><code id="lexmodelsv2_list_intents_:_filters">filters</code></td>
<td><p>Provides the specification of a filter used to limit the intents
in the response to only those that match the filter specification. You
can only specify one filter and only one string to filter on.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_list_intents_:_maxResults">maxResults</code></td>
<td><p>The maximum number of intents to return in each page of results.
If there are fewer results than the max page size, only the actual
number of results are returned.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_list_intents_:_nextToken">nextToken</code></td>
<td><p>If the response from the <code>list_intents</code> operation
contains more results than specified in the <code>maxResults</code>
parameter, a token is returned in the response.</p>
<p>Use the returned token in the <code>nextToken</code> parameter of a
<code>list_intents</code> request to return the next page of results.
For a complete set of results, call the <code>list_intents</code>
operation until the <code>nextToken</code> returned in the response is
null.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      botId = "string",
      botVersion = "string",
      localeId = "string",
      intentSummaries = list(
        list(
          intentId = "string",
          intentName = "string",
          description = "string",
          parentIntentSignature = "string",
          inputContexts = list(
            list(
              name = "string"
            )
          ),
          outputContexts = list(
            list(
              name = "string",
              timeToLiveInSeconds = 123,
              turnsToLive = 123
            )
          ),
          lastUpdatedDateTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_intents(
      botId = "string",
      botVersion = "string",
      localeId = "string",
      sortBy = list(
        attribute = "IntentName"|"LastUpdatedDateTime",
        order = "Ascending"|"Descending"
      ),
      filters = list(
        list(
          name = "IntentName",
          values = list(
            "string"
          ),
          operator = "CO"|"EQ"
        )
      ),
      maxResults = 123,
      nextToken = "string"
    )
