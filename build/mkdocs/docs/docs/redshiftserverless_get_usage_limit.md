<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshiftserverless_get_usage_limit</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about a usage limit

### Description

Returns information about a usage limit.

### Usage

    redshiftserverless_get_usage_limit(usageLimitId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshiftserverless_get_usage_limit_:_usageLimitId">usageLimitId</code></td>
<td><p>[required] The unique identifier of the usage limit to return
information for.</p></td>
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

    svc$get_usage_limit(
      usageLimitId = "string"
    )
