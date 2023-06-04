<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>accessanalyzer_list_analyzers</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a list of analyzers

### Description

Retrieves a list of analyzers.

### Usage

    accessanalyzer_list_analyzers(nextToken, maxResults, type)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="accessanalyzer_list_analyzers_:_nextToken">nextToken</code></td>
<td><p>A token used for pagination of results returned.</p></td>
</tr>
<tr class="even">
<td><code
id="accessanalyzer_list_analyzers_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results to return in the response.</p></td>
</tr>
<tr class="odd">
<td><code id="accessanalyzer_list_analyzers_:_type">type</code></td>
<td><p>The type of analyzer.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      analyzers = list(
        list(
          arn = "string",
          name = "string",
          type = "ACCOUNT"|"ORGANIZATION",
          createdAt = as.POSIXct(
            "2015-01-01"
          ),
          lastResourceAnalyzed = "string",
          lastResourceAnalyzedAt = as.POSIXct(
            "2015-01-01"
          ),
          tags = list(
            "string"
          ),
          status = "ACTIVE"|"CREATING"|"DISABLED"|"FAILED",
          statusReason = list(
            code = "AWS_SERVICE_ACCESS_DISABLED"|"DELEGATED_ADMINISTRATOR_DEREGISTERED"|"ORGANIZATION_DELETED"|"SERVICE_LINKED_ROLE_CREATION_FAILED"
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_analyzers(
      nextToken = "string",
      maxResults = 123,
      type = "ACCOUNT"|"ORGANIZATION"
    )
