<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointemail_put_email_identity_feedback_attributes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Used to enable or disable feedback forwarding for an identity

### Description

Used to enable or disable feedback forwarding for an identity. This
setting determines what happens when an identity is used to send an
email that results in a bounce or complaint event.

When you enable feedback forwarding, Amazon Pinpoint sends you email
notifications when bounce or complaint events occur. Amazon Pinpoint
sends this notification to the address that you specified in the
Return-Path header of the original email.

When you disable feedback forwarding, Amazon Pinpoint sends
notifications through other mechanisms, such as by notifying an Amazon
SNS topic. You're required to have a method of tracking bounces and
complaints. If you haven't set up another mechanism for receiving bounce
or complaint notifications, Amazon Pinpoint sends an email notification
when these events occur (even if this setting is disabled).

### Usage

    pinpointemail_put_email_identity_feedback_attributes(EmailIdentity,
      EmailForwardingEnabled)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpointemail_put_email_identity_feedback_attributes_:_EmailIdentity">EmailIdentity</code></td>
<td><p>[required] The email identity that you want to configure bounce
and complaint feedback forwarding for.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointemail_put_email_identity_feedback_attributes_:_EmailForwardingEnabled">EmailForwardingEnabled</code></td>
<td><p>Sets the feedback forwarding configuration for the identity.</p>
<p>If the value is <code>true</code>, Amazon Pinpoint sends you email
notifications when bounce or complaint events occur. Amazon Pinpoint
sends this notification to the address that you specified in the
Return-Path header of the original email.</p>
<p>When you set this value to <code>false</code>, Amazon Pinpoint sends
notifications through other mechanisms, such as by notifying an Amazon
SNS topic or another event destination. You're required to have a method
of tracking bounces and complaints. If you haven't set up another
mechanism for receiving bounce or complaint notifications, Amazon
Pinpoint sends an email notification when these events occur (even if
this setting is disabled).</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_email_identity_feedback_attributes(
      EmailIdentity = "string",
      EmailForwardingEnabled = TRUE|FALSE
    )
