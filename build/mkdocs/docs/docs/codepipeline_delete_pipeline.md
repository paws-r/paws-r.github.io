<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codepipeline_delete_pipeline</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified pipeline

### Description

Deletes the specified pipeline.

### Usage

    codepipeline_delete_pipeline(name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="codepipeline_delete_pipeline_:_name">name</code></td>
<td><p>[required] The name of the pipeline to be deleted.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_pipeline(
      name = "string"
    )
