<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>proton_list_environments</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List environments with detail data summaries

### Description

List environments with detail data summaries.

### Usage

    proton_list_environments(environmentTemplates, maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="proton_list_environments_:_environmentTemplates">environmentTemplates</code></td>
<td><p>An array of the versions of the environment template.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_list_environments_:_maxResults">maxResults</code></td>
<td><p>The maximum number of environments to list.</p></td>
</tr>
<tr class="odd">
<td><code
id="proton_list_environments_:_nextToken">nextToken</code></td>
<td><p>A token that indicates the location of the next environment in
the array of environments, after the list of environments that was
previously requested.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      environments = list(
        list(
          arn = "string",
          componentRoleArn = "string",
          createdAt = as.POSIXct(
            "2015-01-01"
          ),
          deploymentStatus = "IN_PROGRESS"|"FAILED"|"SUCCEEDED"|"DELETE_IN_PROGRESS"|"DELETE_FAILED"|"DELETE_COMPLETE"|"CANCELLING"|"CANCELLED",
          deploymentStatusMessage = "string",
          description = "string",
          environmentAccountConnectionId = "string",
          environmentAccountId = "string",
          lastDeploymentAttemptedAt = as.POSIXct(
            "2015-01-01"
          ),
          lastDeploymentSucceededAt = as.POSIXct(
            "2015-01-01"
          ),
          name = "string",
          protonServiceRoleArn = "string",
          provisioning = "CUSTOMER_MANAGED",
          templateMajorVersion = "string",
          templateMinorVersion = "string",
          templateName = "string"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_environments(
      environmentTemplates = list(
        list(
          majorVersion = "string",
          templateName = "string"
        )
      ),
      maxResults = 123,
      nextToken = "string"
    )
