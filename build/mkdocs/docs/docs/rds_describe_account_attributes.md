<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_describe_account_attributes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all of the attributes for a customer account

### Description

Lists all of the attributes for a customer account. The attributes
include Amazon RDS quotas for the account, such as the number of DB
instances allowed. The description for a quota includes the quota name,
current usage toward that quota, and the quota's maximum value.

This command doesn't take any parameters.

### Usage

    rds_describe_account_attributes()

### Value

A list with the following syntax:

    list(
      AccountQuotas = list(
        list(
          AccountQuotaName = "string",
          Used = 123,
          Max = 123
        )
      )
    )

### Request syntax

    svc$describe_account_attributes()
