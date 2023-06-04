<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>panorama_list_devices_jobs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of jobs

### Description

Returns a list of jobs.

### Usage

    panorama_list_devices_jobs(DeviceId, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="panorama_list_devices_jobs_:_DeviceId">DeviceId</code></td>
<td><p>Filter results by the job's target device ID.</p></td>
</tr>
<tr class="even">
<td><code
id="panorama_list_devices_jobs_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of device jobs to return in one page of
results.</p></td>
</tr>
<tr class="odd">
<td><code
id="panorama_list_devices_jobs_:_NextToken">NextToken</code></td>
<td><p>Specify the pagination token from a previous request to retrieve
the next page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DeviceJobs = list(
        list(
          CreatedTime = as.POSIXct(
            "2015-01-01"
          ),
          DeviceId = "string",
          DeviceName = "string",
          JobId = "string",
          JobType = "OTA"|"REBOOT"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_devices_jobs(
      DeviceId = "string",
      MaxResults = 123,
      NextToken = "string"
    )
