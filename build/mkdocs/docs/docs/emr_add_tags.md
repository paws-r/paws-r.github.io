<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emr_add_tags</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds tags to an Amazon EMR resource, such as a cluster or an Amazon EMR Studio

### Description

Adds tags to an Amazon EMR resource, such as a cluster or an Amazon EMR
Studio. Tags make it easier to associate resources in various ways, such
as grouping clusters to track your Amazon EMR resource allocation costs.
For more information, see [Tag
Clusters](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-tags.html).

### Usage

    emr_add_tags(ResourceId, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="emr_add_tags_:_ResourceId">ResourceId</code></td>
<td><p>[required] The Amazon EMR resource identifier to which tags will
be added. For example, a cluster identifier or an Amazon EMR Studio
ID.</p></td>
</tr>
<tr class="even">
<td><code id="emr_add_tags_:_Tags">Tags</code></td>
<td><p>[required] A list of tags to associate with a resource. Tags are
user-defined key-value pairs that consist of a required key string with
a maximum of 128 characters, and an optional value string with a maximum
of 256 characters.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$add_tags(
      ResourceId = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
