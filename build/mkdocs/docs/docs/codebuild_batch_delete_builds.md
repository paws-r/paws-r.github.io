<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codebuild_batch_delete_builds</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes one or more builds

### Description

Deletes one or more builds.

### Usage

    codebuild_batch_delete_builds(ids)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="codebuild_batch_delete_builds_:_ids">ids</code></td>
<td><p>[required] The IDs of the builds to delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
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

    svc$batch_delete_builds(
      ids = list(
        "string"
      )
    )
