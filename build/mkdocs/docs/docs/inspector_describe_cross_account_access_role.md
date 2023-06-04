<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>inspector_describe_cross_account_access_role</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the IAM role that enables Amazon Inspector to access your AWS account

### Description

Describes the IAM role that enables Amazon Inspector to access your AWS
account.

### Usage

    inspector_describe_cross_account_access_role()

### Value

A list with the following syntax:

    list(
      roleArn = "string",
      valid = TRUE|FALSE,
      registeredAt = as.POSIXct(
        "2015-01-01"
      )
    )

### Examples

    ## Not run: 
    # Describes the IAM role that enables Amazon Inspector to access your AWS
    # account.
    svc$describe_cross_account_access_role()

    ## End(Not run)
