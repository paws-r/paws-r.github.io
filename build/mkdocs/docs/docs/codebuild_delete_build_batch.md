<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codebuild_delete_build_batch</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a batch build

### Description

Deletes a batch build.

### Usage

    codebuild_delete_build_batch(id)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="codebuild_delete_build_batch_:_id">id</code></td>
<td><p>[required] The identifier of the batch build to delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      statusCode = "string",
      buildsDeleted = list(
        "string"
      ),
      buildsNotDeleted = list(
        list(
          id = "string",
          statusCode = "string"
        )
      )
    )

### Request syntax

    svc$delete_build_batch(
      id = "string"
    )
