<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_list_devices</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## A list of devices

### Description

A list of devices.

### Usage

    sagemaker_list_devices(NextToken, MaxResults, LatestHeartbeatAfter,
      ModelName, DeviceFleetName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sagemaker_list_devices_:_NextToken">NextToken</code></td>
<td><p>The response from the last list when returning a list large
enough to need tokening.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_devices_:_MaxResults">MaxResults</code></td>
<td><p>Maximum number of results to select.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_devices_:_LatestHeartbeatAfter">LatestHeartbeatAfter</code></td>
<td><p>Select fleets where the job was updated after X</p></td>
</tr>
<tr class="even">
<td><code id="sagemaker_list_devices_:_ModelName">ModelName</code></td>
<td><p>A filter that searches devices that contains this name in any of
their models.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_devices_:_DeviceFleetName">DeviceFleetName</code></td>
<td><p>Filter for fleets containing this name in their device fleet
name.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DeviceSummaries = list(
        list(
          DeviceName = "string",
          DeviceArn = "string",
          Description = "string",
          DeviceFleetName = "string",
          IotThingName = "string",
          RegistrationTime = as.POSIXct(
            "2015-01-01"
          ),
          LatestHeartbeat = as.POSIXct(
            "2015-01-01"
          ),
          Models = list(
            list(
              ModelName = "string",
              ModelVersion = "string"
            )
          ),
          AgentVersion = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_devices(
      NextToken = "string",
      MaxResults = 123,
      LatestHeartbeatAfter = as.POSIXct(
        "2015-01-01"
      ),
      ModelName = "string",
      DeviceFleetName = "string"
    )
