<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directoryservice_delete_directory</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an Directory Service directory

### Description

Deletes an Directory Service directory.

Before you call `delete_directory`, ensure that all of the required
permissions have been explicitly granted through a policy. For details
about what permissions are required to run the `delete_directory`
operation, see [Directory Service API Permissions: Actions, Resources,
and Conditions
Reference](https://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html).

### Usage

    directoryservice_delete_directory(DirectoryId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directoryservice_delete_directory_:_DirectoryId">DirectoryId</code></td>
<td><p>[required] The identifier of the directory to delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DirectoryId = "string"
    )

### Request syntax

    svc$delete_directory(
      DirectoryId = "string"
    )
