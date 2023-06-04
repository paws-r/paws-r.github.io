<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_update_account_password_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the password policy settings for the Amazon Web Services account

### Description

Updates the password policy settings for the Amazon Web Services
account.

This operation does not support partial updates. No parameters are
required, but if you do not specify a parameter, that parameter's value
reverts to its default value. See the **Request Parameters** section for
each parameter's default value. Also note that some parameters do not
allow the default parameter to be explicitly set. Instead, to invoke the
default value, do not include that parameter when you invoke the
operation.

For more information about using a password policy, see [Managing an IAM
password
policy](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_passwords_account-policy.html)
in the *IAM User Guide*.

### Usage

    iam_update_account_password_policy(MinimumPasswordLength,
      RequireSymbols, RequireNumbers, RequireUppercaseCharacters,
      RequireLowercaseCharacters, AllowUsersToChangePassword, MaxPasswordAge,
      PasswordReusePrevention, HardExpiry)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="iam_update_account_password_policy_:_MinimumPasswordLength">MinimumPasswordLength</code></td>
<td><p>The minimum number of characters allowed in an IAM user
password.</p>
<p>If you do not specify a value for this parameter, then the operation
uses the default value of <code>6</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="iam_update_account_password_policy_:_RequireSymbols">RequireSymbols</code></td>
<td><p>Specifies whether IAM user passwords must contain at least one of
the following non-alphanumeric characters:</p>
<p>! @ # $ % ^ &amp; * ( ) _ + - = [ ] { } | '</p>
<p>If you do not specify a value for this parameter, then the operation
uses the default value of <code>false</code>. The result is that
passwords do not require at least one symbol character.</p></td>
</tr>
<tr class="odd">
<td><code
id="iam_update_account_password_policy_:_RequireNumbers">RequireNumbers</code></td>
<td><p>Specifies whether IAM user passwords must contain at least one
numeric character (0 to 9).</p>
<p>If you do not specify a value for this parameter, then the operation
uses the default value of <code>false</code>. The result is that
passwords do not require at least one numeric character.</p></td>
</tr>
<tr class="even">
<td><code
id="iam_update_account_password_policy_:_RequireUppercaseCharacters">RequireUppercaseCharacters</code></td>
<td><p>Specifies whether IAM user passwords must contain at least one
uppercase character from the ISO basic Latin alphabet (A to Z).</p>
<p>If you do not specify a value for this parameter, then the operation
uses the default value of <code>false</code>. The result is that
passwords do not require at least one uppercase character.</p></td>
</tr>
<tr class="odd">
<td><code
id="iam_update_account_password_policy_:_RequireLowercaseCharacters">RequireLowercaseCharacters</code></td>
<td><p>Specifies whether IAM user passwords must contain at least one
lowercase character from the ISO basic Latin alphabet (a to z).</p>
<p>If you do not specify a value for this parameter, then the operation
uses the default value of <code>false</code>. The result is that
passwords do not require at least one lowercase character.</p></td>
</tr>
<tr class="even">
<td><code
id="iam_update_account_password_policy_:_AllowUsersToChangePassword">AllowUsersToChangePassword</code></td>
<td><p>Allows all IAM users in your account to use the Amazon Web
Services Management Console to change their own passwords. For more
information, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_passwords_enable-user-change.html">Permitting
IAM users to change their own passwords</a> in the <em>IAM User
Guide</em>.</p>
<p>If you do not specify a value for this parameter, then the operation
uses the default value of <code>false</code>. The result is that IAM
users in the account do not automatically have permissions to change
their own password.</p></td>
</tr>
<tr class="odd">
<td><code
id="iam_update_account_password_policy_:_MaxPasswordAge">MaxPasswordAge</code></td>
<td><p>The number of days that an IAM user password is valid.</p>
<p>If you do not specify a value for this parameter, then the operation
uses the default value of <code>0</code>. The result is that IAM user
passwords never expire.</p></td>
</tr>
<tr class="even">
<td><code
id="iam_update_account_password_policy_:_PasswordReusePrevention">PasswordReusePrevention</code></td>
<td><p>Specifies the number of previous passwords that IAM users are
prevented from reusing.</p>
<p>If you do not specify a value for this parameter, then the operation
uses the default value of <code>0</code>. The result is that IAM users
are not prevented from reusing previous passwords.</p></td>
</tr>
<tr class="odd">
<td><code
id="iam_update_account_password_policy_:_HardExpiry">HardExpiry</code></td>
<td><p>Prevents IAM users who are accessing the account via the Amazon
Web Services Management Console from setting a new console password
after their password has expired. The IAM user cannot access the console
until an administrator resets the password.</p>
<p>If you do not specify a value for this parameter, then the operation
uses the default value of <code>false</code>. The result is that IAM
users can change their passwords after they expire and continue to sign
in as the user.</p>
<p>In the Amazon Web Services Management Console, the custom password
policy option <strong>Allow users to change their own password</strong>
gives IAM users permissions to <code>iam:ChangePassword</code> for only
their user and to the <code>iam:GetAccountPasswordPolicy</code> action.
This option does not attach a permissions policy to each user, rather
the permissions are applied at the account-level for all users by IAM.
IAM users with <code>iam:ChangePassword</code> permission and active
access keys can reset their own expired console password using the CLI
or API.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_account_password_policy(
      MinimumPasswordLength = 123,
      RequireSymbols = TRUE|FALSE,
      RequireNumbers = TRUE|FALSE,
      RequireUppercaseCharacters = TRUE|FALSE,
      RequireLowercaseCharacters = TRUE|FALSE,
      AllowUsersToChangePassword = TRUE|FALSE,
      MaxPasswordAge = 123,
      PasswordReusePrevention = 123,
      HardExpiry = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # The following command sets the password policy to require a minimum
    # length of eight characters and to require one or more numbers in the
    # password:
    svc$update_account_password_policy(
      MinimumPasswordLength = 8L,
      RequireNumbers = TRUE
    )

    ## End(Not run)
