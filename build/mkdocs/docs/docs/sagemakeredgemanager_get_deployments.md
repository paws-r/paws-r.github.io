<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemakeredgemanager_get_deployments</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Use to get the active deployments from a device

### Description

Use to get the active deployments from a device.

### Usage

    sagemakeredgemanager_get_deployments(DeviceName, DeviceFleetName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemakeredgemanager_get_deployments_:_DeviceName">DeviceName</code></td>
<td><p>[required] The unique name of the device you want to get the
configuration of active deployments from.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemakeredgemanager_get_deployments_:_DeviceFleetName">DeviceFleetName</code></td>
<td><p>[required] The name of the fleet that the device belongs
to.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Deployments = list(
        list(
          DeploymentName = "string",
          Type = "Model",
          FailureHandlingPolicy = "ROLLBACK_ON_FAILURE"|"DO_NOTHING",
          Definitions = list(
            list(
              ModelHandle = "string",
              S3Url = "string",
              Checksum = list(
                Type = "SHA1",
                Sum = "string"
              ),
              State = "DEPLOY"|"UNDEPLOY"
            )
          )
        )
      )
    )

### Request syntax

    svc$get_deployments(
      DeviceName = "string",
      DeviceFleetName = "string"
    )
