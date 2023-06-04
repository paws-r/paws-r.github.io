<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glacier_get_vault_notifications</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This operation retrieves the notification-configuration subresource of the specified vault

### Description

This operation retrieves the `notification-configuration` subresource of
the specified vault.

For information about setting a notification configuration on a vault,
see `set_vault_notifications`. If a notification configuration for a
vault is not set, the operation returns a `⁠404 Not Found⁠` error. For
more information about vault notifications, see [Configuring Vault
Notifications in Amazon S3
Glacier](https://docs.aws.amazon.com/amazonglacier/latest/dev/configuring-notifications.html).

An AWS account has full permission to perform all operations (actions).
However, AWS Identity and Access Management (IAM) users don't have any
permissions by default. You must grant them explicit permission to
perform specific actions. For more information, see [Access Control
Using AWS Identity and Access Management
(IAM)](https://docs.aws.amazon.com/amazonglacier/latest/dev/security-iam.html).

For conceptual information and underlying REST API, see [Configuring
Vault Notifications in Amazon S3
Glacier](https://docs.aws.amazon.com/amazonglacier/latest/dev/configuring-notifications.html)
and [Get Vault Notification
Configuration](https://docs.aws.amazon.com/amazonglacier/latest/dev/api-vault-notifications-get.html)
in the *Amazon Glacier Developer Guide*.

### Usage

    glacier_get_vault_notifications(accountId, vaultName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glacier_get_vault_notifications_:_accountId">accountId</code></td>
<td><p>[required] The <code>AccountId</code> value is the AWS account ID
of the account that owns the vault. You can either specify an AWS
account ID or optionally a single '<code>-</code>' (hyphen), in which
case Amazon S3 Glacier uses the AWS account ID associated with the
credentials used to sign the request. If you use an account ID, do not
include any hyphens ('-') in the ID.</p></td>
</tr>
<tr class="even">
<td><code
id="glacier_get_vault_notifications_:_vaultName">vaultName</code></td>
<td><p>[required] The name of the vault.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      vaultNotificationConfig = list(
        SNSTopic = "string",
        Events = list(
          "string"
        )
      )
    )

### Request syntax

    svc$get_vault_notifications(
      accountId = "string",
      vaultName = "string"
    )

### Examples

    ## Not run: 
    # The example retrieves the notification-configuration for the vault named
    # my-vault.
    svc$get_vault_notifications(
      accountId = "-",
      vaultName = "my-vault"
    )

    ## End(Not run)
