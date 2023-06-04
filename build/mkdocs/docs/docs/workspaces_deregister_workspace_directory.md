<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspaces_deregister_workspace_directory</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deregisters the specified directory

### Description

Deregisters the specified directory. This operation is asynchronous and
returns before the WorkSpace directory is deregistered. If any
WorkSpaces are registered to this directory, you must remove them before
you can deregister the directory.

Simple AD and AD Connector are made available to you free of charge to
use with WorkSpaces. If there are no WorkSpaces being used with your
Simple AD or AD Connector directory for 30 consecutive days, this
directory will be automatically deregistered for use with Amazon
WorkSpaces, and you will be charged for this directory as per the
[Directory Service pricing
terms](https://aws.amazon.com/directoryservice/pricing/).

To delete empty directories, see [Delete the Directory for Your
WorkSpaces](https://docs.aws.amazon.com/workspaces/latest/adminguide/delete-workspaces-directory.html).
If you delete your Simple AD or AD Connector directory, you can always
create a new one when you want to start using WorkSpaces again.

### Usage

    workspaces_deregister_workspace_directory(DirectoryId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspaces_deregister_workspace_directory_:_DirectoryId">DirectoryId</code></td>
<td><p>[required] The identifier of the directory. If any WorkSpaces are
registered to this directory, you must remove them before you deregister
the directory, or you will receive an OperationNotSupportedException
error.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$deregister_workspace_directory(
      DirectoryId = "string"
    )
