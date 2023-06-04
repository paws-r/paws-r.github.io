<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codedeploy_delete_deployment_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a deployment configuration

### Description

Deletes a deployment configuration.

A deployment configuration cannot be deleted if it is currently in use.
Predefined configurations cannot be deleted.

### Usage

    codedeploy_delete_deployment_config(deploymentConfigName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codedeploy_delete_deployment_config_:_deploymentConfigName">deploymentConfigName</code></td>
<td><p>[required] The name of a deployment configuration associated with
the IAM user or Amazon Web Services account.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_deployment_config(
      deploymentConfigName = "string"
    )
