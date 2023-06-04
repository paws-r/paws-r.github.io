<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codedeploy_list_deployment_groups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the deployment groups for an application registered with the IAM user or Amazon Web Services account

### Description

Lists the deployment groups for an application registered with the IAM
user or Amazon Web Services account.

### Usage

    codedeploy_list_deployment_groups(applicationName, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codedeploy_list_deployment_groups_:_applicationName">applicationName</code></td>
<td><p>[required] The name of an CodeDeploy application associated with
the IAM user or Amazon Web Services account.</p></td>
</tr>
<tr class="even">
<td><code
id="codedeploy_list_deployment_groups_:_nextToken">nextToken</code></td>
<td><p>An identifier returned from the previous list deployment groups
call. It can be used to return the next set of deployment groups in the
list.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      applicationName = "string",
      deploymentGroups = list(
        "string"
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_deployment_groups(
      applicationName = "string",
      nextToken = "string"
    )
