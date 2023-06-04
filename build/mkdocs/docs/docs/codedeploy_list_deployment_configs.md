<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codedeploy_list_deployment_configs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the deployment configurations with the IAM user or Amazon Web Services account

### Description

Lists the deployment configurations with the IAM user or Amazon Web
Services account.

### Usage

    codedeploy_list_deployment_configs(nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codedeploy_list_deployment_configs_:_nextToken">nextToken</code></td>
<td><p>An identifier returned from the previous
<code>list_deployment_configs</code> call. It can be used to return the
next set of deployment configurations in the list.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      deploymentConfigsList = list(
        "string"
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_deployment_configs(
      nextToken = "string"
    )
