<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_get_account_password_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the password policy for the Amazon Web Services account

### Description

Retrieves the password policy for the Amazon Web Services account. This
tells you the complexity requirements and mandatory rotation periods for
the IAM user passwords in your account. For more information about using
a password policy, see [Managing an IAM password
policy](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_passwords_account-policy.html).

### Usage

    iam_get_account_password_policy()

### Value

A list with the following syntax:

    list(
      PasswordPolicy = list(
        MinimumPasswordLength = 123,
        RequireSymbols = TRUE|FALSE,
        RequireNumbers = TRUE|FALSE,
        RequireUppercaseCharacters = TRUE|FALSE,
        RequireLowercaseCharacters = TRUE|FALSE,
        AllowUsersToChangePassword = TRUE|FALSE,
        ExpirePasswords = TRUE|FALSE,
        MaxPasswordAge = 123,
        PasswordReusePrevention = 123,
        HardExpiry = TRUE|FALSE
      )
    )

### Examples

    ## Not run: 
    # The following command displays details about the password policy for the
    # current AWS account.
    svc$get_account_password_policy()

    ## End(Not run)
