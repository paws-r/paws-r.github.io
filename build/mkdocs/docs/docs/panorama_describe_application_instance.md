<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>panorama_describe_application_instance</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about an application instance on a device

### Description

Returns information about an application instance on a device.

### Usage

    panorama_describe_application_instance(ApplicationInstanceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="panorama_describe_application_instance_:_ApplicationInstanceId">ApplicationInstanceId</code></td>
<td><p>[required] The application instance's ID.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ApplicationInstanceId = "string",
      ApplicationInstanceIdToReplace = "string",
      Arn = "string",
      CreatedTime = as.POSIXct(
        "2015-01-01"
      ),
      DefaultRuntimeContextDevice = "string",
      DefaultRuntimeContextDeviceName = "string",
      Description = "string",
      HealthStatus = "RUNNING"|"ERROR"|"NOT_AVAILABLE",
      LastUpdatedTime = as.POSIXct(
        "2015-01-01"
      ),
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
      RuntimeRoleArn = "string",
      Status = "DEPLOYMENT_PENDING"|"DEPLOYMENT_REQUESTED"|"DEPLOYMENT_IN_PROGRESS"|"DEPLOYMENT_ERROR"|"DEPLOYMENT_SUCCEEDED"|"REMOVAL_PENDING"|"REMOVAL_REQUESTED"|"REMOVAL_IN_PROGRESS"|"REMOVAL_FAILED"|"REMOVAL_SUCCEEDED"|"DEPLOYMENT_FAILED",
      StatusDescription = "string",
      Tags = list(
        "string"
      )
    )

### Request syntax

    svc$describe_application_instance(
      ApplicationInstanceId = "string"
    )
