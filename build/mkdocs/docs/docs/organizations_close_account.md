<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>organizations_close_account</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Closes an Amazon Web Services member account within an organization

### Description

Closes an Amazon Web Services member account within an organization. You
can close an account when [all features are
enabled](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html)
. You can't close the management account with this API. This is an
asynchronous request that Amazon Web Services performs in the
background. Because `close_account` operates asynchronously, it can
return a successful completion message even though account closure might
still be in progress. You need to wait a few minutes before the account
is fully closed. To check the status of the request, do one of the
following:

-   Use the `AccountId` that you sent in the `close_account` request to
    provide as a parameter to the `describe_account` operation.

    While the close account request is in progress, Account status will
    indicate PENDING\_CLOSURE. When the close account request completes,
    the status will change to SUSPENDED.

-   Check the CloudTrail log for the `CloseAccountResult` event that
    gets published after the account closes successfully. For
    information on using CloudTrail with Organizations, see [Logging and
    monitoring in
    Organizations](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_security_incident-response.html#orgs_cloudtrail-integration)
    in the *Organizations User Guide.*

-   You can close only 10% of member accounts, between 10 and 200,
    within a rolling 30 day period. This quota is not bound by a
    calendar month, but starts when you close an account.

    After you reach this limit, you can close additional accounts in the
    Billing console. For more information, see [Closing an
    account](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/close-account.html)
    in the Amazon Web Services Billing and Cost Management User Guide.

-   To reinstate a closed account, contact Amazon Web Services Support
    within the 90-day grace period while the account is in SUSPENDED
    status.

-   If the Amazon Web Services account you attempt to close is linked to
    an Amazon Web Services GovCloud (US) account, the `close_account`
    request will close both accounts. To learn important pre-closure
    details, see [Closing an Amazon Web Services GovCloud (US)
    account](https://docs.aws.amazon.com/govcloud-us/latest/UserGuide/Closing-govcloud-account.html)
    in the *Amazon Web Services GovCloud User Guide*.

For more information about closing accounts, see [Closing an Amazon Web
Services
account](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_close.html)
in the *Organizations User Guide.*

### Usage

    organizations_close_account(AccountId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="organizations_close_account_:_AccountId">AccountId</code></td>
<td><p>[required] Retrieves the Amazon Web Services account Id for the
current <code>close_account</code> API request.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$close_account(
      AccountId = "string"
    )
