<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie2_get_classification_scope</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the classification scope settings for an account

### Description

Retrieves the classification scope settings for an account.

### Usage

    macie2_get_classification_scope(id)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="macie2_get_classification_scope_:_id">id</code></td>
<td><p>[required] The unique identifier for the Amazon Macie resource
that the request applies to.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      id = "string",
      name = "string",
      s3 = list(
        excludes = list(
          bucketNames = list(
            "string"
          )
        )
      )
    )

### Request syntax

    svc$get_classification_scope(
      id = "string"
    )
