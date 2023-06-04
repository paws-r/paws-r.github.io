<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie2_get_sensitive_data_occurrences</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves occurrences of sensitive data reported by a finding

### Description

Retrieves occurrences of sensitive data reported by a finding.

### Usage

    macie2_get_sensitive_data_occurrences(findingId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="macie2_get_sensitive_data_occurrences_:_findingId">findingId</code></td>
<td><p>[required] The unique identifier for the finding.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      error = "string",
      sensitiveDataOccurrences = list(
        list(
          list(
            value = "string"
          )
        )
      ),
      status = "SUCCESS"|"PROCESSING"|"ERROR"
    )

### Request syntax

    svc$get_sensitive_data_occurrences(
      findingId = "string"
    )
