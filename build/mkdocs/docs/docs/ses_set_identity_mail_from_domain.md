<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ses_set_identity_mail_from_domain</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Enables or disables the custom MAIL FROM domain setup for a verified identity (an email address or a domain)

### Description

Enables or disables the custom MAIL FROM domain setup for a verified
identity (an email address or a domain).

To send emails using the specified MAIL FROM domain, you must add an MX
record to your MAIL FROM domain's DNS settings. If you want your emails
to pass Sender Policy Framework (SPF) checks, you must also add or
update an SPF record. For more information, see the [Amazon SES
Developer
Guide](https://docs.aws.amazon.com/ses/latest/dg/Welcome.html).

You can execute this operation no more than once per second.

### Usage

    ses_set_identity_mail_from_domain(Identity, MailFromDomain,
      BehaviorOnMXFailure)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ses_set_identity_mail_from_domain_:_Identity">Identity</code></td>
<td><p>[required] The verified identity for which you want to enable or
disable the specified custom MAIL FROM domain.</p></td>
</tr>
<tr class="even">
<td><code
id="ses_set_identity_mail_from_domain_:_MailFromDomain">MailFromDomain</code></td>
<td><p>The custom MAIL FROM domain that you want the verified identity
to use. The MAIL FROM domain must 1) be a subdomain of the verified
identity, 2) not be used in a "From" address if the MAIL FROM domain is
the destination of email feedback forwarding (for more information, see
the <a
href="https://docs.aws.amazon.com/ses/latest/dg/mail-from.html">Amazon
SES Developer Guide</a>), and 3) not be used to receive emails. A value
of <code>null</code> disables the custom MAIL FROM setting for the
identity.</p></td>
</tr>
<tr class="odd">
<td><code
id="ses_set_identity_mail_from_domain_:_BehaviorOnMXFailure">BehaviorOnMXFailure</code></td>
<td><p>The action that you want Amazon SES to take if it cannot
successfully read the required MX record when you send an email. If you
choose <code>UseDefaultValue</code>, Amazon SES will use amazonses.com
(or a subdomain of that) as the MAIL FROM domain. If you choose
<code>RejectMessage</code>, Amazon SES will return a
<code>MailFromDomainNotVerified</code> error and not send the email.</p>
<p>The action specified in <code>BehaviorOnMXFailure</code> is taken
when the custom MAIL FROM domain setup is in the <code>Pending</code>,
<code>Failed</code>, and <code>TemporaryFailure</code> states.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$set_identity_mail_from_domain(
      Identity = "string",
      MailFromDomain = "string",
      BehaviorOnMXFailure = "UseDefaultValue"|"RejectMessage"
    )

### Examples

    ## Not run: 
    # The following example configures Amazon SES to use a custom MAIL FROM
    # domain for an identity:
    svc$set_identity_mail_from_domain(
      BehaviorOnMXFailure = "UseDefaultValue",
      Identity = "user@example.com",
      MailFromDomain = "bounces.example.com"
    )

    ## End(Not run)
