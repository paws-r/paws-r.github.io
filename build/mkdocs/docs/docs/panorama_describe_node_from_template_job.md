<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>panorama_describe_node_from_template_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about a job to create a camera stream node

### Description

Returns information about a job to create a camera stream node.

### Usage

    panorama_describe_node_from_template_job(JobId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="panorama_describe_node_from_template_job_:_JobId">JobId</code></td>
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
      JobId = "string",
      JobTags = list(
        list(
          ResourceType = "PACKAGE",
          Tags = list(
            "string"
          )
        )
      ),
      LastUpdatedTime = as.POSIXct(
        "2015-01-01"
      ),
      NodeDescription = "string",
      NodeName = "string",
      OutputPackageName = "string",
      OutputPackageVersion = "string",
      Status = "PENDING"|"SUCCEEDED"|"FAILED",
      StatusMessage = "string",
      TemplateParameters = list(
        "string"
      ),
      TemplateType = "RTSP_CAMERA_STREAM"
    )

### Request syntax

    svc$describe_node_from_template_job(
      JobId = "string"
    )
