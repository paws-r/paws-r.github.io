<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspaces_describe_tags</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the specified tags for the specified WorkSpaces resource

### Description

Describes the specified tags for the specified WorkSpaces resource.

### Usage

    workspaces_describe_tags(ResourceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspaces_describe_tags_:_ResourceId">ResourceId</code></td>
<td><p>[required] The identifier of the WorkSpaces resource. The
supported resource types are WorkSpaces, registered directories, images,
custom bundles, IP access control groups, and connection
aliases.</p></td>
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

    svc$describe_tags(
      ResourceId = "string"
    )
