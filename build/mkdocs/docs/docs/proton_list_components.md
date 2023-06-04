<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>proton_list_components</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List components with summary data

### Description

List components with summary data. You can filter the result list by
environment, service, or a single service instance.

For more information about components, see [Proton
components](https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html)
in the *Proton User Guide*.

### Usage

    proton_list_components(environmentName, maxResults, nextToken,
      serviceInstanceName, serviceName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="proton_list_components_:_environmentName">environmentName</code></td>
<td><p>The name of an environment for result list filtering. Proton
returns components associated with the environment or attached to
service instances running in it.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_list_components_:_maxResults">maxResults</code></td>
<td><p>The maximum number of components to list.</p></td>
</tr>
<tr class="odd">
<td><code id="proton_list_components_:_nextToken">nextToken</code></td>
<td><p>A token that indicates the location of the next component in the
array of components, after the list of components that was previously
requested.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_list_components_:_serviceInstanceName">serviceInstanceName</code></td>
<td><p>The name of a service instance for result list filtering. Proton
returns the component attached to the service instance, if any.</p></td>
</tr>
<tr class="odd">
<td><code
id="proton_list_components_:_serviceName">serviceName</code></td>
<td><p>The name of a service for result list filtering. Proton returns
components attached to service instances of the service.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      components = list(
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
          lastModifiedAt = as.POSIXct(
            "2015-01-01"
          ),
          name = "string",
          serviceInstanceName = "string",
          serviceName = "string"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_components(
      environmentName = "string",
      maxResults = 123,
      nextToken = "string",
      serviceInstanceName = "string",
      serviceName = "string"
    )
