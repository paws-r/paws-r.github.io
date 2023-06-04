<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>accessanalyzer_get_analyzer</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves information about the specified analyzer

### Description

Retrieves information about the specified analyzer.

### Usage

    accessanalyzer_get_analyzer(analyzerName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="accessanalyzer_get_analyzer_:_analyzerName">analyzerName</code></td>
<td><p>[required] The name of the analyzer retrieved.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      analyzer = list(
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
    )

### Request syntax

    svc$get_analyzer(
      analyzerName = "string"
    )
