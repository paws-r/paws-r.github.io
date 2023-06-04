<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_describe_hub_content</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describe the content of a hub

### Description

Describe the content of a hub.

Hub APIs are only callable through SageMaker Studio.

### Usage

    sagemaker_describe_hub_content(HubName, HubContentType, HubContentName,
      HubContentVersion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_describe_hub_content_:_HubName">HubName</code></td>
<td><p>[required] The name of the hub that contains the content to
describe.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_describe_hub_content_:_HubContentType">HubContentType</code></td>
<td><p>[required] The type of content in the hub.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_describe_hub_content_:_HubContentName">HubContentName</code></td>
<td><p>[required] The name of the content to describe.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_describe_hub_content_:_HubContentVersion">HubContentVersion</code></td>
<td><p>The version of the content to describe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      HubContentName = "string",
      HubContentArn = "string",
      HubContentVersion = "string",
      HubContentType = "Model"|"Notebook",
      DocumentSchemaVersion = "string",
      HubName = "string",
      HubArn = "string",
      HubContentDisplayName = "string",
      HubContentDescription = "string",
      HubContentMarkdown = "string",
      HubContentDocument = "string",
      HubContentSearchKeywords = list(
        "string"
      ),
      HubContentDependencies = list(
        list(
          DependencyOriginPath = "string",
          DependencyCopyPath = "string"
        )
      ),
      HubContentStatus = "Available"|"Importing"|"Deleting"|"ImportFailed"|"DeleteFailed",
      FailureReason = "string",
      CreationTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$describe_hub_content(
      HubName = "string",
      HubContentType = "Model"|"Notebook",
      HubContentName = "string",
      HubContentVersion = "string"
    )
