<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>panorama_list_node_from_template_jobs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of camera stream node jobs

### Description

Returns a list of camera stream node jobs.

### Usage

    panorama_list_node_from_template_jobs(MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="panorama_list_node_from_template_jobs_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of node from template jobs to return in one
page of results.</p></td>
</tr>
<tr class="even">
<td><code
id="panorama_list_node_from_template_jobs_:_NextToken">NextToken</code></td>
<td><p>Specify the pagination token from a previous request to retrieve
the next page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      NodeFromTemplateJobs = list(
        list(
          CreatedTime = as.POSIXct(
            "2015-01-01"
          ),
          JobId = "string",
          NodeName = "string",
          Status = "PENDING"|"SUCCEEDED"|"FAILED",
          StatusMessage = "string",
          TemplateType = "RTSP_CAMERA_STREAM"
        )
      )
    )

### Request syntax

    svc$list_node_from_template_jobs(
      MaxResults = 123,
      NextToken = "string"
    )
