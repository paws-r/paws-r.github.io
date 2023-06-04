<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>computeoptimizer_get_effective_recommendation_preferences</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the recommendation preferences that are in effect for a given resource, such as enhanced infrastructure metrics

### Description

Returns the recommendation preferences that are in effect for a given
resource, such as enhanced infrastructure metrics. Considers all
applicable preferences that you might have set at the resource, account,
and organization level.

When you create a recommendation preference, you can set its status to
`Active` or `Inactive`. Use this action to view the recommendation
preferences that are in effect, or `Active`.

### Usage

    computeoptimizer_get_effective_recommendation_preferences(resourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="computeoptimizer_get_effective_recommendation_preferences_:_resourceArn">resourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource for
which to confirm effective recommendation preferences. Only EC2 instance
and Auto Scaling group ARNs are currently supported.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      enhancedInfrastructureMetrics = "Active"|"Inactive",
      externalMetricsPreference = list(
        source = "Datadog"|"Dynatrace"|"NewRelic"|"Instana"
      )
    )

### Request syntax

    svc$get_effective_recommendation_preferences(
      resourceArn = "string"
    )
