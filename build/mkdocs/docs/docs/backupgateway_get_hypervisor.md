<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backupgateway_get_hypervisor</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This action requests information about the specified hypervisor to which the gateway will connect

### Description

This action requests information about the specified hypervisor to which
the gateway will connect. A hypervisor is hardware, software, or
firmware that creates and manages virtual machines, and allocates
resources to them.

### Usage

    backupgateway_get_hypervisor(HypervisorArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backupgateway_get_hypervisor_:_HypervisorArn">HypervisorArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the
hypervisor.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Hypervisor = list(
        Host = "string",
        HypervisorArn = "string",
        KmsKeyArn = "string",
        LastSuccessfulMetadataSyncTime = as.POSIXct(
          "2015-01-01"
        ),
        LatestMetadataSyncStatus = "CREATED"|"RUNNING"|"FAILED"|"PARTIALLY_FAILED"|"SUCCEEDED",
        LatestMetadataSyncStatusMessage = "string",
        LogGroupArn = "string",
        Name = "string",
        State = "PENDING"|"ONLINE"|"OFFLINE"|"ERROR"
      )
    )

### Request syntax

    svc$get_hypervisor(
      HypervisorArn = "string"
    )
