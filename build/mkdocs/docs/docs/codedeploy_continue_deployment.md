<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codedeploy_continue_deployment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## For a blue/green deployment, starts the process of rerouting traffic from instances in the original environment to instances in the replacement environment without waiting for a specified wait time to elapse

### Description

For a blue/green deployment, starts the process of rerouting traffic
from instances in the original environment to instances in the
replacement environment without waiting for a specified wait time to
elapse. (Traffic rerouting, which is achieved by registering instances
in the replacement environment with the load balancer, can start as soon
as all instances have a status of Ready.)

### Usage

    codedeploy_continue_deployment(deploymentId, deploymentWaitType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codedeploy_continue_deployment_:_deploymentId">deploymentId</code></td>
<td><p>The unique ID of a blue/green deployment for which you want to
start rerouting traffic to the replacement environment.</p></td>
</tr>
<tr class="even">
<td><code
id="codedeploy_continue_deployment_:_deploymentWaitType">deploymentWaitType</code></td>
<td><p>The status of the deployment's waiting period.
<code>READY_WAIT</code> indicates that the deployment is ready to start
shifting traffic. <code>TERMINATION_WAIT</code> indicates that the
traffic is shifted, but the original target is not terminated.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$continue_deployment(
      deploymentId = "string",
      deploymentWaitType = "READY_WAIT"|"TERMINATION_WAIT"
    )
