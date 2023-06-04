<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emrserverless_get_dashboard_for_job_run</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a URL to access the job run dashboard

### Description

Returns a URL to access the job run dashboard. The generated URL is
valid for one hour, after which you must invoke the API again to
generate a new URL.

### Usage

    emrserverless_get_dashboard_for_job_run(applicationId, jobRunId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="emrserverless_get_dashboard_for_job_run_:_applicationId">applicationId</code></td>
<td><p>[required] The ID of the application.</p></td>
</tr>
<tr class="even">
<td><code
id="emrserverless_get_dashboard_for_job_run_:_jobRunId">jobRunId</code></td>
<td><p>[required] The ID of the job run.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      url = "string"
    )

### Request syntax

    svc$get_dashboard_for_job_run(
      applicationId = "string",
      jobRunId = "string"
    )
