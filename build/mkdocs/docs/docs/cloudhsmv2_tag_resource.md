<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudhsmv2_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds or overwrites one or more tags for the specified AWS CloudHSM cluster

### Description

Adds or overwrites one or more tags for the specified AWS CloudHSM
cluster.

### Usage

    cloudhsmv2_tag_resource(ResourceId, TagList)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudhsmv2_tag_resource_:_ResourceId">ResourceId</code></td>
<td><p>[required] The cluster identifier (ID) for the cluster that you
are tagging. To find the cluster ID, use
<code>describe_clusters</code>.</p></td>
</tr>
<tr class="even">
<td><code id="cloudhsmv2_tag_resource_:_TagList">TagList</code></td>
<td><p>[required] A list of one or more tags.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$tag_resource(
      ResourceId = "string",
      TagList = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
