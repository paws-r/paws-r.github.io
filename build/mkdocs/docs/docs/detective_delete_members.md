<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>detective_delete_members</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes the specified member accounts from the behavior graph

### Description

Removes the specified member accounts from the behavior graph. The
removed accounts no longer contribute data to the behavior graph. This
operation can only be called by the administrator account for the
behavior graph.

For invited accounts, the removed accounts are deleted from the list of
accounts in the behavior graph. To restore the account, the
administrator account must send another invitation.

For organization accounts in the organization behavior graph, the
Detective administrator account can always enable the organization
account again. Organization accounts that are not enabled as member
accounts are not included in the `list_members` results for the
organization behavior graph.

An administrator account cannot use `delete_members` to remove their own
account from the behavior graph. To disable a behavior graph, the
administrator account uses the `delete_graph` API method.

### Usage

    detective_delete_members(GraphArn, AccountIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="detective_delete_members_:_GraphArn">GraphArn</code></td>
<td><p>[required] The ARN of the behavior graph to remove members
from.</p></td>
</tr>
<tr class="even">
<td><code
id="detective_delete_members_:_AccountIds">AccountIds</code></td>
<td><p>[required] The list of Amazon Web Services account identifiers
for the member accounts to remove from the behavior graph. You can
remove up to 50 member accounts at a time.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AccountIds = list(
        "string"
      ),
      UnprocessedAccounts = list(
        list(
          AccountId = "string",
          Reason = "string"
        )
      )
    )

### Request syntax

    svc$delete_members(
      GraphArn = "string",
      AccountIds = list(
        "string"
      )
    )
