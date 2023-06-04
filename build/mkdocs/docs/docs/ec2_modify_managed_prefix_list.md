<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_modify_managed_prefix_list</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the specified managed prefix list

### Description

Modifies the specified managed prefix list.

Adding or removing entries in a prefix list creates a new version of the
prefix list. Changing the name of the prefix list does not affect the
version.

If you specify a current version number that does not match the true
current version number, the request fails.

### Usage

    ec2_modify_managed_prefix_list(DryRun, PrefixListId, CurrentVersion,
      PrefixListName, AddEntries, RemoveEntries, MaxEntries)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_modify_managed_prefix_list_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_managed_prefix_list_:_PrefixListId">PrefixListId</code></td>
<td><p>[required] The ID of the prefix list.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_managed_prefix_list_:_CurrentVersion">CurrentVersion</code></td>
<td><p>The current version of the prefix list.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_managed_prefix_list_:_PrefixListName">PrefixListName</code></td>
<td><p>A name for the prefix list.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_managed_prefix_list_:_AddEntries">AddEntries</code></td>
<td><p>One or more entries to add to the prefix list.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_managed_prefix_list_:_RemoveEntries">RemoveEntries</code></td>
<td><p>One or more entries to remove from the prefix list.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_managed_prefix_list_:_MaxEntries">MaxEntries</code></td>
<td><p>The maximum number of entries for the prefix list. You cannot
modify the entries of a prefix list and modify the size of a prefix list
at the same time.</p>
<p>If any of the resources that reference the prefix list cannot support
the new maximum size, the modify operation fails. Check the state
message for the IDs of the first ten resources that do not support the
new maximum size.</p></td>
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

    svc$modify_managed_prefix_list(
      DryRun = TRUE|FALSE,
      PrefixListId = "string",
      CurrentVersion = 123,
      PrefixListName = "string",
      AddEntries = list(
        list(
          Cidr = "string",
          Description = "string"
        )
      ),
      RemoveEntries = list(
        list(
          Cidr = "string"
        )
      ),
      MaxEntries = 123
    )
