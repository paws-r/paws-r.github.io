<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudhsmv2_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes the specified tag or tags from the specified AWS CloudHSM cluster

### Description

Removes the specified tag or tags from the specified AWS CloudHSM
cluster.

### Usage

    cloudhsmv2_untag_resource(ResourceId, TagKeyList)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudhsmv2_untag_resource_:_ResourceId">ResourceId</code></td>
<td><p>[required] The cluster identifier (ID) for the cluster whose tags
you are removing. To find the cluster ID, use
<code>describe_clusters</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudhsmv2_untag_resource_:_TagKeyList">TagKeyList</code></td>
<td><p>[required] A list of one or more tag keys for the tags that you
are removing. Specify only the tag keys, not the tag values.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$untag_resource(
      ResourceId = "string",
      TagKeyList = list(
        "string"
      )
    )
