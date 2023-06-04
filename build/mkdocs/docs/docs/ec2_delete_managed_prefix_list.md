<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_delete_managed_prefix_list</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified managed prefix list

### Description

Deletes the specified managed prefix list. You must first remove all
references to the prefix list in your resources.

### Usage

    ec2_delete_managed_prefix_list(DryRun, PrefixListId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_delete_managed_prefix_list_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_delete_managed_prefix_list_:_PrefixListId">PrefixListId</code></td>
<td><p>[required] The ID of the prefix list.</p></td>
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

    svc$delete_managed_prefix_list(
      DryRun = TRUE|FALSE,
      PrefixListId = "string"
    )
