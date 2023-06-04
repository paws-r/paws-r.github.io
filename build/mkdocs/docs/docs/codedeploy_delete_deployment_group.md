<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codedeploy_delete_deployment_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a deployment group

### Description

Deletes a deployment group.

### Usage

    codedeploy_delete_deployment_group(applicationName, deploymentGroupName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codedeploy_delete_deployment_group_:_applicationName">applicationName</code></td>
<td><p>[required] The name of an CodeDeploy application associated with
the IAM user or Amazon Web Services account.</p></td>
</tr>
<tr class="even">
<td><code
id="codedeploy_delete_deployment_group_:_deploymentGroupName">deploymentGroupName</code></td>
<td><p>[required] The name of a deployment group for the specified
application.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      hooksNotCleanedUp = list(
        list(
          name = "string",
          hook = "string"
        )
      )
    )

### Request syntax

    svc$delete_deployment_group(
      applicationName = "string",
      deploymentGroupName = "string"
    )
