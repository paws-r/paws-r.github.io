<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>computeoptimizer_put_recommendation_preferences</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new recommendation preference or updates an existing recommendation preference, such as enhanced infrastructure metrics

### Description

Creates a new recommendation preference or updates an existing
recommendation preference, such as enhanced infrastructure metrics.

For more information, see [Activating enhanced infrastructure
metrics](https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html)
in the *Compute Optimizer User Guide*.

### Usage

    computeoptimizer_put_recommendation_preferences(resourceType, scope,
      enhancedInfrastructureMetrics, inferredWorkloadTypes,
      externalMetricsPreference)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="computeoptimizer_put_recommendation_preferences_:_resourceType">resourceType</code></td>
<td><p>[required] The target resource type of the recommendation
preference to create.</p>
<p>The <code>Ec2Instance</code> option encompasses standalone instances
and instances that are part of Auto Scaling groups. The
<code>AutoScalingGroup</code> option encompasses only instances that are
part of an Auto Scaling group.</p>
<p>The valid values for this parameter are <code>Ec2Instance</code> and
<code>AutoScalingGroup</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="computeoptimizer_put_recommendation_preferences_:_scope">scope</code></td>
<td><p>An object that describes the scope of the recommendation
preference to create.</p>
<p>You can create recommendation preferences at the organization level
(for management accounts of an organization only), account level, and
resource level. For more information, see <a
href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html">Activating
enhanced infrastructure metrics</a> in the <em>Compute Optimizer User
Guide</em>.</p>
<p>You cannot create recommendation preferences for Auto Scaling groups
at the organization and account levels. You can create recommendation
preferences for Auto Scaling groups only at the resource level by
specifying a scope name of <code>ResourceArn</code> and a scope value of
the Auto Scaling group Amazon Resource Name (ARN). This will configure
the preference for all instances that are part of the specified Auto
Scaling group. You also cannot create recommendation preferences at the
resource level for instances that are part of an Auto Scaling group. You
can create recommendation preferences at the resource level only for
standalone instances.</p></td>
</tr>
<tr class="odd">
<td><code
id="computeoptimizer_put_recommendation_preferences_:_enhancedInfrastructureMetrics">enhancedInfrastructureMetrics</code></td>
<td><p>The status of the enhanced infrastructure metrics recommendation
preference to create or update.</p>
<p>Specify the <code>Active</code> status to activate the preference, or
specify <code>Inactive</code> to deactivate the preference.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html">Enhanced
infrastructure metrics</a> in the <em>Compute Optimizer User
Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="computeoptimizer_put_recommendation_preferences_:_inferredWorkloadTypes">inferredWorkloadTypes</code></td>
<td><p>The status of the inferred workload types recommendation
preference to create or update.</p>
<p>The inferred workload type feature is active by default. To
deactivate it, create a recommendation preference.</p>
<p>Specify the <code>Inactive</code> status to deactivate the feature,
or specify <code>Active</code> to activate it.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/">Inferred
workload types</a> in the <em>Compute Optimizer User
Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="computeoptimizer_put_recommendation_preferences_:_externalMetricsPreference">externalMetricsPreference</code></td>
<td><p>The provider of the external metrics recommendation preference to
create or update.</p>
<p>Specify a valid provider in the <code>source</code> field to activate
the preference. To delete this preference, see the
<code>delete_recommendation_preferences</code> action.</p>
<p>This preference can only be set for the <code>Ec2Instance</code>
resource type.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/external-metrics-ingestion.html">External
metrics ingestion</a> in the <em>Compute Optimizer User
Guide</em>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_recommendation_preferences(
      resourceType = "Ec2Instance"|"AutoScalingGroup"|"EbsVolume"|"LambdaFunction"|"NotApplicable"|"EcsService",
      scope = list(
        name = "Organization"|"AccountId"|"ResourceArn",
        value = "string"
      ),
      enhancedInfrastructureMetrics = "Active"|"Inactive",
      inferredWorkloadTypes = "Active"|"Inactive",
      externalMetricsPreference = list(
        source = "Datadog"|"Dynatrace"|"NewRelic"|"Instana"
      )
    )
