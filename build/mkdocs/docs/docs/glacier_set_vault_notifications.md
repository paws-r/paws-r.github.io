<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glacier_set_vault_notifications</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This operation configures notifications that will be sent when specific events happen to a vault

### Description

This operation configures notifications that will be sent when specific
events happen to a vault. By default, you don't get any notifications.

To configure vault notifications, send a PUT request to the
`notification-configuration` subresource of the vault. The request
should include a JSON document that provides an Amazon SNS topic and
specific events for which you want Amazon S3 Glacier to send
notifications to the topic.

Amazon SNS topics must grant permission to the vault to be allowed to
publish notifications to the topic. You can configure a vault to publish
a notification for the following vault events:

-   **ArchiveRetrievalCompleted** This event occurs when a job that was
    initiated for an archive retrieval is completed (`initiate_job`).
    The status of the completed job can be "Succeeded" or "Failed". The
    notification sent to the SNS topic is the same output as returned
    from `describe_job`.

-   **InventoryRetrievalCompleted** This event occurs when a job that
    was initiated for an inventory retrieval is completed
    (`initiate_job`). The status of the completed job can be "Succeeded"
    or "Failed". The notification sent to the SNS topic is the same
    output as returned from `describe_job`.

An AWS account has full permission to perform all operations (actions).
However, AWS Identity and Access Management (IAM) users don't have any
permissions by default. You must grant them explicit permission to
perform specific actions. For more information, see [Access Control
Using AWS Identity and Access Management
(IAM)](https://docs.aws.amazon.com/amazonglacier/latest/dev/security-iam.html).

For conceptual information and underlying REST API, see [Configuring
Vault Notifications in Amazon S3
Glacier](https://docs.aws.amazon.com/amazonglacier/latest/dev/configuring-notifications.html)
and [Set Vault Notification
Configuration](https://docs.aws.amazon.com/amazonglacier/latest/dev/api-vault-notifications-put.html)
in the *Amazon Glacier Developer Guide*.

### Usage

    glacier_set_vault_notifications(accountId, vaultName,
      vaultNotificationConfig)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glacier_set_vault_notifications_:_accountId">accountId</code></td>
<td><p>[required] The <code>AccountId</code> value is the AWS account ID
of the account that owns the vault. You can either specify an AWS
account ID or optionally a single '<code>-</code>' (hyphen), in which
case Amazon S3 Glacier uses the AWS account ID associated with the
credentials used to sign the request. If you use an account ID, do not
include any hyphens ('-') in the ID.</p></td>
</tr>
<tr class="even">
<td><code
id="glacier_set_vault_notifications_:_vaultName">vaultName</code></td>
<td><p>[required] The name of the vault.</p></td>
</tr>
<tr class="odd">
<td><code
id="glacier_set_vault_notifications_:_vaultNotificationConfig">vaultNotificationConfig</code></td>
<td><p>Provides options for specifying notification
configuration.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$set_vault_notifications(
      accountId = "string",
      vaultName = "string",
      vaultNotificationConfig = list(
        SNSTopic = "string",
        Events = list(
          "string"
        )
      )
    )

### Examples

    ## Not run: 
    # The example sets the examplevault notification configuration.
    svc$set_vault_notifications(
      accountId = "-",
      vaultName = "examplevault",
      vaultNotificationConfig = list(
        Events = list(
          "ArchiveRetrievalCompleted",
          "InventoryRetrievalCompleted"
        ),
        SNSTopic = "arn:aws:sns:us-west-2:012345678901:mytopic"
      )
    )

    ## End(Not run)
