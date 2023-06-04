<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspaces_terminate_workspaces</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Terminates the specified WorkSpaces

### Description

Terminates the specified WorkSpaces.

Terminating a WorkSpace is a permanent action and cannot be undone. The
user's data is destroyed. If you need to archive any user data, contact
Amazon Web Services Support before terminating the WorkSpace.

You can terminate a WorkSpace that is in any state except `SUSPENDED`.

This operation is asynchronous and returns before the WorkSpaces have
been completely terminated. After a WorkSpace is terminated, the
`TERMINATED` state is returned only briefly before the WorkSpace
directory metadata is cleaned up, so this state is rarely returned. To
confirm that a WorkSpace is terminated, check for the WorkSpace ID by
using
[DescribeWorkSpaces](https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeWorkspaces.html).
If the WorkSpace ID isn't returned, then the WorkSpace has been
successfully terminated.

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

    workspaces_terminate_workspaces(TerminateWorkspaceRequests)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspaces_terminate_workspaces_:_TerminateWorkspaceRequests">TerminateWorkspaceRequests</code></td>
<td><p>[required] The WorkSpaces to terminate. You can specify up to 25
WorkSpaces.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FailedRequests = list(
        list(
          WorkspaceId = "string",
          ErrorCode = "string",
          ErrorMessage = "string"
        )
      )
    )

### Request syntax

    svc$terminate_workspaces(
      TerminateWorkspaceRequests = list(
        list(
          WorkspaceId = "string"
        )
      )
    )
