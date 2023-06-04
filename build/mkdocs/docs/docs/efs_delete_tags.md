<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>efs_delete_tags</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## DEPRECATED - DeleteTags is deprecated and not maintained

### Description

DEPRECATED - `delete_tags` is deprecated and not maintained. To remove
tags from EFS resources, use the API action.

Deletes the specified tags from a file system. If the `delete_tags`
request includes a tag key that doesn't exist, Amazon EFS ignores it and
doesn't cause an error. For more information about tags and related
restrictions, see [Tag
restrictions](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html)
in the *Billing and Cost Management User Guide*.

This operation requires permissions for the
`elasticfilesystem:DeleteTags` action.

### Usage

    efs_delete_tags(FileSystemId, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="efs_delete_tags_:_FileSystemId">FileSystemId</code></td>
<td><p>[required] The ID of the file system whose tags you want to
delete (String).</p></td>
</tr>
<tr class="even">
<td><code id="efs_delete_tags_:_TagKeys">TagKeys</code></td>
<td><p>[required] A list of tag keys to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_tags(
      FileSystemId = "string",
      TagKeys = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # This operation deletes tags for an EFS file system.
    svc$delete_tags(
      FileSystemId = "fs-01234567",
      TagKeys = list(
        "Name"
      )
    )

    ## End(Not run)
