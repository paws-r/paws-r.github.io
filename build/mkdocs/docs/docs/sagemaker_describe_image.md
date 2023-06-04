<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_describe_image</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes a SageMaker image

### Description

Describes a SageMaker image.

### Usage

    sagemaker_describe_image(ImageName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_describe_image_:_ImageName">ImageName</code></td>
<td><p>[required] The name of the image to describe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CreationTime = as.POSIXct(
        "2015-01-01"
      ),
      Description = "string",
      DisplayName = "string",
      FailureReason = "string",
      ImageArn = "string",
      ImageName = "string",
      ImageStatus = "CREATING"|"CREATED"|"CREATE_FAILED"|"UPDATING"|"UPDATE_FAILED"|"DELETING"|"DELETE_FAILED",
      LastModifiedTime = as.POSIXct(
        "2015-01-01"
      ),
      RoleArn = "string"
    )

### Request syntax

    svc$describe_image(
      ImageName = "string"
    )
