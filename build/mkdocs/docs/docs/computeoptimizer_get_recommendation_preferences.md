<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>computeoptimizer_get_recommendation_preferences</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns existing recommendation preferences, such as enhanced infrastructure metrics

### Description

Returns existing recommendation preferences, such as enhanced
infrastructure metrics.

Use the `scope` parameter to specify which preferences to return. You
can specify to return preferences for an organization, a specific
account ID, or a specific EC2 instance or Auto Scaling group Amazon
Resource Name (ARN).

For more information, see [Activating enhanced infrastructure
metrics](https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html)
in the *Compute Optimizer User Guide*.

### Usage

    computeoptimizer_get_recommendation_preferences(resourceType, scope,
      nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="computeoptimizer_get_recommendation_preferences_:_resourceType">resourceType</code></td>
<td><p>[required] The target resource type of the recommendation
preference for which to return preferences.</p>
<p>The <code>Ec2Instance</code> option encompasses standalone instances
and instances that are part of Auto Scaling groups. The
<code>AutoScalingGroup</code> option encompasses only instances that are
part of an Auto Scaling group.</p>
<p>The valid values for this parameter are <code>Ec2Instance</code> and
<code>AutoScalingGroup</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="computeoptimizer_get_recommendation_preferences_:_scope">scope</code></td>
<td><p>An object that describes the scope of the recommendation
preference to return.</p>
<p>You can return recommendation preferences that are created at the
organization level (for management accounts of an organization only),
account level, and resource level. For more information, see <a
href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html">Activating
enhanced infrastructure metrics</a> in the <em>Compute Optimizer User
Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="computeoptimizer_get_recommendation_preferences_:_nextToken">nextToken</code></td>
<td><p>The token to advance to the next page of recommendation
preferences.</p></td>
</tr>
<tr class="even">
<td><code
id="computeoptimizer_get_recommendation_preferences_:_maxResults">maxResults</code></td>
<td><p>The maximum number of recommendation preferences to return with a
single request.</p>
<p>To retrieve the remaining results, make another request with the
returned <code>nextToken</code> value.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextToken = "string",
      recommendationPreferencesDetails = list(
        list(
          scope = list(
            name = "Organization"|"AccountId"|"ResourceArn",
            value = "string"
          ),
          resourceType = "Ec2Instance"|"AutoScalingGroup"|"EbsVolume"|"LambdaFunction"|"NotApplicable"|"EcsService",
          enhancedInfrastructureMetrics = "Active"|"Inactive",
          inferredWorkloadTypes = "Active"|"Inactive",
          externalMetricsPreference = list(
            source = "Datadog"|"Dynatrace"|"NewRelic"|"Instana"
          )
        )
      )
    )

### Request syntax

    svc$get_recommendation_preferences(
      resourceType = "Ec2Instance"|"AutoScalingGroup"|"EbsVolume"|"LambdaFunction"|"NotApplicable"|"EcsService",
      scope = list(
        name = "Organization"|"AccountId"|"ResourceArn",
        value = "string"
      ),
      nextToken = "string",
      maxResults = 123
    )
