<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointemail_put_email_identity_mail_from_attributes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Used to enable or disable the custom Mail-From domain configuration for an email identity

### Description

Used to enable or disable the custom Mail-From domain configuration for
an email identity.

### Usage

    pinpointemail_put_email_identity_mail_from_attributes(EmailIdentity,
      MailFromDomain, BehaviorOnMxFailure)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpointemail_put_email_identity_mail_from_attributes_:_EmailIdentity">EmailIdentity</code></td>
<td><p>[required] The verified email identity that you want to set up
the custom MAIL FROM domain for.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointemail_put_email_identity_mail_from_attributes_:_MailFromDomain">MailFromDomain</code></td>
<td><p>The custom MAIL FROM domain that you want the verified identity
to use. The MAIL FROM domain must meet the following criteria:</p>
<ul>
<li><p>It has to be a subdomain of the verified identity.</p></li>
<li><p>It can't be used to receive email.</p></li>
<li><p>It can't be used in a "From" address if the MAIL FROM domain is a
destination for feedback forwarding emails.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="pinpointemail_put_email_identity_mail_from_attributes_:_BehaviorOnMxFailure">BehaviorOnMxFailure</code></td>
<td><p>The action that you want Amazon Pinpoint to take if it can't read
the required MX record when you send an email. When you set this value
to <code>UseDefaultValue</code>, Amazon Pinpoint uses
<em>amazonses.com</em> as the MAIL FROM domain. When you set this value
to <code>RejectMessage</code>, Amazon Pinpoint returns a
<code>MailFromDomainNotVerified</code> error, and doesn't attempt to
deliver the email.</p>
<p>These behaviors are taken when the custom MAIL FROM domain
configuration is in the <code>Pending</code>, <code>Failed</code>, and
<code>TemporaryFailure</code> states.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_email_identity_mail_from_attributes(
      EmailIdentity = "string",
      MailFromDomain = "string",
      BehaviorOnMxFailure = "USE_DEFAULT_VALUE"|"REJECT_MESSAGE"
    )
