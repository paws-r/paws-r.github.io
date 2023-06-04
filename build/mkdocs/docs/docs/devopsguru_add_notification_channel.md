<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>devopsguru_add_notification_channel</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds a notification channel to DevOps Guru

### Description

Adds a notification channel to DevOps Guru. A notification channel is
used to notify you about important DevOps Guru events, such as when an
insight is generated.

If you use an Amazon SNS topic in another account, you must attach a
policy to it that grants DevOps Guru permission to it notifications.
DevOps Guru adds the required policy on your behalf to send
notifications using Amazon SNS in your account. DevOps Guru only
supports standard SNS topics. For more information, see [Permissions for
cross account Amazon SNS
topics](https://docs.aws.amazon.com/devops-guru/latest/userguide/sns-required-permissions.html).

If you use an Amazon SNS topic in another account, you must attach a
policy to it that grants DevOps Guru permission to it notifications.
DevOps Guru adds the required policy on your behalf to send
notifications using Amazon SNS in your account. For more information,
see Permissions for cross account Amazon SNS topics.

If you use an Amazon SNS topic that is encrypted by an Amazon Web
Services Key Management Service customer-managed key (CMK), then you
must add permissions to the CMK. For more information, see [Permissions
for Amazon Web Services KMS–encrypted Amazon SNS
topics](https://docs.aws.amazon.com/devops-guru/latest/userguide/sns-kms-permissions.html).

### Usage

    devopsguru_add_notification_channel(Config)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="devopsguru_add_notification_channel_:_Config">Config</code></td>
<td><p>[required] A <code>NotificationChannelConfig</code> object that
specifies what type of notification channel to add. The one supported
notification channel is Amazon Simple Notification Service (Amazon
SNS).</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Id = "string"
    )

### Request syntax

    svc$add_notification_channel(
      Config = list(
        Sns = list(
          TopicArn = "string"
        ),
        Filters = list(
          Severities = list(
            "LOW"|"MEDIUM"|"HIGH"
          ),
          MessageTypes = list(
            "NEW_INSIGHT"|"CLOSED_INSIGHT"|"NEW_ASSOCIATION"|"SEVERITY_UPGRADED"|"NEW_RECOMMENDATION"
          )
        )
      )
    )
