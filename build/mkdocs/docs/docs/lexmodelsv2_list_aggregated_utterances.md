<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelsv2_list_aggregated_utterances</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides a list of utterances that users have sent to the bot

### Description

Provides a list of utterances that users have sent to the bot.

Utterances are aggregated by the text of the utterance. For example, all
instances where customers used the phrase "I want to order pizza" are
aggregated into the same line in the response.

You can see both detected utterances and missed utterances. A detected
utterance is where the bot properly recognized the utterance and
activated the associated intent. A missed utterance was not recognized
by the bot and didn't activate an intent.

Utterances can be aggregated for a bot alias or for a bot version, but
not both at the same time.

Utterances statistics are not generated under the following conditions:

-   The `childDirected` field was set to true when the bot was created.

-   You are using slot obfuscation with one or more slots.

-   You opted out of participating in improving Amazon Lex.

### Usage

    lexmodelsv2_list_aggregated_utterances(botId, botAliasId, botVersion,
      localeId, aggregationDuration, sortBy, filters, maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lexmodelsv2_list_aggregated_utterances_:_botId">botId</code></td>
<td><p>[required] The unique identifier of the bot associated with this
request.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_list_aggregated_utterances_:_botAliasId">botAliasId</code></td>
<td><p>The identifier of the bot alias associated with this request. If
you specify the bot alias, you can't specify the bot version.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_list_aggregated_utterances_:_botVersion">botVersion</code></td>
<td><p>The identifier of the bot version associated with this request.
If you specify the bot version, you can't specify the bot
alias.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_list_aggregated_utterances_:_localeId">localeId</code></td>
<td><p>[required] The identifier of the language and locale where the
utterances were collected. For more information, see <a
href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported
languages</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_list_aggregated_utterances_:_aggregationDuration">aggregationDuration</code></td>
<td><p>[required] The time window for aggregating the utterance
information. You can specify a time between one hour and two
weeks.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_list_aggregated_utterances_:_sortBy">sortBy</code></td>
<td><p>Specifies sorting parameters for the list of utterances. You can
sort by the hit count, the missed count, or the number of distinct
sessions the utterance appeared in.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_list_aggregated_utterances_:_filters">filters</code></td>
<td><p>Provides the specification of a filter used to limit the
utterances in the response to only those that match the filter
specification. You can only specify one filter and one string to filter
on.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_list_aggregated_utterances_:_maxResults">maxResults</code></td>
<td><p>The maximum number of utterances to return in each page of
results. If there are fewer results than the maximum page size, only the
actual number of results are returned. If you don't specify the
<code>maxResults</code> parameter, 1,000 results are returned.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_list_aggregated_utterances_:_nextToken">nextToken</code></td>
<td><p>If the response from the <code>list_aggregated_utterances</code>
operation contains more results that specified in the
<code>maxResults</code> parameter, a token is returned in the response.
Use that token in the <code>nextToken</code> parameter to return the
next page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      botId = "string",
      botAliasId = "string",
      botVersion = "string",
      localeId = "string",
      aggregationDuration = list(
        relativeAggregationDuration = list(
          timeDimension = "Hours"|"Days"|"Weeks",
          timeValue = 123
        )
      ),
      aggregationWindowStartTime = as.POSIXct(
        "2015-01-01"
      ),
      aggregationWindowEndTime = as.POSIXct(
        "2015-01-01"
      ),
      aggregationLastRefreshedDateTime = as.POSIXct(
        "2015-01-01"
      ),
      aggregatedUtterancesSummaries = list(
        list(
          utterance = "string",
          hitCount = 123,
          missedCount = 123,
          utteranceFirstRecordedInAggregationDuration = as.POSIXct(
            "2015-01-01"
          ),
          utteranceLastRecordedInAggregationDuration = as.POSIXct(
            "2015-01-01"
          ),
          containsDataFromDeletedResources = TRUE|FALSE
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_aggregated_utterances(
      botId = "string",
      botAliasId = "string",
      botVersion = "string",
      localeId = "string",
      aggregationDuration = list(
        relativeAggregationDuration = list(
          timeDimension = "Hours"|"Days"|"Weeks",
          timeValue = 123
        )
      ),
      sortBy = list(
        attribute = "HitCount"|"MissedCount",
        order = "Ascending"|"Descending"
      ),
      filters = list(
        list(
          name = "Utterance",
          values = list(
            "string"
          ),
          operator = "CO"|"EQ"
        )
      ),
      maxResults = 123,
      nextToken = "string"
    )
