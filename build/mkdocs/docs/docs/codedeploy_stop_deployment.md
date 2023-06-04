<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codedeploy_stop_deployment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Attempts to stop an ongoing deployment

### Description

Attempts to stop an ongoing deployment.

### Usage

    codedeploy_stop_deployment(deploymentId, autoRollbackEnabled)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codedeploy_stop_deployment_:_deploymentId">deploymentId</code></td>
<td><p>[required] The unique ID of a deployment.</p></td>
</tr>
<tr class="even">
<td><code
id="codedeploy_stop_deployment_:_autoRollbackEnabled">autoRollbackEnabled</code></td>
<td><p>Indicates, when a deployment is stopped, whether instances that
have been updated should be rolled back to the previous version of the
application revision.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      status = "Pending"|"Succeeded",
      statusMessage = "string"
    )

### Request syntax

    svc$stop_deployment(
      deploymentId = "string",
      autoRollbackEnabled = TRUE|FALSE
    )
