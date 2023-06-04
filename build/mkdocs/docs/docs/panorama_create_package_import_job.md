<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>panorama_create_package_import_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Imports a node package

### Description

Imports a node package.

### Usage

    panorama_create_package_import_job(ClientToken, InputConfig, JobTags,
      JobType, OutputConfig)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="panorama_create_package_import_job_:_ClientToken">ClientToken</code></td>
<td><p>[required] A client token for the package import job.</p></td>
</tr>
<tr class="even">
<td><code
id="panorama_create_package_import_job_:_InputConfig">InputConfig</code></td>
<td><p>[required] An input config for the package import job.</p></td>
</tr>
<tr class="odd">
<td><code
id="panorama_create_package_import_job_:_JobTags">JobTags</code></td>
<td><p>Tags for the package import job.</p></td>
</tr>
<tr class="even">
<td><code
id="panorama_create_package_import_job_:_JobType">JobType</code></td>
<td><p>[required] A job type for the package import job.</p></td>
</tr>
<tr class="odd">
<td><code
id="panorama_create_package_import_job_:_OutputConfig">OutputConfig</code></td>
<td><p>[required] An output config for the package import job.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      JobId = "string"
    )

### Request syntax

    svc$create_package_import_job(
      ClientToken = "string",
      InputConfig = list(
        PackageVersionInputConfig = list(
          S3Location = list(
            BucketName = "string",
            ObjectKey = "string",
            Region = "string"
          )
        )
      ),
      JobTags = list(
        list(
          ResourceType = "PACKAGE",
          Tags = list(
            "string"
          )
        )
      ),
      JobType = "NODE_PACKAGE_VERSION"|"MARKETPLACE_NODE_PACKAGE_VERSION",
      OutputConfig = list(
        PackageVersionOutputConfig = list(
          MarkLatest = TRUE|FALSE,
          PackageName = "string",
          PackageVersion = "string"
        )
      )
    )
