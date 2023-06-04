<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ses_verify_email_identity</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds an email address to the list of identities for your Amazon SES account in the current AWS region and attempts to verify it

### Description

Adds an email address to the list of identities for your Amazon SES
account in the current AWS region and attempts to verify it. As a result
of executing this operation, a verification email is sent to the
specified address.

You can execute this operation no more than once per second.

### Usage

    ses_verify_email_identity(EmailAddress)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ses_verify_email_identity_:_EmailAddress">EmailAddress</code></td>
<td><p>[required] The email address to be verified.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$verify_email_identity(
      EmailAddress = "string"
    )

### Examples

    ## Not run: 
    # The following example starts the email address verification process with
    # Amazon SES:
    svc$verify_email_identity(
      EmailAddress = "user@example.com"
    )

    ## End(Not run)
