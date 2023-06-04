<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>clouddirectory_delete_directory</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a directory

### Description

Deletes a directory. Only disabled directories can be deleted. A deleted
directory cannot be undone. Exercise extreme caution when deleting
directories.

### Usage

    clouddirectory_delete_directory(DirectoryArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="clouddirectory_delete_directory_:_DirectoryArn">DirectoryArn</code></td>
<td><p>[required] The ARN of the directory to delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DirectoryArn = "string"
    )

### Request syntax

    svc$delete_directory(
      DirectoryArn = "string"
    )
