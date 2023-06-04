<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_delete_hub_content</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Delete the contents of a hub

### Description

Delete the contents of a hub.

Hub APIs are only callable through SageMaker Studio.

### Usage

    sagemaker_delete_hub_content(HubName, HubContentType, HubContentName,
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
id="sagemaker_delete_hub_content_:_HubName">HubName</code></td>
<td><p>[required] The name of the hub that you want to delete content
in.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_delete_hub_content_:_HubContentType">HubContentType</code></td>
<td><p>[required] The type of content that you want to delete from a
hub.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_delete_hub_content_:_HubContentName">HubContentName</code></td>
<td><p>[required] The name of the content that you want to delete from a
hub.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_delete_hub_content_:_HubContentVersion">HubContentVersion</code></td>
<td><p>[required] The version of the content that you want to delete
from a hub.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_hub_content(
      HubName = "string",
      HubContentType = "Model"|"Notebook",
      HubContentName = "string",
      HubContentVersion = "string"
    )
