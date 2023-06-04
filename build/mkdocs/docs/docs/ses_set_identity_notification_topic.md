<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ses_set_identity_notification_topic</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sets an Amazon Simple Notification Service (Amazon SNS) topic to use when delivering notifications

### Description

Sets an Amazon Simple Notification Service (Amazon SNS) topic to use
when delivering notifications. When you use this operation, you specify
a verified identity, such as an email address or domain. When you send
an email that uses the chosen identity in the Source field, Amazon SES
sends notifications to the topic you specified. You can send bounce,
complaint, or delivery notifications (or any combination of the three)
to the Amazon SNS topic that you specify.

You can execute this operation no more than once per second.

For more information about feedback notification, see the [Amazon SES
Developer
Guide](https://docs.aws.amazon.com/ses/latest/dg/Welcome.html).

### Usage

    ses_set_identity_notification_topic(Identity, NotificationType,
      SnsTopic)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ses_set_identity_notification_topic_:_Identity">Identity</code></td>
<td><p>[required] The identity (email address or domain) that you want
to set the Amazon SNS topic for.</p>
<p>You can only specify a verified identity for this parameter.</p>
<p>You can specify an identity by using its name or by using its Amazon
Resource Name (ARN). The following examples are all valid identities:
<code>sender@example.com</code>, <code>example.com</code>,
<code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ses_set_identity_notification_topic_:_NotificationType">NotificationType</code></td>
<td><p>[required] The type of notifications that will be published to
the specified Amazon SNS topic.</p></td>
</tr>
<tr class="odd">
<td><code
id="ses_set_identity_notification_topic_:_SnsTopic">SnsTopic</code></td>
<td><p>The Amazon Resource Name (ARN) of the Amazon SNS topic. If the
parameter is omitted from the request or a null value is passed,
<code>SnsTopic</code> is cleared and publishing is disabled.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$set_identity_notification_topic(
      Identity = "string",
      NotificationType = "Bounce"|"Complaint"|"Delivery",
      SnsTopic = "string"
    )

### Examples

    ## Not run: 
    # The following example sets the Amazon SNS topic to which Amazon SES will
    # publish bounce, complaint, and/or delivery notifications for emails sent
    # with the specified identity as the Source:
    svc$set_identity_notification_topic(
      Identity = "user@example.com",
      NotificationType = "Bounce",
      SnsTopic = "arn:aws:sns:us-west-2:111122223333:MyTopic"
    )

    ## End(Not run)
