<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>efs_create_tags</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## DEPRECATED - CreateTags is deprecated and not maintained

### Description

DEPRECATED - `create_tags` is deprecated and not maintained. To create
tags for EFS resources, use the API action.

Creates or overwrites tags associated with a file system. Each tag is a
key-value pair. If a tag key specified in the request already exists on
the file system, this operation overwrites its value with the value
provided in the request. If you add the `Name` tag to your file system,
Amazon EFS returns it in the response to the `describe_file_systems`
operation.

This operation requires permission for the
`elasticfilesystem:CreateTags` action.

### Usage

    efs_create_tags(FileSystemId, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="efs_create_tags_:_FileSystemId">FileSystemId</code></td>
<td><p>[required] The ID of the file system whose tags you want to
modify (String). This operation modifies the tags only, not the file
system.</p></td>
</tr>
<tr class="even">
<td><code id="efs_create_tags_:_Tags">Tags</code></td>
<td><p>[required] An array of <code>Tag</code> objects to add. Each
<code>Tag</code> object is a key-value pair.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_tags(
      FileSystemId = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Examples

    ## Not run: 
    # This operation creates a new tag for an EFS file system.
    svc$create_tags(
      FileSystemId = "fs-01234567",
      Tags = list(
        list(
          Key = "Name",
          Value = "MyFileSystem"
        )
      )
    )

    ## End(Not run)
