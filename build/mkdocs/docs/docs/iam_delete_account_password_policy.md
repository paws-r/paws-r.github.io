<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_delete_account_password_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the password policy for the Amazon Web Services account

### Description

Deletes the password policy for the Amazon Web Services account. There
are no parameters.

### Usage

    iam_delete_account_password_policy()

### Value

An empty list.

### Examples

    ## Not run: 
    # The following command removes the password policy from the current AWS
    # account:
    svc$delete_account_password_policy()

    ## End(Not run)
