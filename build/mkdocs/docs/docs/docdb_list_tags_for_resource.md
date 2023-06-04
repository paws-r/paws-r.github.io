<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>docdb_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all tags on an Amazon DocumentDB resource

### Description

Lists all tags on an Amazon DocumentDB resource.

### Usage

    docdb_list_tags_for_resource(ResourceName, Filters)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="docdb_list_tags_for_resource_:_ResourceName">ResourceName</code></td>
<td><p>[required] The Amazon DocumentDB resource with tags to be listed.
This value is an Amazon Resource Name (ARN).</p></td>
</tr>
<tr class="even">
<td><code
id="docdb_list_tags_for_resource_:_Filters">Filters</code></td>
<td><p>This parameter is not currently supported.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TagList = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Request syntax

    svc$list_tags_for_resource(
      ResourceName = "string",
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      )
    )
