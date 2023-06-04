<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ses_set_identity_dkim_enabled</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Enables or disables Easy DKIM signing of email sent from an identity

### Description

Enables or disables Easy DKIM signing of email sent from an identity. If
Easy DKIM signing is enabled for a domain, then Amazon SES uses DKIM to
sign all email that it sends from addresses on that domain. If Easy DKIM
signing is enabled for an email address, then Amazon SES uses DKIM to
sign all email it sends from that address.

For email addresses (for example, `user@example.com`), you can only
enable DKIM signing if the corresponding domain (in this case,
`example.com`) has been set up to use Easy DKIM.

You can enable DKIM signing for an identity at any time after you start
the verification process for the identity, even if the verification
process isn't complete.

You can execute this operation no more than once per second.

For more information about Easy DKIM signing, go to the [Amazon SES
Developer
Guide](https://docs.aws.amazon.com/ses/latest/dg/send-email-authentication-dkim-easy.html).

### Usage

    ses_set_identity_dkim_enabled(Identity, DkimEnabled)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ses_set_identity_dkim_enabled_:_Identity">Identity</code></td>
<td><p>[required] The identity for which DKIM signing should be enabled
or disabled.</p></td>
</tr>
<tr class="even">
<td><code
id="ses_set_identity_dkim_enabled_:_DkimEnabled">DkimEnabled</code></td>
<td><p>[required] Sets whether DKIM signing is enabled for an identity.
Set to <code>true</code> to enable DKIM signing for this identity;
<code>false</code> to disable it.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$set_identity_dkim_enabled(
      Identity = "string",
      DkimEnabled = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # The following example configures Amazon SES to Easy DKIM-sign the email
    # sent from an identity:
    svc$set_identity_dkim_enabled(
      DkimEnabled = TRUE,
      Identity = "user@example.com"
    )

    ## End(Not run)
