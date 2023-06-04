<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>panorama_create_job_for_devices</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a job to run on a device

### Description

Creates a job to run on a device. A job can update a device's software
or reboot it.

### Usage

    panorama_create_job_for_devices(DeviceIds, DeviceJobConfig, JobType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="panorama_create_job_for_devices_:_DeviceIds">DeviceIds</code></td>
<td><p>[required] ID of target device.</p></td>
</tr>
<tr class="even">
<td><code
id="panorama_create_job_for_devices_:_DeviceJobConfig">DeviceJobConfig</code></td>
<td><p>Configuration settings for a software update job.</p></td>
</tr>
<tr class="odd">
<td><code
id="panorama_create_job_for_devices_:_JobType">JobType</code></td>
<td><p>[required] The type of job to run.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Jobs = list(
        list(
          DeviceId = "string",
          JobId = "string"
        )
      )
    )

### Request syntax

    svc$create_job_for_devices(
      DeviceIds = list(
        "string"
      ),
      DeviceJobConfig = list(
        OTAJobConfig = list(
          AllowMajorVersionUpdate = TRUE|FALSE,
          ImageVersion = "string"
        )
      ),
      JobType = "OTA"|"REBOOT"
    )
