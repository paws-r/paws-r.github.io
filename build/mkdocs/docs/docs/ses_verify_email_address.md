<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ses_verify_email_address</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deprecated

### Description

Deprecated. Use the `verify_email_identity` operation to verify a new
email address.

### Usage

    ses_verify_email_address(EmailAddress)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ses_verify_email_address_:_EmailAddress">EmailAddress</code></td>
<td><p>[required] The email address to be verified.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$verify_email_address(
      EmailAddress = "string"
    )

### Examples

    ## Not run: 
    # The following example starts the email address verification process with
    # Amazon SES:
    svc$verify_email_address(
      EmailAddress = "user@example.com"
    )

    ## End(Not run)
