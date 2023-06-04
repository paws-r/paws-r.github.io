<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ses_set_identity_feedback_forwarding_enabled</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Given an identity (an email address or a domain), enables or disables whether Amazon SES forwards bounce and complaint notifications as email

### Description

Given an identity (an email address or a domain), enables or disables
whether Amazon SES forwards bounce and complaint notifications as email.
Feedback forwarding can only be disabled when Amazon Simple Notification
Service (Amazon SNS) topics are specified for both bounces and
complaints.

Feedback forwarding does not apply to delivery notifications. Delivery
notifications are only available through Amazon SNS.

You can execute this operation no more than once per second.

For more information about using notifications with Amazon SES, see the
[Amazon SES Developer
Guide](https://docs.aws.amazon.com/ses/latest/dg/Welcome.html).

### Usage

    ses_set_identity_feedback_forwarding_enabled(Identity,
      ForwardingEnabled)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ses_set_identity_feedback_forwarding_enabled_:_Identity">Identity</code></td>
<td><p>[required] The identity for which to set bounce and complaint
notification forwarding. Examples: <code>user@example.com</code>,
<code>example.com</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ses_set_identity_feedback_forwarding_enabled_:_ForwardingEnabled">ForwardingEnabled</code></td>
<td><p>[required] Sets whether Amazon SES will forward bounce and
complaint notifications as email. <code>true</code> specifies that
Amazon SES will forward bounce and complaint notifications as email, in
addition to any Amazon SNS topic publishing otherwise specified.
<code>false</code> specifies that Amazon SES will publish bounce and
complaint notifications only through Amazon SNS. This value can only be
set to <code>false</code> when Amazon SNS topics are set for both
<code>Bounce</code> and <code>Complaint</code> notification
types.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$set_identity_feedback_forwarding_enabled(
      Identity = "string",
      ForwardingEnabled = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # The following example configures Amazon SES to forward an identity's
    # bounces and complaints via email:
    svc$set_identity_feedback_forwarding_enabled(
      ForwardingEnabled = TRUE,
      Identity = "user@example.com"
    )

    ## End(Not run)
