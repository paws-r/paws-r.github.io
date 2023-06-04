<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_update_hub</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Update a hub

### Description

Update a hub.

Hub APIs are only callable through SageMaker Studio.

### Usage

    sagemaker_update_hub(HubName, HubDescription, HubDisplayName,
      HubSearchKeywords)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sagemaker_update_hub_:_HubName">HubName</code></td>
<td><p>[required] The name of the hub to update.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_update_hub_:_HubDescription">HubDescription</code></td>
<td><p>A description of the updated hub.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_update_hub_:_HubDisplayName">HubDisplayName</code></td>
<td><p>The display name of the hub.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_update_hub_:_HubSearchKeywords">HubSearchKeywords</code></td>
<td><p>The searchable keywords for the hub.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      HubArn = "string"
    )

### Request syntax

    svc$update_hub(
      HubName = "string",
      HubDescription = "string",
      HubDisplayName = "string",
      HubSearchKeywords = list(
        "string"
      )
    )
