<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>datapipeline_add_tags</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds or modifies tags for the specified pipeline

### Description

Adds or modifies tags for the specified pipeline.

### Usage

    datapipeline_add_tags(pipelineId, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="datapipeline_add_tags_:_pipelineId">pipelineId</code></td>
<td><p>[required] The ID of the pipeline.</p></td>
</tr>
<tr class="even">
<td><code id="datapipeline_add_tags_:_tags">tags</code></td>
<td><p>[required] The tags to add, as key/value pairs.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$add_tags(
      pipelineId = "string",
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      )
    )
