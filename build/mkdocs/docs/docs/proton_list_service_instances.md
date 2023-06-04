<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>proton_list_service_instances</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List service instances with summary data

### Description

List service instances with summary data. This action lists service
instances of all services in the Amazon Web Services account.

### Usage

    proton_list_service_instances(filters, maxResults, nextToken,
      serviceName, sortBy, sortOrder)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="proton_list_service_instances_:_filters">filters</code></td>
<td><p>An array of filtering criteria that scope down the result list.
By default, all service instances in the Amazon Web Services account are
returned.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_list_service_instances_:_maxResults">maxResults</code></td>
<td><p>The maximum number of service instances to list.</p></td>
</tr>
<tr class="odd">
<td><code
id="proton_list_service_instances_:_nextToken">nextToken</code></td>
<td><p>A token that indicates the location of the next service in the
array of service instances, after the list of service instances that was
previously requested.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_list_service_instances_:_serviceName">serviceName</code></td>
<td><p>The name of the service that the service instance belongs
to.</p></td>
</tr>
<tr class="odd">
<td><code id="proton_list_service_instances_:_sortBy">sortBy</code></td>
<td><p>The field that the result list is sorted by.</p>
<p>When you choose to sort by <code>serviceName</code>, service
instances within each service are sorted by service instance name.</p>
<p>Default: <code>serviceName</code></p></td>
</tr>
<tr class="even">
<td><code
id="proton_list_service_instances_:_sortOrder">sortOrder</code></td>
<td><p>Result list sort order.</p>
<p>Default: <code>ASCENDING</code></p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextToken = "string",
      serviceInstances = list(
        list(
          arn = "string",
          createdAt = as.POSIXct(
            "2015-01-01"
          ),
          deploymentStatus = "IN_PROGRESS"|"FAILED"|"SUCCEEDED"|"DELETE_IN_PROGRESS"|"DELETE_FAILED"|"DELETE_COMPLETE"|"CANCELLING"|"CANCELLED",
          deploymentStatusMessage = "string",
          environmentName = "string",
          lastDeploymentAttemptedAt = as.POSIXct(
            "2015-01-01"
          ),
          lastDeploymentSucceededAt = as.POSIXct(
            "2015-01-01"
          ),
          name = "string",
          serviceName = "string",
          templateMajorVersion = "string",
          templateMinorVersion = "string",
          templateName = "string"
        )
      )
    )

### Request syntax

    svc$list_service_instances(
      filters = list(
        list(
          key = "name"|"deploymentStatus"|"templateName"|"serviceName"|"deployedTemplateVersionStatus"|"environmentName"|"lastDeploymentAttemptedAtBefore"|"lastDeploymentAttemptedAtAfter"|"createdAtBefore"|"createdAtAfter",
          value = "string"
        )
      ),
      maxResults = 123,
      nextToken = "string",
      serviceName = "string",
      sortBy = "name"|"deploymentStatus"|"templateName"|"serviceName"|"environmentName"|"lastDeploymentAttemptedAt"|"createdAt",
      sortOrder = "ASCENDING"|"DESCENDING"
    )
