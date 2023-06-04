<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>panorama_describe_package_import_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about a package import job

### Description

Returns information about a package import job.

### Usage

    panorama_describe_package_import_job(JobId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="panorama_describe_package_import_job_:_JobId">JobId</code></td>
<td><p>[required] The job's ID.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ClientToken = "string",
      CreatedTime = as.POSIXct(
        "2015-01-01"
      ),
      InputConfig = list(
        PackageVersionInputConfig = list(
          S3Location = list(
            BucketName = "string",
            ObjectKey = "string",
            Region = "string"
          )
        )
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
      JobType = "NODE_PACKAGE_VERSION"|"MARKETPLACE_NODE_PACKAGE_VERSION",
      LastUpdatedTime = as.POSIXct(
        "2015-01-01"
      ),
      Output = list(
        OutputS3Location = list(
          BucketName = "string",
          ObjectKey = "string"
        ),
        PackageId = "string",
        PackageVersion = "string",
        PatchVersion = "string"
      ),
      OutputConfig = list(
        PackageVersionOutputConfig = list(
          MarkLatest = TRUE|FALSE,
          PackageName = "string",
          PackageVersion = "string"
        )
      ),
      Status = "PENDING"|"SUCCEEDED"|"FAILED",
      StatusMessage = "string"
    )

### Request syntax

    svc$describe_package_import_job(
      JobId = "string"
    )
