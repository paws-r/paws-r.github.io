<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ses_get_account_sending_enabled</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the email sending status of the Amazon SES account for the current region

### Description

Returns the email sending status of the Amazon SES account for the
current region.

You can execute this operation no more than once per second.

### Usage

    ses_get_account_sending_enabled()

### Value

A list with the following syntax:

    list(
      Enabled = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # The following example returns if sending status for an account is
    # enabled. (true / false):
    svc$get_account_sending_enabled()

    ## End(Not run)
