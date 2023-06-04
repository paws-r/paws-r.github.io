<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie2_update_classification_scope</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the classification scope settings for an account

### Description

Updates the classification scope settings for an account.

### Usage

    macie2_update_classification_scope(id, s3)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="macie2_update_classification_scope_:_id">id</code></td>
<td><p>[required] The unique identifier for the Amazon Macie resource
that the request applies to.</p></td>
</tr>
<tr class="even">
<td><code id="macie2_update_classification_scope_:_s3">s3</code></td>
<td><p>The S3 buckets to add or remove from the exclusion list defined
by the classification scope.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_classification_scope(
      id = "string",
      s3 = list(
        excludes = list(
          bucketNames = list(
            "string"
          ),
          operation = "ADD"|"REPLACE"|"REMOVE"
        )
      )
    )
