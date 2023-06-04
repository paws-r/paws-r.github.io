<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ses_list_verified_email_addresses</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deprecated

### Description

Deprecated. Use the `list_identities` operation to list the email
addresses and domains associated with your account.

### Usage

    ses_list_verified_email_addresses()

### Value

A list with the following syntax:

    list(
      VerifiedEmailAddresses = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # The following example lists all email addresses that have been submitted
    # for verification with Amazon SES:
    svc$list_verified_email_addresses()

    ## End(Not run)
