<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_restore_managed_prefix_list_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Restores the entries from a previous version of a managed prefix list to a new version of the prefix list

### Description

Restores the entries from a previous version of a managed prefix list to
a new version of the prefix list.

### Usage

    ec2_restore_managed_prefix_list_version(DryRun, PrefixListId,
      PreviousVersion, CurrentVersion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_restore_managed_prefix_list_version_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_restore_managed_prefix_list_version_:_PrefixListId">PrefixListId</code></td>
<td><p>[required] The ID of the prefix list.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_restore_managed_prefix_list_version_:_PreviousVersion">PreviousVersion</code></td>
<td><p>[required] The version to restore.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_restore_managed_prefix_list_version_:_CurrentVersion">CurrentVersion</code></td>
<td><p>[required] The current version number for the prefix
list.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PrefixList = list(
        PrefixListId = "string",
        AddressFamily = "string",
        State = "create-in-progress"|"create-complete"|"create-failed"|"modify-in-progress"|"modify-complete"|"modify-failed"|"restore-in-progress"|"restore-complete"|"restore-failed"|"delete-in-progress"|"delete-complete"|"delete-failed",
        StateMessage = "string",
        PrefixListArn = "string",
        PrefixListName = "string",
        MaxEntries = 123,
        Version = 123,
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        ),
        OwnerId = "string"
      )
    )

### Request syntax

    svc$restore_managed_prefix_list_version(
      DryRun = TRUE|FALSE,
      PrefixListId = "string",
      PreviousVersion = 123,
      CurrentVersion = 123
    )
