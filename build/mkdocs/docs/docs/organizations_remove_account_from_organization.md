<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>organizations_remove_account_from_organization</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes the specified account from the organization

### Description

Removes the specified account from the organization.

The removed account becomes a standalone account that isn't a member of
any organization. It's no longer subject to any policies and is
responsible for its own bill payments. The organization's management
account is no longer charged for any expenses accrued by the member
account after it's removed from the organization.

This operation can be called only from the organization's management
account. Member accounts can remove themselves with `leave_organization`
instead.

-   You can remove an account from your organization only if the account
    is configured with the information required to operate as a
    standalone account. When you create an account in an organization
    using the Organizations console, API, or CLI commands, the
    information required of standalone accounts is *not* automatically
    collected. For an account that you want to make standalone, you must
    choose a support plan, provide and verify the required contact
    information, and provide a current payment method. Amazon Web
    Services uses the payment method to charge for any billable (not
    free tier) Amazon Web Services activity that occurs while the
    account isn't attached to an organization. To remove an account that
    doesn't yet have this information, you must sign in as the member
    account and follow the steps at [To leave an organization when all
    required account information has not yet been
    provided](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_remove.html#leave-without-all-info)
    in the *Organizations User Guide.*

-   The account that you want to leave must not be a delegated
    administrator account for any Amazon Web Services service enabled
    for your organization. If the account is a delegated administrator,
    you must first change the delegated administrator account to another
    account that is remaining in the organization.

-   After the account leaves the organization, all tags that were
    attached to the account object in the organization are deleted.
    Amazon Web Services accounts outside of an organization do not
    support tags.

### Usage

    organizations_remove_account_from_organization(AccountId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="organizations_remove_account_from_organization_:_AccountId">AccountId</code></td>
<td><p>[required] The unique identifier (ID) of the member account that
you want to remove from the organization.</p>
<p>The <a href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>
for an account ID string requires exactly 12 digits.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$remove_account_from_organization(
      AccountId = "string"
    )

### Examples

    ## Not run: 
    # The following example shows you how to remove an account from an
    # organization:
    svc$remove_account_from_organization(
      AccountId = "333333333333"
    )

    ## End(Not run)
