<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wellarchitected_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List the tags for a resource

### Description

List the tags for a resource.

The WorkloadArn parameter can be either a workload ARN or a custom lens
ARN.

### Usage

    wellarchitected_list_tags_for_resource(WorkloadArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="wellarchitected_list_tags_for_resource_:_WorkloadArn">WorkloadArn</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Tags = list(
        "string"
      )
    )

### Request syntax

    svc$list_tags_for_resource(
      WorkloadArn = "string"
    )
