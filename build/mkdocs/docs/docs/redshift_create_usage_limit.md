<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_create_usage_limit</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a usage limit for a specified Amazon Redshift feature on a cluster

### Description

Creates a usage limit for a specified Amazon Redshift feature on a
cluster. The usage limit is identified by the returned usage limit
identifier.

### Usage

    redshift_create_usage_limit(ClusterIdentifier, FeatureType, LimitType,
      Amount, Period, BreachAction, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_create_usage_limit_:_ClusterIdentifier">ClusterIdentifier</code></td>
<td><p>[required] The identifier of the cluster that you want to limit
usage.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_create_usage_limit_:_FeatureType">FeatureType</code></td>
<td><p>[required] The Amazon Redshift feature that you want to
limit.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_create_usage_limit_:_LimitType">LimitType</code></td>
<td><p>[required] The type of limit. Depending on the feature type, this
can be based on a time duration or data size. If
<code>FeatureType</code> is <code>spectrum</code>, then
<code>LimitType</code> must be <code>data-scanned</code>. If
<code>FeatureType</code> is <code>concurrency-scaling</code>, then
<code>LimitType</code> must be <code>time</code>. If
<code>FeatureType</code> is <code>cross-region-datasharing</code>, then
<code>LimitType</code> must be <code>data-scanned</code>.</p></td>
</tr>
<tr class="even">
<td><code id="redshift_create_usage_limit_:_Amount">Amount</code></td>
<td><p>[required] The limit amount. If time-based, this amount is in
minutes. If data-based, this amount is in terabytes (TB). The value must
be a positive number.</p></td>
</tr>
<tr class="odd">
<td><code id="redshift_create_usage_limit_:_Period">Period</code></td>
<td><p>The time period that the amount applies to. A <code>weekly</code>
period begins on Sunday. The default is <code>monthly</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_create_usage_limit_:_BreachAction">BreachAction</code></td>
<td><p>The action that Amazon Redshift takes when the limit is reached.
The default is log. For more information about this parameter, see
UsageLimit.</p></td>
</tr>
<tr class="odd">
<td><code id="redshift_create_usage_limit_:_Tags">Tags</code></td>
<td><p>A list of tag instances.</p></td>
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

    svc$create_usage_limit(
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
