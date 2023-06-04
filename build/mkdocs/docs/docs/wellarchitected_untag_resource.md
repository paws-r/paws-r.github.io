<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wellarchitected_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes specified tags from a resource

### Description

Deletes specified tags from a resource.

The WorkloadArn parameter can be either a workload ARN or a custom lens
ARN.

To specify multiple tags, use separate **tagKeys** parameters, for
example:

`DELETE /tags/WorkloadArn?tagKeys=key1&tagKeys=key2`

### Usage

    wellarchitected_untag_resource(WorkloadArn, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="wellarchitected_untag_resource_:_WorkloadArn">WorkloadArn</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="wellarchitected_untag_resource_:_TagKeys">TagKeys</code></td>
<td><p>[required] A list of tag keys. Existing tags of the resource
whose keys are members of this list are removed from the
resource.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$untag_resource(
      WorkloadArn = "string",
      TagKeys = list(
        "string"
      )
    )
