<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>autoscalingplans_delete_scaling_plan</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified scaling plan

### Description

Deletes the specified scaling plan.

Deleting a scaling plan deletes the underlying ScalingInstruction for
all of the scalable resources that are covered by the plan.

If the plan has launched resources or has scaling activities in
progress, you must delete those resources separately.

### Usage

    autoscalingplans_delete_scaling_plan(ScalingPlanName,
      ScalingPlanVersion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="autoscalingplans_delete_scaling_plan_:_ScalingPlanName">ScalingPlanName</code></td>
<td><p>[required] The name of the scaling plan.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscalingplans_delete_scaling_plan_:_ScalingPlanVersion">ScalingPlanVersion</code></td>
<td><p>[required] The version number of the scaling plan. Currently, the
only valid value is <code>1</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_scaling_plan(
      ScalingPlanName = "string",
      ScalingPlanVersion = 123
    )
