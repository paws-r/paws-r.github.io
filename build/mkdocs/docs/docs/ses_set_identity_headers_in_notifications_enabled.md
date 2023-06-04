<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ses_set_identity_headers_in_notifications_enabled</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Given an identity (an email address or a domain), sets whether Amazon SES includes the original email headers in the Amazon Simple Notification Service (Amazon SNS) notifications of a specified type

### Description

Given an identity (an email address or a domain), sets whether Amazon
SES includes the original email headers in the Amazon Simple
Notification Service (Amazon SNS) notifications of a specified type.

You can execute this operation no more than once per second.

For more information about using notifications with Amazon SES, see the
[Amazon SES Developer
Guide](https://docs.aws.amazon.com/ses/latest/dg/Welcome.html).

### Usage

    ses_set_identity_headers_in_notifications_enabled(Identity,
      NotificationType, Enabled)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ses_set_identity_headers_in_notifications_enabled_:_Identity">Identity</code></td>
<td><p>[required] The identity for which to enable or disable headers in
notifications. Examples: <code>user@example.com</code>,
<code>example.com</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ses_set_identity_headers_in_notifications_enabled_:_NotificationType">NotificationType</code></td>
<td><p>[required] The notification type for which to enable or disable
headers in notifications.</p></td>
</tr>
<tr class="odd">
<td><code
id="ses_set_identity_headers_in_notifications_enabled_:_Enabled">Enabled</code></td>
<td><p>[required] Sets whether Amazon SES includes the original email
headers in Amazon SNS notifications of the specified notification type.
A value of <code>true</code> specifies that Amazon SES will include
headers in notifications, and a value of <code>false</code> specifies
that Amazon SES will not include headers in notifications.</p>
<p>This value can only be set when <code>NotificationType</code> is
already set to use a particular Amazon SNS topic.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$set_identity_headers_in_notifications_enabled(
      Identity = "string",
      NotificationType = "Bounce"|"Complaint"|"Delivery",
      Enabled = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # The following example configures Amazon SES to include the original
    # email headers in the Amazon SNS bounce notifications for an identity:
    svc$set_identity_headers_in_notifications_enabled(
      Enabled = TRUE,
      Identity = "user@example.com",
      NotificationType = "Bounce"
    )

    ## End(Not run)
