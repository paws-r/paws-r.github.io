<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wellarchitected_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds one or more tags to the specified resource

### Description

Adds one or more tags to the specified resource.

The WorkloadArn parameter can be either a workload ARN or a custom lens
ARN.

### Usage

    wellarchitected_tag_resource(WorkloadArn, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="wellarchitected_tag_resource_:_WorkloadArn">WorkloadArn</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code id="wellarchitected_tag_resource_:_Tags">Tags</code></td>
<td><p>[required] The tags for the resource.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$tag_resource(
      WorkloadArn = "string",
      Tags = list(
        "string"
      )
    )
