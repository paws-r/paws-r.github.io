<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ses_delete_verified_email_address</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deprecated

### Description

Deprecated. Use the `delete_identity` operation to delete email
addresses and domains.

### Usage

    ses_delete_verified_email_address(EmailAddress)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ses_delete_verified_email_address_:_EmailAddress">EmailAddress</code></td>
<td><p>[required] An email address to be removed from the list of
verified addresses.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_verified_email_address(
      EmailAddress = "string"
    )

### Examples

    ## Not run: 
    # The following example deletes an email address from the list of
    # identities that have been submitted for verification with Amazon SES:
    svc$delete_verified_email_address(
      EmailAddress = "user@example.com"
    )

    ## End(Not run)
