<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>securityhub_create_members</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a member association in Security Hub between the specified accounts and the account used to make the request, which is the administrator account

### Description

Creates a member association in Security Hub between the specified
accounts and the account used to make the request, which is the
administrator account. If you are integrated with Organizations, then
the administrator account is designated by the organization management
account.

`create_members` is always used to add accounts that are not
organization members.

For accounts that are managed using Organizations, `create_members` is
only used in the following cases:

-   Security Hub is not configured to automatically add new organization
    accounts.

-   The account was disassociated or deleted in Security Hub.

This action can only be used by an account that has Security Hub
enabled. To enable Security Hub, you can use the `enable_security_hub`
operation.

For accounts that are not organization members, you create the account
association and then send an invitation to the member account. To send
the invitation, you use the `invite_members` operation. If the account
owner accepts the invitation, the account becomes a member account in
Security Hub.

Accounts that are managed using Organizations do not receive an
invitation. They automatically become a member account in Security Hub.

-   If the organization account does not have Security Hub enabled, then
    Security Hub and the default standards are automatically enabled.
    Note that Security Hub cannot be enabled automatically for the
    organization management account. The organization management account
    must enable Security Hub before the administrator account enables it
    as a member account.

-   For organization accounts that already have Security Hub enabled,
    Security Hub does not make any other changes to those accounts. It
    does not change their enabled standards or controls.

A permissions policy is added that permits the administrator account to
view the findings generated in the member account.

To remove the association between the administrator and member accounts,
use the `disassociate_from_master_account` or `disassociate_members`
operation.

### Usage

    securityhub_create_members(AccountDetails)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="securityhub_create_members_:_AccountDetails">AccountDetails</code></td>
<td><p>[required] The list of accounts to associate with the Security
Hub administrator account. For each account, the list includes the
account ID and optionally the email address.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      UnprocessedAccounts = list(
        list(
          AccountId = "string",
          ProcessingResult = "string"
        )
      )
    )

### Request syntax

    svc$create_members(
      AccountDetails = list(
        list(
          AccountId = "string",
          Email = "string"
        )
      )
    )

### Examples

    ## Not run: 
    # The following example creates a member association between the specified
    # accounts and the administrator account (the account that makes the
    # request). This operation is used to add accounts that aren't part of an
    # organization.
    svc$create_members(
      AccountDetails = list(
        list(
          AccountId = "123456789012"
        ),
        list(
          AccountId = "111122223333"
        )
      )
    )

    ## End(Not run)
