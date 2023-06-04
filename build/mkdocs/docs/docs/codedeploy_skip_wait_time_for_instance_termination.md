<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codedeploy_skip_wait_time_for_instance_termination</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## In a blue/green deployment, overrides any specified wait time and starts terminating instances immediately after the traffic routing is complete

### Description

In a blue/green deployment, overrides any specified wait time and starts
terminating instances immediately after the traffic routing is complete.

### Usage

    codedeploy_skip_wait_time_for_instance_termination(deploymentId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codedeploy_skip_wait_time_for_instance_termination_:_deploymentId">deploymentId</code></td>
<td><p>The unique ID of a blue/green deployment for which you want to
skip the instance termination wait time.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$skip_wait_time_for_instance_termination(
      deploymentId = "string"
    )
