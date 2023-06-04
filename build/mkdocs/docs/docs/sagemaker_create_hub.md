<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_create_hub</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Create a hub

### Description

Create a hub.

Hub APIs are only callable through SageMaker Studio.

### Usage

    sagemaker_create_hub(HubName, HubDescription, HubDisplayName,
      HubSearchKeywords, S3StorageConfig, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sagemaker_create_hub_:_HubName">HubName</code></td>
<td><p>[required] The name of the hub to create.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_hub_:_HubDescription">HubDescription</code></td>
<td><p>[required] A description of the hub.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_hub_:_HubDisplayName">HubDisplayName</code></td>
<td><p>The display name of the hub.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_hub_:_HubSearchKeywords">HubSearchKeywords</code></td>
<td><p>The searchable keywords for the hub.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_hub_:_S3StorageConfig">S3StorageConfig</code></td>
<td><p>The Amazon S3 storage configuration for the hub.</p></td>
</tr>
<tr class="even">
<td><code id="sagemaker_create_hub_:_Tags">Tags</code></td>
<td><p>Any tags to associate with the hub.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      HubArn = "string"
    )

### Request syntax

    svc$create_hub(
      HubName = "string",
      HubDescription = "string",
      HubDisplayName = "string",
      HubSearchKeywords = list(
        "string"
      ),
      S3StorageConfig = list(
        S3OutputPath = "string"
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
