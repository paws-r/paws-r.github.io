<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie2_get_findings_filter</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the criteria and other settings for a findings filter

### Description

Retrieves the criteria and other settings for a findings filter.

### Usage

    macie2_get_findings_filter(id)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="macie2_get_findings_filter_:_id">id</code></td>
<td><p>[required] The unique identifier for the Amazon Macie resource
that the request applies to.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      action = "ARCHIVE"|"NOOP",
      arn = "string",
      description = "string",
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
      id = "string",
      name = "string",
      position = 123,
      tags = list(
        "string"
      )
    )

### Request syntax

    svc$get_findings_filter(
      id = "string"
    )
