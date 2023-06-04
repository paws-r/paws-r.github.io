<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kendra_update_query_suggestions_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the settings of query suggestions for an index

### Description

Updates the settings of query suggestions for an index.

Amazon Kendra supports partial updates, so you only need to provide the
fields you want to update.

If an update is currently processing, you need to wait for the update to
finish before making another update.

Updates to query suggestions settings might not take effect right away.
The time for your updated settings to take effect depends on the updates
made and the number of search queries in your index.

You can still enable/disable query suggestions at any time.

`update_query_suggestions_config` is currently not supported in the
Amazon Web Services GovCloud (US-West) region.

### Usage

    kendra_update_query_suggestions_config(IndexId, Mode,
      QueryLogLookBackWindowInDays, IncludeQueriesWithoutUserInformation,
      MinimumNumberOfQueryingUsers, MinimumQueryCount,
      AttributeSuggestionsConfig)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kendra_update_query_suggestions_config_:_IndexId">IndexId</code></td>
<td><p>[required] The identifier of the index with query suggestions you
want to update.</p></td>
</tr>
<tr class="even">
<td><code
id="kendra_update_query_suggestions_config_:_Mode">Mode</code></td>
<td><p>Set the mode to <code>ENABLED</code> or
<code>LEARN_ONLY</code>.</p>
<p>By default, Amazon Kendra enables query suggestions.
<code>LEARN_ONLY</code> mode allows you to turn off query suggestions.
You can to update this at any time.</p>
<p>In <code>LEARN_ONLY</code> mode, Amazon Kendra continues to learn
from new queries to keep suggestions up to date for when you are ready
to switch to ENABLED mode again.</p></td>
</tr>
<tr class="odd">
<td><code
id="kendra_update_query_suggestions_config_:_QueryLogLookBackWindowInDays">QueryLogLookBackWindowInDays</code></td>
<td><p>How recent your queries are in your query log time window.</p>
<p>The time window is the number of days from current day to past
days.</p>
<p>By default, Amazon Kendra sets this to 180.</p></td>
</tr>
<tr class="even">
<td><code
id="kendra_update_query_suggestions_config_:_IncludeQueriesWithoutUserInformation">IncludeQueriesWithoutUserInformation</code></td>
<td><p><code>TRUE</code> to include queries without user information
(i.e. all queries, irrespective of the user), otherwise
<code>FALSE</code> to only include queries with user information.</p>
<p>If you pass user information to Amazon Kendra along with the queries,
you can set this flag to <code>FALSE</code> and instruct Amazon Kendra
to only consider queries with user information.</p>
<p>If you set to <code>FALSE</code>, Amazon Kendra only considers
queries searched at least <code>MinimumQueryCount</code> times across
<code>MinimumNumberOfQueryingUsers</code> unique users for
suggestions.</p>
<p>If you set to <code>TRUE</code>, Amazon Kendra ignores all user
information and learns from all queries.</p></td>
</tr>
<tr class="odd">
<td><code
id="kendra_update_query_suggestions_config_:_MinimumNumberOfQueryingUsers">MinimumNumberOfQueryingUsers</code></td>
<td><p>The minimum number of unique users who must search a query in
order for the query to be eligible to suggest to your users.</p>
<p>Increasing this number might decrease the number of suggestions.
However, this ensures a query is searched by many users and is truly
popular to suggest to users.</p>
<p>How you tune this setting depends on your specific needs.</p></td>
</tr>
<tr class="even">
<td><code
id="kendra_update_query_suggestions_config_:_MinimumQueryCount">MinimumQueryCount</code></td>
<td><p>The the minimum number of times a query must be searched in order
to be eligible to suggest to your users.</p>
<p>Decreasing this number increases the number of suggestions. However,
this affects the quality of suggestions as it sets a low bar for a query
to be considered popular to suggest to users.</p>
<p>How you tune this setting depends on your specific needs.</p></td>
</tr>
<tr class="odd">
<td><code
id="kendra_update_query_suggestions_config_:_AttributeSuggestionsConfig">AttributeSuggestionsConfig</code></td>
<td><p>Configuration information for the document fields/attributes that
you want to base query suggestions on.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_query_suggestions_config(
      IndexId = "string",
      Mode = "ENABLED"|"LEARN_ONLY",
      QueryLogLookBackWindowInDays = 123,
      IncludeQueriesWithoutUserInformation = TRUE|FALSE,
      MinimumNumberOfQueryingUsers = 123,
      MinimumQueryCount = 123,
      AttributeSuggestionsConfig = list(
        SuggestableConfigList = list(
          list(
            AttributeName = "string",
            Suggestable = TRUE|FALSE
          )
        ),
        AttributeSuggestionsMode = "ACTIVE"|"INACTIVE"
      )
    )
