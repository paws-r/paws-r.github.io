<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshiftserverless_update_usage_limit</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Update a usage limit in Amazon Redshift Serverless

### Description

Update a usage limit in Amazon Redshift Serverless. You can't update the
usage type or period of a usage limit.

### Usage

    redshiftserverless_update_usage_limit(amount, breachAction,
      usageLimitId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshiftserverless_update_usage_limit_:_amount">amount</code></td>
<td><p>The new limit amount. If time-based, this amount is in Redshift
Processing Units (RPU) consumed per hour. If data-based, this amount is
in terabytes (TB) of data transferred between Regions in cross-account
sharing. The value must be a positive number.</p></td>
</tr>
<tr class="even">
<td><code
id="redshiftserverless_update_usage_limit_:_breachAction">breachAction</code></td>
<td><p>The new action that Amazon Redshift Serverless takes when the
limit is reached.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshiftserverless_update_usage_limit_:_usageLimitId">usageLimitId</code></td>
<td><p>[required] The identifier of the usage limit to update.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      usageLimit = list(
        amount = 123,
        breachAction = "log"|"emit-metric"|"deactivate",
        period = "daily"|"weekly"|"monthly",
        resourceArn = "string",
        usageLimitArn = "string",
        usageLimitId = "string",
        usageType = "serverless-compute"|"cross-region-datasharing"
      )
    )

### Request syntax

    svc$update_usage_limit(
      amount = 123,
      breachAction = "log"|"emit-metric"|"deactivate",
      usageLimitId = "string"
    )
