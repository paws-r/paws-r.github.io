<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshiftserverless_create_usage_limit</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a usage limit for a specified Amazon Redshift Serverless usage type

### Description

Creates a usage limit for a specified Amazon Redshift Serverless usage
type. The usage limit is identified by the returned usage limit
identifier.

### Usage

    redshiftserverless_create_usage_limit(amount, breachAction, period,
      resourceArn, usageType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshiftserverless_create_usage_limit_:_amount">amount</code></td>
<td><p>[required] The limit amount. If time-based, this amount is in
Redshift Processing Units (RPU) consumed per hour. If data-based, this
amount is in terabytes (TB) of data transferred between Regions in
cross-account sharing. The value must be a positive number.</p></td>
</tr>
<tr class="even">
<td><code
id="redshiftserverless_create_usage_limit_:_breachAction">breachAction</code></td>
<td><p>The action that Amazon Redshift Serverless takes when the limit
is reached. The default is log.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshiftserverless_create_usage_limit_:_period">period</code></td>
<td><p>The time period that the amount applies to. A weekly period
begins on Sunday. The default is monthly.</p></td>
</tr>
<tr class="even">
<td><code
id="redshiftserverless_create_usage_limit_:_resourceArn">resourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the Amazon Redshift
Serverless resource to create the usage limit for.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshiftserverless_create_usage_limit_:_usageType">usageType</code></td>
<td><p>[required] The type of Amazon Redshift Serverless usage to create
a usage limit for.</p></td>
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

    svc$create_usage_limit(
      amount = 123,
      breachAction = "log"|"emit-metric"|"deactivate",
      period = "daily"|"weekly"|"monthly",
      resourceArn = "string",
      usageType = "serverless-compute"|"cross-region-datasharing"
    )
