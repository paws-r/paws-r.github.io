<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_describe_image_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes a version of a SageMaker image

### Description

Describes a version of a SageMaker image.

### Usage

    sagemaker_describe_image_version(ImageName, Version, Alias)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_describe_image_version_:_ImageName">ImageName</code></td>
<td><p>[required] The name of the image.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_describe_image_version_:_Version">Version</code></td>
<td><p>The version of the image. If not specified, the latest version is
described.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_describe_image_version_:_Alias">Alias</code></td>
<td><p>The alias of the image version.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      BaseImage = "string",
      ContainerImage = "string",
      CreationTime = as.POSIXct(
        "2015-01-01"
      ),
      FailureReason = "string",
      ImageArn = "string",
      ImageVersionArn = "string",
      ImageVersionStatus = "CREATING"|"CREATED"|"CREATE_FAILED"|"DELETING"|"DELETE_FAILED",
      LastModifiedTime = as.POSIXct(
        "2015-01-01"
      ),
      Version = 123,
      VendorGuidance = "NOT_PROVIDED"|"STABLE"|"TO_BE_ARCHIVED"|"ARCHIVED",
      JobType = "TRAINING"|"INFERENCE"|"NOTEBOOK_KERNEL",
      MLFramework = "string",
      ProgrammingLang = "string",
      Processor = "CPU"|"GPU",
      Horovod = TRUE|FALSE,
      ReleaseNotes = "string"
    )

### Request syntax

    svc$describe_image_version(
      ImageName = "string",
      Version = 123,
      Alias = "string"
    )
