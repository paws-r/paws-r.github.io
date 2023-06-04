<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emr_remove_tags</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes tags from an Amazon EMR resource, such as a cluster or Amazon EMR Studio

### Description

Removes tags from an Amazon EMR resource, such as a cluster or Amazon
EMR Studio. Tags make it easier to associate resources in various ways,
such as grouping clusters to track your Amazon EMR resource allocation
costs. For more information, see [Tag
Clusters](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-tags.html).

The following example removes the stack tag with value Prod from a
cluster:

### Usage

    emr_remove_tags(ResourceId, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="emr_remove_tags_:_ResourceId">ResourceId</code></td>
<td><p>[required] The Amazon EMR resource identifier from which tags
will be removed. For example, a cluster identifier or an Amazon EMR
Studio ID.</p></td>
</tr>
<tr class="even">
<td><code id="emr_remove_tags_:_TagKeys">TagKeys</code></td>
<td><p>[required] A list of tag keys to remove from the
resource.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$remove_tags(
      ResourceId = "string",
      TagKeys = list(
        "string"
      )
    )
