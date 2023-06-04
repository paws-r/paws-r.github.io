<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_describe_hub</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describe a hub

### Description

Describe a hub.

Hub APIs are only callable through SageMaker Studio.

### Usage

    sagemaker_describe_hub(HubName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sagemaker_describe_hub_:_HubName">HubName</code></td>
<td><p>[required] The name of the hub to describe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      HubName = "string",
      HubArn = "string",
      HubDisplayName = "string",
      HubDescription = "string",
      HubSearchKeywords = list(
        "string"
      ),
      S3StorageConfig = list(
        S3OutputPath = "string"
      ),
      HubStatus = "InService"|"Creating"|"Updating"|"Deleting"|"CreateFailed"|"UpdateFailed"|"DeleteFailed",
      FailureReason = "string",
      CreationTime = as.POSIXct(
        "2015-01-01"
      ),
      LastModifiedTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$describe_hub(
      HubName = "string"
    )
