<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_delete_hub</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Delete a hub

### Description

Delete a hub.

Hub APIs are only callable through SageMaker Studio.

### Usage

    sagemaker_delete_hub(HubName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sagemaker_delete_hub_:_HubName">HubName</code></td>
<td><p>[required] The name of the hub to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_hub(
      HubName = "string"
    )
