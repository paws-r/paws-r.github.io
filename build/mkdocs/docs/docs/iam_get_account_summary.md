<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_get_account_summary</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves information about IAM entity usage and IAM quotas in the Amazon Web Services account

### Description

Retrieves information about IAM entity usage and IAM quotas in the
Amazon Web Services account.

For information about IAM quotas, see [IAM and STS
quotas](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html)
in the *IAM User Guide*.

### Usage

    iam_get_account_summary()

### Value

A list with the following syntax:

    list(
      SummaryMap = list(
        123
      )
    )

### Examples

    ## Not run: 
    # The following command returns information about the IAM entity quotas
    # and usage in the current AWS account.
    svc$get_account_summary()

    ## End(Not run)
