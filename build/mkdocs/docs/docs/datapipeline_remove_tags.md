<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>datapipeline_remove_tags</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes existing tags from the specified pipeline

### Description

Removes existing tags from the specified pipeline.

### Usage

    datapipeline_remove_tags(pipelineId, tagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="datapipeline_remove_tags_:_pipelineId">pipelineId</code></td>
<td><p>[required] The ID of the pipeline.</p></td>
</tr>
<tr class="even">
<td><code id="datapipeline_remove_tags_:_tagKeys">tagKeys</code></td>
<td><p>[required] The keys of the tags to remove.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$remove_tags(
      pipelineId = "string",
      tagKeys = list(
        "string"
      )
    )
