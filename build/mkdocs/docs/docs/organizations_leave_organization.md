<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>organizations_leave_organization</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes a member account from its parent organization

### Description

Removes a member account from its parent organization. This version of
the operation is performed by the account that wants to leave. To remove
a member account as a user in the management account, use
`remove_account_from_organization` instead.

This operation can be called only from a member account in the
organization.

-   The management account in an organization with all features enabled
    can set service control policies (SCPs) that can restrict what
    administrators of member accounts can do. This includes preventing
    them from successfully calling `leave_organization` and leaving the
    organization.

-   You can leave an organization as a member account only if the
    account is configured with the information required to operate as a
    standalone account. When you create an account in an organization
    using the Organizations console, API, or CLI commands, the
    information required of standalone accounts is *not* automatically
    collected. For each account that you want to make standalone, you
    must perform the following steps. If any of the steps are already
    completed for this account, that step doesn't appear.

    -   Choose a support plan

    -   Provide and verify the required contact information

    -   Provide a current payment method

    Amazon Web Services uses the payment method to charge for any
    billable (not free tier) Amazon Web Services activity that occurs
    while the account isn't attached to an organization. Follow the
    steps at [To leave an organization when all required account
    information has not yet been
    provided](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_remove.html#leave-without-all-info)
    in the *Organizations User Guide.*

-   The account that you want to leave must not be a delegated
    administrator account for any Amazon Web Services service enabled
    for your organization. If the account is a delegated administrator,
    you must first change the delegated administrator account to another
    account that is remaining in the organization.

-   You can leave an organization only after you enable IAM user access
    to billing in your account. For more information, see [Activating
    Access to the Billing and Cost Management
    Console](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/control-access-billing.html#ControllingAccessWebsite-Activate)
    in the *Amazon Web Services Billing and Cost Management User Guide.*

-   After the account leaves the organization, all tags that were
    attached to the account object in the organization are deleted.
    Amazon Web Services accounts outside of an organization do not
    support tags.

-   A newly created account has a waiting period before it can be
    removed from its organization. If you get an error that indicates
    that a wait period is required, then try again in a few days.

### Usage

    organizations_leave_organization()

### Value

An empty list.

### Examples

    ## Not run: 
    # TThe following example shows how to remove your member account from an
    # organization:
    svc$leave_organization()

    ## End(Not run)
