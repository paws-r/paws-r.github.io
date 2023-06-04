<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_list_edge_deployment_plans</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all edge deployment plans

### Description

Lists all edge deployment plans.

### Usage

    sagemaker_list_edge_deployment_plans(NextToken, MaxResults,
      CreationTimeAfter, CreationTimeBefore, LastModifiedTimeAfter,
      LastModifiedTimeBefore, NameContains, DeviceFleetNameContains, SortBy,
      SortOrder)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_list_edge_deployment_plans_:_NextToken">NextToken</code></td>
<td><p>The response from the last list when returning a list large
enough to need tokening.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_edge_deployment_plans_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to select (50 by default).</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_edge_deployment_plans_:_CreationTimeAfter">CreationTimeAfter</code></td>
<td><p>Selects edge deployment plans created after this time.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_edge_deployment_plans_:_CreationTimeBefore">CreationTimeBefore</code></td>
<td><p>Selects edge deployment plans created before this time.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_edge_deployment_plans_:_LastModifiedTimeAfter">LastModifiedTimeAfter</code></td>
<td><p>Selects edge deployment plans that were last updated after this
time.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_edge_deployment_plans_:_LastModifiedTimeBefore">LastModifiedTimeBefore</code></td>
<td><p>Selects edge deployment plans that were last updated before this
time.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_edge_deployment_plans_:_NameContains">NameContains</code></td>
<td><p>Selects edge deployment plans with names containing this
name.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_edge_deployment_plans_:_DeviceFleetNameContains">DeviceFleetNameContains</code></td>
<td><p>Selects edge deployment plans with a device fleet name containing
this name.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_edge_deployment_plans_:_SortBy">SortBy</code></td>
<td><p>The column by which to sort the edge deployment plans. Can be one
of <code>NAME</code>, <code>DEVICEFLEETNAME</code>,
<code>CREATIONTIME</code>, <code>LASTMODIFIEDTIME</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_edge_deployment_plans_:_SortOrder">SortOrder</code></td>
<td><p>The direction of the sorting (ascending or descending).</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EdgeDeploymentPlanSummaries = list(
        list(
          EdgeDeploymentPlanArn = "string",
          EdgeDeploymentPlanName = "string",
          DeviceFleetName = "string",
          EdgeDeploymentSuccess = 123,
          EdgeDeploymentPending = 123,
          EdgeDeploymentFailed = 123,
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          LastModifiedTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_edge_deployment_plans(
      NextToken = "string",
      MaxResults = 123,
      CreationTimeAfter = as.POSIXct(
        "2015-01-01"
      ),
      CreationTimeBefore = as.POSIXct(
        "2015-01-01"
      ),
      LastModifiedTimeAfter = as.POSIXct(
        "2015-01-01"
      ),
      LastModifiedTimeBefore = as.POSIXct(
        "2015-01-01"
      ),
      NameContains = "string",
      DeviceFleetNameContains = "string",
      SortBy = "NAME"|"DEVICE_FLEET_NAME"|"CREATION_TIME"|"LAST_MODIFIED_TIME",
      SortOrder = "Ascending"|"Descending"
    )
