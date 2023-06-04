<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie2_list_findings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a subset of information about one or more findings

### Description

Retrieves a subset of information about one or more findings.

### Usage

    macie2_list_findings(findingCriteria, maxResults, nextToken,
      sortCriteria)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="macie2_list_findings_:_findingCriteria">findingCriteria</code></td>
<td><p>The criteria to use to filter the results.</p></td>
</tr>
<tr class="even">
<td><code id="macie2_list_findings_:_maxResults">maxResults</code></td>
<td><p>The maximum number of items to include in each page of the
response.</p></td>
</tr>
<tr class="odd">
<td><code id="macie2_list_findings_:_nextToken">nextToken</code></td>
<td><p>The nextToken string that specifies which page of results to
return in a paginated response.</p></td>
</tr>
<tr class="even">
<td><code
id="macie2_list_findings_:_sortCriteria">sortCriteria</code></td>
<td><p>The criteria to use to sort the results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      findingIds = list(
        "string"
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_findings(
      findingCriteria = list(
        criterion = list(
          list(
            eq = list(
              "string"
            ),
            eqExactMatch = list(
              "string"
            ),
            gt = 123,
            gte = 123,
            lt = 123,
            lte = 123,
            neq = list(
              "string"
            )
          )
        )
      ),
      maxResults = 123,
      nextToken = "string",
      sortCriteria = list(
        attributeName = "string",
        orderBy = "ASC"|"DESC"
      )
    )
