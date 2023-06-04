<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directoryservice_add_tags_to_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds or overwrites one or more tags for the specified directory

### Description

Adds or overwrites one or more tags for the specified directory. Each
directory can have a maximum of 50 tags. Each tag consists of a key and
optional value. Tag keys must be unique to each resource.

### Usage

    directoryservice_add_tags_to_resource(ResourceId, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directoryservice_add_tags_to_resource_:_ResourceId">ResourceId</code></td>
<td><p>[required] Identifier (ID) for the directory to which to add the
tag.</p></td>
</tr>
<tr class="even">
<td><code
id="directoryservice_add_tags_to_resource_:_Tags">Tags</code></td>
<td><p>[required] The tags to be assigned to the directory.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$add_tags_to_resource(
      ResourceId = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
