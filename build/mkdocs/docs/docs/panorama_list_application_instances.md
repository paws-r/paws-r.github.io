<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>panorama_list_application_instances</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of application instances

### Description

Returns a list of application instances.

### Usage

    panorama_list_application_instances(DeviceId, MaxResults, NextToken,
      StatusFilter)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="panorama_list_application_instances_:_DeviceId">DeviceId</code></td>
<td><p>The application instances' device ID.</p></td>
</tr>
<tr class="even">
<td><code
id="panorama_list_application_instances_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of application instances to return in one page
of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="panorama_list_application_instances_:_NextToken">NextToken</code></td>
<td><p>Specify the pagination token from a previous request to retrieve
the next page of results.</p></td>
</tr>
<tr class="even">
<td><code
id="panorama_list_application_instances_:_StatusFilter">StatusFilter</code></td>
<td><p>Only include instances with a specific status.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ApplicationInstances = list(
        list(
          ApplicationInstanceId = "string",
          Arn = "string",
          CreatedTime = as.POSIXct(
            "2015-01-01"
          ),
          DefaultRuntimeContextDevice = "string",
          DefaultRuntimeContextDeviceName = "string",
          Description = "string",
          HealthStatus = "RUNNING"|"ERROR"|"NOT_AVAILABLE",
          Name = "string",
          RuntimeContextStates = list(
            list(
              DesiredState = "RUNNING"|"STOPPED"|"REMOVED",
              DeviceReportedStatus = "STOPPING"|"STOPPED"|"STOP_ERROR"|"REMOVAL_FAILED"|"REMOVAL_IN_PROGRESS"|"STARTING"|"RUNNING"|"INSTALL_ERROR"|"LAUNCHED"|"LAUNCH_ERROR"|"INSTALL_IN_PROGRESS",
              DeviceReportedTime = as.POSIXct(
                "2015-01-01"
              ),
              RuntimeContextName = "string"
            )
          ),
          Status = "DEPLOYMENT_PENDING"|"DEPLOYMENT_REQUESTED"|"DEPLOYMENT_IN_PROGRESS"|"DEPLOYMENT_ERROR"|"DEPLOYMENT_SUCCEEDED"|"REMOVAL_PENDING"|"REMOVAL_REQUESTED"|"REMOVAL_IN_PROGRESS"|"REMOVAL_FAILED"|"REMOVAL_SUCCEEDED"|"DEPLOYMENT_FAILED",
          StatusDescription = "string",
          Tags = list(
            "string"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_application_instances(
      DeviceId = "string",
      MaxResults = 123,
      NextToken = "string",
      StatusFilter = "DEPLOYMENT_SUCCEEDED"|"DEPLOYMENT_ERROR"|"REMOVAL_SUCCEEDED"|"REMOVAL_FAILED"|"PROCESSING_DEPLOYMENT"|"PROCESSING_REMOVAL"|"DEPLOYMENT_FAILED"
    )
