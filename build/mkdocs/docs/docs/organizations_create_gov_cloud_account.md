<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>organizations_create_gov_cloud_account</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This action is available if all of the following are true:

### Description

This action is available if all of the following are true:

-   You're authorized to create accounts in the Amazon Web Services
    GovCloud (US) Region. For more information on the Amazon Web
    Services GovCloud (US) Region, see the [*Amazon Web Services
    GovCloud User
    Guide*.](https://docs.aws.amazon.com/govcloud-us/latest/UserGuide/welcome.html)

-   You already have an account in the Amazon Web Services GovCloud (US)
    Region that is paired with a management account of an organization
    in the commercial Region.

-   You call this action from the management account of your
    organization in the commercial Region.

-   You have the `organizations:CreateGovCloudAccount` permission.

Organizations automatically creates the required service-linked role
named `AWSServiceRoleForOrganizations`. For more information, see
[Organizations and Service-Linked
Roles](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html#orgs_integrate_services-using_slrs)
in the *Organizations User Guide.*

Amazon Web Services automatically enables CloudTrail for Amazon Web
Services GovCloud (US) accounts, but you should also do the following:

-   Verify that CloudTrail is enabled to store logs.

-   Create an Amazon S3 bucket for CloudTrail log storage.

    For more information, see [Verifying CloudTrail Is
    Enabled](https://docs.aws.amazon.com/govcloud-us/latest/UserGuide/verifying-cloudtrail.html)
    in the *Amazon Web Services GovCloud User Guide*.

If the request includes tags, then the requester must have the
`organizations:TagResource` permission. The tags are attached to the
commercial account associated with the GovCloud account, rather than the
GovCloud account itself. To add tags to the GovCloud account, call the
`tag_resource` operation in the GovCloud Region after the new GovCloud
account exists.

You call this action from the management account of your organization in
the commercial Region to create a standalone Amazon Web Services account
in the Amazon Web Services GovCloud (US) Region. After the account is
created, the management account of an organization in the Amazon Web
Services GovCloud (US) Region can invite it to that organization. For
more information on inviting standalone accounts in the Amazon Web
Services GovCloud (US) to join an organization, see
[Organizations](https://docs.aws.amazon.com/govcloud-us/latest/UserGuide/govcloud-organizations.html)
in the *Amazon Web Services GovCloud User Guide.*

Calling `create_gov_cloud_account` is an asynchronous request that
Amazon Web Services performs in the background. Because
`create_gov_cloud_account` operates asynchronously, it can return a
successful completion message even though account initialization might
still be in progress. You might need to wait a few minutes before you
can successfully access the account. To check the status of the request,
do one of the following:

-   Use the `OperationId` response element from this operation to
    provide as a parameter to the `describe_create_account_status`
    operation.

-   Check the CloudTrail log for the `CreateAccountResult` event. For
    information on using CloudTrail with Organizations, see [Monitoring
    the Activity in Your
    Organization](https://docs.aws.amazon.com/organizations/latest/userguide/)
    in the *Organizations User Guide.*

When you call the `create_gov_cloud_account` action, you create two
accounts: a standalone account in the Amazon Web Services GovCloud (US)
Region and an associated account in the commercial Region for billing
and support purposes. The account in the commercial Region is
automatically a member of the organization whose credentials made the
request. Both accounts are associated with the same email address.

A role is created in the new account in the commercial Region that
allows the management account in the organization in the commercial
Region to assume it. An Amazon Web Services GovCloud (US) account is
then created and associated with the commercial account that you just
created. A role is also created in the new Amazon Web Services GovCloud
(US) account that can be assumed by the Amazon Web Services GovCloud
(US) account that is associated with the management account of the
commercial organization. For more information and to view a diagram that
explains how account access works, see
[Organizations](https://docs.aws.amazon.com/govcloud-us/latest/UserGuide/govcloud-organizations.html)
in the *Amazon Web Services GovCloud User Guide.*

For more information about creating accounts, see [Creating an Amazon
Web Services account in Your
Organization](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_create.html)
in the *Organizations User Guide.*

-   When you create an account in an organization using the
    Organizations console, API, or CLI commands, the information
    required for the account to operate as a standalone account is *not*
    automatically collected. This includes a payment method and signing
    the end user license agreement (EULA). If you must remove an account
    from your organization later, you can do so only after you provide
    the missing information. Follow the steps at [To leave an
    organization as a member
    account](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_remove.html#leave-without-all-info)
    in the *Organizations User Guide.*

-   If you get an exception that indicates that you exceeded your
    account limits for the organization, contact Amazon Web Services
    Support.

-   If you get an exception that indicates that the operation failed
    because your organization is still initializing, wait one hour and
    then try again. If the error persists, contact Amazon Web Services
    Support.

-   Using `create_gov_cloud_account` to create multiple temporary
    accounts isn't recommended. You can only close an account from the
    Amazon Web Services Billing and Cost Management console, and you
    must be signed in as the root user. For information on the
    requirements and process for closing an account, see [Closing an
    Amazon Web Services
    account](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_close.html)
    in the *Organizations User Guide*.

When you create a member account with this operation, you can choose
whether to create the account with the **IAM User and Role Access to
Billing Information** switch enabled. If you enable it, IAM users and
roles that have appropriate permissions can view billing information for
the account. If you disable it, only the account root user can access
billing information. For information about how to disable this switch
for an account, see [Granting Access to Your Billing Information and
Tools](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/control-access-billing.html).

### Usage

    organizations_create_gov_cloud_account(Email, AccountName, RoleName,
      IamUserAccessToBilling, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="organizations_create_gov_cloud_account_:_Email">Email</code></td>
<td><p>[required] Specifies the email address of the owner to assign to
the new member account in the commercial Region. This email address must
not already be associated with another Amazon Web Services account. You
must use a valid email address to complete account creation.</p>
<p>The rules for a valid email address:</p>
<ul>
<li><p>The address must be a minimum of 6 and a maximum of 64 characters
long.</p></li>
<li><p>All characters must be 7-bit ASCII characters.</p></li>
<li><p>There must be one and only one @ symbol, which separates the
local name from the domain name.</p></li>
<li><p>The local name can't contain any of the following characters:</p>
<p>whitespace, " ' ( ) \&lt; \&gt; [ ] : ; , \ | % &amp;</p></li>
<li><p>The local name can't begin with a dot (.)</p></li>
<li><p>The domain name can consist of only the characters
[a-z],[A-Z],[0-9], hyphen (-), or dot (.)</p></li>
<li><p>The domain name can't begin or end with a hyphen (-) or dot
(.)</p></li>
<li><p>The domain name must contain at least one dot</p></li>
</ul>
<p>You can't access the root user of the account or remove an account
that was created with an invalid email address. Like all request
parameters for <code>create_gov_cloud_account</code>, the request for
the email address for the Amazon Web Services GovCloud (US) account
originates from the commercial Region, not from the Amazon Web Services
GovCloud (US) Region.</p></td>
</tr>
<tr class="even">
<td><code
id="organizations_create_gov_cloud_account_:_AccountName">AccountName</code></td>
<td><p>[required] The friendly name of the member account.</p>
<p>The account name can consist of only the characters
[a-z],[A-Z],[0-9], hyphen (-), or dot (.) You can't separate characters
with a dash (–).</p></td>
</tr>
<tr class="odd">
<td><code
id="organizations_create_gov_cloud_account_:_RoleName">RoleName</code></td>
<td><p>(Optional)</p>
<p>The name of an IAM role that Organizations automatically
preconfigures in the new member accounts in both the Amazon Web Services
GovCloud (US) Region and in the commercial Region. This role trusts the
management account, allowing users in the management account to assume
the role, as permitted by the management account administrator. The role
has administrator permissions in the new member account.</p>
<p>If you don't specify this parameter, the role name defaults to
<code>OrganizationAccountAccessRole</code>.</p>
<p>For more information about how to use this role to access the member
account, see <a
href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html#orgs_manage_accounts_create-cross-account-role">Accessing
and Administering the Member Accounts in Your Organization</a> in the
<em>Organizations User Guide</em> and steps 2 and 3 in <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/tutorial_cross-account-with-roles.html">Tutorial:
Delegate Access Across Amazon Web Services accounts Using IAM Roles</a>
in the <em>IAM User Guide.</em></p>
<p>The <a href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>
that is used to validate this parameter. The pattern can include
uppercase letters, lowercase letters, digits with no spaces, and any of
the following characters: =,.@-</p></td>
</tr>
<tr class="even">
<td><code
id="organizations_create_gov_cloud_account_:_IamUserAccessToBilling">IamUserAccessToBilling</code></td>
<td><p>If set to <code>ALLOW</code>, the new linked account in the
commercial Region enables IAM users to access account billing
information <em>if</em> they have the required permissions. If set to
<code>DENY</code>, only the root user of the new account can access
account billing information. For more information, see <a
href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/control-access-billing.html#ControllingAccessWebsite-Activate">Activating
Access to the Billing and Cost Management Console</a> in the <em>Amazon
Web Services Billing and Cost Management User Guide.</em></p>
<p>If you don't specify this parameter, the value defaults to
<code>ALLOW</code>, and IAM users and roles with the required
permissions can access billing information for the new account.</p></td>
</tr>
<tr class="odd">
<td><code
id="organizations_create_gov_cloud_account_:_Tags">Tags</code></td>
<td><p>A list of tags that you want to attach to the newly created
account. These tags are attached to the commercial account associated
with the GovCloud account, and not to the GovCloud account itself. To
add tags to the actual GovCloud account, call the
<code>tag_resource</code> operation in the GovCloud region after the new
GovCloud account exists.</p>
<p>For each tag in the list, you must specify both a tag key and a
value. You can set the value to an empty string, but you can't set it to
<code>null</code>. For more information about tagging, see <a
href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_tagging.html">Tagging
Organizations resources</a> in the Organizations User Guide.</p>
<p>If any one of the tags is not valid or if you exceed the maximum
allowed number of tags for an account, then the entire request fails and
the account is not created.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CreateAccountStatus = list(
        Id = "string",
        AccountName = "string",
        State = "IN_PROGRESS"|"SUCCEEDED"|"FAILED",
        RequestedTimestamp = as.POSIXct(
          "2015-01-01"
        ),
        CompletedTimestamp = as.POSIXct(
          "2015-01-01"
        ),
        AccountId = "string",
        GovCloudAccountId = "string",
        FailureReason = "ACCOUNT_LIMIT_EXCEEDED"|"EMAIL_ALREADY_EXISTS"|"INVALID_ADDRESS"|"INVALID_EMAIL"|"CONCURRENT_ACCOUNT_MODIFICATION"|"INTERNAL_FAILURE"|"GOVCLOUD_ACCOUNT_ALREADY_EXISTS"|"MISSING_BUSINESS_VALIDATION"|"FAILED_BUSINESS_VALIDATION"|"PENDING_BUSINESS_VALIDATION"|"INVALID_IDENTITY_FOR_BUSINESS_VALIDATION"|"UNKNOWN_BUSINESS_VALIDATION"|"MISSING_PAYMENT_INSTRUMENT"|"INVALID_PAYMENT_INSTRUMENT"|"UPDATE_EXISTING_RESOURCE_POLICY_WITH_TAGS_NOT_SUPPORTED"
      )
    )

### Request syntax

    svc$create_gov_cloud_account(
      Email = "string",
      AccountName = "string",
      RoleName = "string",
      IamUserAccessToBilling = "ALLOW"|"DENY",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
