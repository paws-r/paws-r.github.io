<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_create_account_subscription</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an Amazon QuickSight account, or subscribes to Amazon QuickSight Q

### Description

Creates an Amazon QuickSight account, or subscribes to Amazon QuickSight
Q.

The Amazon Web Services Region for the account is derived from what is
configured in the CLI or SDK. This operation isn't supported in the US
East (Ohio) Region, South America (Sao Paulo) Region, or Asia Pacific
(Singapore) Region.

Before you use this operation, make sure that you can connect to an
existing Amazon Web Services account. If you don't have an Amazon Web
Services account, see [Sign up for Amazon Web
Services](https://docs.aws.amazon.com/quicksight/latest/user/setting-up-aws-sign-up.html)
in the *Amazon QuickSight User Guide*. The person who signs up for
Amazon QuickSight needs to have the correct Identity and Access
Management (IAM) permissions. For more information, see [IAM Policy
Examples for Amazon
QuickSight](https://docs.aws.amazon.com/quicksight/latest/user/iam-policy-examples.html)
in the *Amazon QuickSight User Guide*.

If your IAM policy includes both the `Subscribe` and
`create_account_subscription` actions, make sure that both actions are
set to `Allow`. If either action is set to `Deny`, the `Deny` action
prevails and your API call fails.

You can't pass an existing IAM role to access other Amazon Web Services
services using this API operation. To pass your existing IAM role to
Amazon QuickSight, see [Passing IAM roles to Amazon
QuickSight](https://docs.aws.amazon.com/quicksight/latest/user/security_iam_service-with-iam.html#security-create-iam-role)
in the *Amazon QuickSight User Guide*.

You can't set default resource access on the new account from the Amazon
QuickSight API. Instead, add default resource access from the Amazon
QuickSight console. For more information about setting default resource
access to Amazon Web Services services, see [Setting default resource
access to Amazon Web Services
services](https://docs.aws.amazon.com/quicksight/latest/user/scoping-policies-defaults.html)
in the *Amazon QuickSight User Guide*.

### Usage

    quicksight_create_account_subscription(Edition, AuthenticationMethod,
      AwsAccountId, AccountName, NotificationEmail, ActiveDirectoryName,
      Realm, DirectoryId, AdminGroup, AuthorGroup, ReaderGroup, FirstName,
      LastName, EmailAddress, ContactNumber)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_create_account_subscription_:_Edition">Edition</code></td>
<td><p>[required] The edition of Amazon QuickSight that you want your
account to have. Currently, you can choose from <code>ENTERPRISE</code>
or <code>ENTERPRISE_AND_Q</code>.</p>
<p>If you choose <code>ENTERPRISE_AND_Q</code>, the following parameters
are required:</p>
<ul>
<li><p><code>FirstName</code></p></li>
<li><p><code>LastName</code></p></li>
<li><p><code>EmailAddress</code></p></li>
<li><p><code>ContactNumber</code></p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="quicksight_create_account_subscription_:_AuthenticationMethod">AuthenticationMethod</code></td>
<td><p>[required] The method that you want to use to authenticate your
Amazon QuickSight account. Currently, the valid values for this
parameter are <code>IAM_AND_QUICKSIGHT</code>, <code>IAM_ONLY</code>,
and <code>ACTIVE_DIRECTORY</code>.</p>
<p>If you choose <code>ACTIVE_DIRECTORY</code>, provide an
<code>ActiveDirectoryName</code> and an <code>AdminGroup</code>
associated with your Active Directory.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_create_account_subscription_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The Amazon Web Services account ID of the account that
you're using to create your Amazon QuickSight account.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_create_account_subscription_:_AccountName">AccountName</code></td>
<td><p>[required] The name of your Amazon QuickSight account. This name
is unique over all of Amazon Web Services, and it appears only when
users sign in. You can't change <code>AccountName</code> value after the
Amazon QuickSight account is created.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_create_account_subscription_:_NotificationEmail">NotificationEmail</code></td>
<td><p>[required] The email address that you want Amazon QuickSight to
send notifications to regarding your Amazon QuickSight account or Amazon
QuickSight subscription.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_create_account_subscription_:_ActiveDirectoryName">ActiveDirectoryName</code></td>
<td><p>The name of your Active Directory. This field is required if
<code>ACTIVE_DIRECTORY</code> is the selected authentication method of
the new Amazon QuickSight account.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_create_account_subscription_:_Realm">Realm</code></td>
<td><p>The realm of the Active Directory that is associated with your
Amazon QuickSight account. This field is required if
<code>ACTIVE_DIRECTORY</code> is the selected authentication method of
the new Amazon QuickSight account.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_create_account_subscription_:_DirectoryId">DirectoryId</code></td>
<td><p>The ID of the Active Directory that is associated with your
Amazon QuickSight account.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_create_account_subscription_:_AdminGroup">AdminGroup</code></td>
<td><p>The admin group associated with your Active Directory. This field
is required if <code>ACTIVE_DIRECTORY</code> is the selected
authentication method of the new Amazon QuickSight account. For more
information about using Active Directory in Amazon QuickSight, see <a
href="https://docs.aws.amazon.com/quicksight/latest/user/aws-directory-service.html">Using
Active Directory with Amazon QuickSight Enterprise Edition</a> in the
Amazon QuickSight User Guide.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_create_account_subscription_:_AuthorGroup">AuthorGroup</code></td>
<td><p>The author group associated with your Active Directory. For more
information about using Active Directory in Amazon QuickSight, see <a
href="https://docs.aws.amazon.com/quicksight/latest/user/aws-directory-service.html">Using
Active Directory with Amazon QuickSight Enterprise Edition</a> in the
Amazon QuickSight User Guide.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_create_account_subscription_:_ReaderGroup">ReaderGroup</code></td>
<td><p>The reader group associated with your Active Direcrtory. For more
information about using Active Directory in Amazon QuickSight, see <a
href="https://docs.aws.amazon.com/quicksight/latest/user/aws-directory-service.html">Using
Active Directory with Amazon QuickSight Enterprise Edition</a> in the
<em>Amazon QuickSight User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_create_account_subscription_:_FirstName">FirstName</code></td>
<td><p>The first name of the author of the Amazon QuickSight account to
use for future communications. This field is required if
<code>ENTERPPRISE_AND_Q</code> is the selected edition of the new Amazon
QuickSight account.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_create_account_subscription_:_LastName">LastName</code></td>
<td><p>The last name of the author of the Amazon QuickSight account to
use for future communications. This field is required if
<code>ENTERPPRISE_AND_Q</code> is the selected edition of the new Amazon
QuickSight account.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_create_account_subscription_:_EmailAddress">EmailAddress</code></td>
<td><p>The email address of the author of the Amazon QuickSight account
to use for future communications. This field is required if
<code>ENTERPPRISE_AND_Q</code> is the selected edition of the new Amazon
QuickSight account.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_create_account_subscription_:_ContactNumber">ContactNumber</code></td>
<td><p>A 10-digit phone number for the author of the Amazon QuickSight
account to use for future communications. This field is required if
<code>ENTERPPRISE_AND_Q</code> is the selected edition of the new Amazon
QuickSight account.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SignupResponse = list(
        IAMUser = TRUE|FALSE,
        userLoginName = "string",
        accountName = "string",
        directoryType = "string"
      ),
      Status = 123,
      RequestId = "string"
    )

### Request syntax

    svc$create_account_subscription(
      Edition = "STANDARD"|"ENTERPRISE"|"ENTERPRISE_AND_Q",
      AuthenticationMethod = "IAM_AND_QUICKSIGHT"|"IAM_ONLY"|"ACTIVE_DIRECTORY",
      AwsAccountId = "string",
      AccountName = "string",
      NotificationEmail = "string",
      ActiveDirectoryName = "string",
      Realm = "string",
      DirectoryId = "string",
      AdminGroup = list(
        "string"
      ),
      AuthorGroup = list(
        "string"
      ),
      ReaderGroup = list(
        "string"
      ),
      FirstName = "string",
      LastName = "string",
      EmailAddress = "string",
      ContactNumber = "string"
    )
