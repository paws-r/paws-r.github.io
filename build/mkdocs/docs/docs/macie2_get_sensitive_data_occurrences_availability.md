<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie2_get_sensitive_data_occurrences_availability</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Checks whether occurrences of sensitive data can be retrieved for a finding

### Description

Checks whether occurrences of sensitive data can be retrieved for a
finding.

### Usage

    macie2_get_sensitive_data_occurrences_availability(findingId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="macie2_get_sensitive_data_occurrences_availability_:_findingId">findingId</code></td>
<td><p>[required] The unique identifier for the finding.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      code = "AVAILABLE"|"UNAVAILABLE",
      reasons = list(
        "OBJECT_EXCEEDS_SIZE_QUOTA"|"UNSUPPORTED_OBJECT_TYPE"|"UNSUPPORTED_FINDING_TYPE"|"INVALID_CLASSIFICATION_RESULT"|"OBJECT_UNAVAILABLE"
      )
    )

### Request syntax

    svc$get_sensitive_data_occurrences_availability(
      findingId = "string"
    )
