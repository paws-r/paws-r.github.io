<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie2_get_custom_data_identifier</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the criteria and other settings for a custom data identifier

### Description

Retrieves the criteria and other settings for a custom data identifier.

### Usage

    macie2_get_custom_data_identifier(id)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="macie2_get_custom_data_identifier_:_id">id</code></td>
<td><p>[required] The unique identifier for the Amazon Macie resource
that the request applies to.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      arn = "string",
      createdAt = as.POSIXct(
        "2015-01-01"
      ),
      deleted = TRUE|FALSE,
      description = "string",
      id = "string",
      ignoreWords = list(
        "string"
      ),
      keywords = list(
        "string"
      ),
      maximumMatchDistance = 123,
      name = "string",
      regex = "string",
      severityLevels = list(
        list(
          occurrencesThreshold = 123,
          severity = "LOW"|"MEDIUM"|"HIGH"
        )
      ),
      tags = list(
        "string"
      )
    )

### Request syntax

    svc$get_custom_data_identifier(
      id = "string"
    )
