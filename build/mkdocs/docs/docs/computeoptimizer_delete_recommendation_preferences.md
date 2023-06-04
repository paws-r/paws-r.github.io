<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>computeoptimizer_delete_recommendation_preferences</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a recommendation preference, such as enhanced infrastructure metrics

### Description

Deletes a recommendation preference, such as enhanced infrastructure
metrics.

For more information, see [Activating enhanced infrastructure
metrics](https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html)
in the *Compute Optimizer User Guide*.

### Usage

    computeoptimizer_delete_recommendation_preferences(resourceType, scope,
      recommendationPreferenceNames)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="computeoptimizer_delete_recommendation_preferences_:_resourceType">resourceType</code></td>
<td><p>[required] The target resource type of the recommendation
preference to delete.</p>
<p>The <code>Ec2Instance</code> option encompasses standalone instances
and instances that are part of Auto Scaling groups. The
<code>AutoScalingGroup</code> option encompasses only instances that are
part of an Auto Scaling group.</p>
<p>The valid values for this parameter are <code>Ec2Instance</code> and
<code>AutoScalingGroup</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="computeoptimizer_delete_recommendation_preferences_:_scope">scope</code></td>
<td><p>An object that describes the scope of the recommendation
preference to delete.</p>
<p>You can delete recommendation preferences that are created at the
organization level (for management accounts of an organization only),
account level, and resource level. For more information, see <a
href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html">Activating
enhanced infrastructure metrics</a> in the <em>Compute Optimizer User
Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="computeoptimizer_delete_recommendation_preferences_:_recommendationPreferenceNames">recommendationPreferenceNames</code></td>
<td><p>[required] The name of the recommendation preference to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_recommendation_preferences(
      resourceType = "Ec2Instance"|"AutoScalingGroup"|"EbsVolume"|"LambdaFunction"|"NotApplicable"|"EcsService",
      scope = list(
        name = "Organization"|"AccountId"|"ResourceArn",
        value = "string"
      ),
      recommendationPreferenceNames = list(
        "EnhancedInfrastructureMetrics"|"InferredWorkloadTypes"|"ExternalMetricsPreference"
      )
    )
