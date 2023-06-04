<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>accessanalyzer_list_archive_rules</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a list of archive rules created for the specified analyzer

### Description

Retrieves a list of archive rules created for the specified analyzer.

### Usage

    accessanalyzer_list_archive_rules(analyzerName, nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="accessanalyzer_list_archive_rules_:_analyzerName">analyzerName</code></td>
<td><p>[required] The name of the analyzer to retrieve rules
from.</p></td>
</tr>
<tr class="even">
<td><code
id="accessanalyzer_list_archive_rules_:_nextToken">nextToken</code></td>
<td><p>A token used for pagination of results returned.</p></td>
</tr>
<tr class="odd">
<td><code
id="accessanalyzer_list_archive_rules_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results to return in the request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      archiveRules = list(
        list(
          ruleName = "string",
          filter = list(
            list(
              eq = list(
                "string"
              ),
              neq = list(
                "string"
              ),
              contains = list(
                "string"
              ),
              exists = TRUE|FALSE
            )
          ),
          createdAt = as.POSIXct(
            "2015-01-01"
          ),
          updatedAt = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_archive_rules(
      analyzerName = "string",
      nextToken = "string",
      maxResults = 123
    )
