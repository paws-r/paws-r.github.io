<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>docdb_add_tags_to_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds metadata tags to an Amazon DocumentDB resource

### Description

Adds metadata tags to an Amazon DocumentDB resource. You can use these
tags with cost allocation reporting to track costs that are associated
with Amazon DocumentDB resources or in a `Condition` statement in an
Identity and Access Management (IAM) policy for Amazon DocumentDB.

### Usage

    docdb_add_tags_to_resource(ResourceName, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="docdb_add_tags_to_resource_:_ResourceName">ResourceName</code></td>
<td><p>[required] The Amazon DocumentDB resource that the tags are added
to. This value is an Amazon Resource Name .</p></td>
</tr>
<tr class="even">
<td><code id="docdb_add_tags_to_resource_:_Tags">Tags</code></td>
<td><p>[required] The tags to be assigned to the Amazon DocumentDB
resource.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$add_tags_to_resource(
      ResourceName = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
