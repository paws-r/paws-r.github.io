<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspaces_create_tags</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates the specified tags for the specified WorkSpaces resource

### Description

Creates the specified tags for the specified WorkSpaces resource.

### Usage

    workspaces_create_tags(ResourceId, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspaces_create_tags_:_ResourceId">ResourceId</code></td>
<td><p>[required] The identifier of the WorkSpaces resource. The
supported resource types are WorkSpaces, registered directories, images,
custom bundles, IP access control groups, and connection
aliases.</p></td>
</tr>
<tr class="even">
<td><code id="workspaces_create_tags_:_Tags">Tags</code></td>
<td><p>[required] The tags. Each WorkSpaces resource can have a maximum
of 50 tags.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_tags(
      ResourceId = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
