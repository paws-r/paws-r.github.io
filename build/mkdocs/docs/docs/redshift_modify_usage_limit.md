<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_modify_usage_limit</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies a usage limit in a cluster

### Description

Modifies a usage limit in a cluster. You can't modify the feature type
or period of a usage limit.

### Usage

    redshift_modify_usage_limit(UsageLimitId, Amount, BreachAction)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_modify_usage_limit_:_UsageLimitId">UsageLimitId</code></td>
<td><p>[required] The identifier of the usage limit to modify.</p></td>
</tr>
<tr class="even">
<td><code id="redshift_modify_usage_limit_:_Amount">Amount</code></td>
<td><p>The new limit amount. For more information about this parameter,
see UsageLimit.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_modify_usage_limit_:_BreachAction">BreachAction</code></td>
<td><p>The new action that Amazon Redshift takes when the limit is
reached. For more information about this parameter, see
UsageLimit.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      UsageLimitId = "string",
      ClusterIdentifier = "string",
      FeatureType = "spectrum"|"concurrency-scaling"|"cross-region-datasharing",
      LimitType = "time"|"data-scanned",
      Amount = 123,
      Period = "daily"|"weekly"|"monthly",
      BreachAction = "log"|"emit-metric"|"disable",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Request syntax

    svc$modify_usage_limit(
      UsageLimitId = "string",
      Amount = 123,
      BreachAction = "log"|"emit-metric"|"disable"
    )
