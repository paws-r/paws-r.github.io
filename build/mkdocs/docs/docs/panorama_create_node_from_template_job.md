<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>panorama_create_node_from_template_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a camera stream node

### Description

Creates a camera stream node.

### Usage

    panorama_create_node_from_template_job(JobTags, NodeDescription,
      NodeName, OutputPackageName, OutputPackageVersion, TemplateParameters,
      TemplateType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="panorama_create_node_from_template_job_:_JobTags">JobTags</code></td>
<td><p>Tags for the job.</p></td>
</tr>
<tr class="even">
<td><code
id="panorama_create_node_from_template_job_:_NodeDescription">NodeDescription</code></td>
<td><p>A description for the node.</p></td>
</tr>
<tr class="odd">
<td><code
id="panorama_create_node_from_template_job_:_NodeName">NodeName</code></td>
<td><p>[required] A name for the node.</p></td>
</tr>
<tr class="even">
<td><code
id="panorama_create_node_from_template_job_:_OutputPackageName">OutputPackageName</code></td>
<td><p>[required] An output package name for the node.</p></td>
</tr>
<tr class="odd">
<td><code
id="panorama_create_node_from_template_job_:_OutputPackageVersion">OutputPackageVersion</code></td>
<td><p>[required] An output package version for the node.</p></td>
</tr>
<tr class="even">
<td><code
id="panorama_create_node_from_template_job_:_TemplateParameters">TemplateParameters</code></td>
<td><p>[required] Template parameters for the node.</p></td>
</tr>
<tr class="odd">
<td><code
id="panorama_create_node_from_template_job_:_TemplateType">TemplateType</code></td>
<td><p>[required] The type of node.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      JobId = "string"
    )

### Request syntax

    svc$create_node_from_template_job(
      JobTags = list(
        list(
          ResourceType = "PACKAGE",
          Tags = list(
            "string"
          )
        )
      ),
      NodeDescription = "string",
      NodeName = "string",
      OutputPackageName = "string",
      OutputPackageVersion = "string",
      TemplateParameters = list(
        "string"
      ),
      TemplateType = "RTSP_CAMERA_STREAM"
    )
