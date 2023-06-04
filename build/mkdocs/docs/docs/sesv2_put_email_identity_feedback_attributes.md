<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sesv2_put_email_identity_feedback_attributes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Used to enable or disable feedback forwarding for an identity

### Description

Used to enable or disable feedback forwarding for an identity. This
setting determines what happens when an identity is used to send an
email that results in a bounce or complaint event.

If the value is `true`, you receive email notifications when bounce or
complaint events occur. These notifications are sent to the address that
you specified in the `Return-Path` header of the original email.

You're required to have a method of tracking bounces and complaints. If
you haven't set up another mechanism for receiving bounce or complaint
notifications (for example, by setting up an event destination), you
receive an email notification when these events occur (even if this
setting is disabled).

### Usage

    sesv2_put_email_identity_feedback_attributes(EmailIdentity,
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
id="sesv2_put_email_identity_feedback_attributes_:_EmailIdentity">EmailIdentity</code></td>
<td><p>[required] The email identity.</p></td>
</tr>
<tr class="even">
<td><code
id="sesv2_put_email_identity_feedback_attributes_:_EmailForwardingEnabled">EmailForwardingEnabled</code></td>
<td><p>Sets the feedback forwarding configuration for the identity.</p>
<p>If the value is <code>true</code>, you receive email notifications
when bounce or complaint events occur. These notifications are sent to
the address that you specified in the <code>Return-Path</code> header of
the original email.</p>
<p>You're required to have a method of tracking bounces and complaints.
If you haven't set up another mechanism for receiving bounce or
complaint notifications (for example, by setting up an event
destination), you receive an email notification when these events occur
(even if this setting is disabled).</p></td>
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
