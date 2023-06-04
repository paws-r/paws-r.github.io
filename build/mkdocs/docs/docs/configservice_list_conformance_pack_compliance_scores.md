<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_list_conformance_pack_compliance_scores</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of conformance pack compliance scores

### Description

Returns a list of conformance pack compliance scores. A compliance score
is the percentage of the number of compliant rule-resource combinations
in a conformance pack compared to the number of total possible
rule-resource combinations in the conformance pack. This metric provides
you with a high-level view of the compliance state of your conformance
packs. You can use it to identify, investigate, and understand the level
of compliance in your conformance packs.

Conformance packs with no evaluation results will have a compliance
score of `INSUFFICIENT_DATA`.

### Usage

    configservice_list_conformance_pack_compliance_scores(Filters,
      SortOrder, SortBy, Limit, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="configservice_list_conformance_pack_compliance_scores_:_Filters">Filters</code></td>
<td><p>Filters the results based on the
<code>ConformancePackComplianceScoresFilters</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="configservice_list_conformance_pack_compliance_scores_:_SortOrder">SortOrder</code></td>
<td><p>Determines the order in which conformance pack compliance scores
are sorted. Either in ascending or descending order.</p>
<p>By default, conformance pack compliance scores are sorted in
alphabetical order by name of the conformance pack. Conformance pack
compliance scores are sorted in reverse alphabetical order if you enter
<code>DESCENDING</code>.</p>
<p>You can sort conformance pack compliance scores by the numerical
value of the compliance score by entering <code>SCORE</code> in the
<code>SortBy</code> action. When compliance scores are sorted by
<code>SCORE</code>, conformance packs with a compliance score of
<code>INSUFFICIENT_DATA</code> will be last when sorting by ascending
order and first when sorting by descending order.</p></td>
</tr>
<tr class="odd">
<td><code
id="configservice_list_conformance_pack_compliance_scores_:_SortBy">SortBy</code></td>
<td><p>Sorts your conformance pack compliance scores in either ascending
or descending order, depending on <code>SortOrder</code>.</p>
<p>By default, conformance pack compliance scores are sorted in
alphabetical order by name of the conformance pack. Enter
<code>SCORE</code>, to sort conformance pack compliance scores by the
numerical value of the compliance score.</p></td>
</tr>
<tr class="even">
<td><code
id="configservice_list_conformance_pack_compliance_scores_:_Limit">Limit</code></td>
<td><p>The maximum number of conformance pack compliance scores returned
on each page.</p></td>
</tr>
<tr class="odd">
<td><code
id="configservice_list_conformance_pack_compliance_scores_:_NextToken">NextToken</code></td>
<td><p>The <code>nextToken</code> string in a prior request that you can
use to get the paginated response for the next set of conformance pack
compliance scores.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      ConformancePackComplianceScores = list(
        list(
          Score = "string",
          ConformancePackName = "string",
          LastUpdatedTime = as.POSIXct(
            "2015-01-01"
          )
        )
      )
    )

### Request syntax

    svc$list_conformance_pack_compliance_scores(
      Filters = list(
        ConformancePackNames = list(
          "string"
        )
      ),
      SortOrder = "ASCENDING"|"DESCENDING",
      SortBy = "SCORE",
      Limit = 123,
      NextToken = "string"
    )
