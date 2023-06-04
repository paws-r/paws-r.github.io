<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>panorama_describe_device_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about a device job

### Description

Returns information about a device job.

### Usage

    panorama_describe_device_job(JobId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="panorama_describe_device_job_:_JobId">JobId</code></td>
<td><p>[required] The job's ID.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CreatedTime = as.POSIXct(
        "2015-01-01"
      ),
      DeviceArn = "string",
      DeviceId = "string",
      DeviceName = "string",
      DeviceType = "PANORAMA_APPLIANCE_DEVELOPER_KIT"|"PANORAMA_APPLIANCE",
      ImageVersion = "string",
      JobId = "string",
      JobType = "OTA"|"REBOOT",
      Status = "PENDING"|"IN_PROGRESS"|"VERIFYING"|"REBOOTING"|"DOWNLOADING"|"COMPLETED"|"FAILED"
    )

### Request syntax

    svc$describe_device_job(
      JobId = "string"
    )
