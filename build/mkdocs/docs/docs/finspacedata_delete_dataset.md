<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>finspacedata_delete_dataset</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a FinSpace Dataset

### Description

Deletes a FinSpace Dataset.

### Usage

    finspacedata_delete_dataset(clientToken, datasetId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="finspacedata_delete_dataset_:_clientToken">clientToken</code></td>
<td><p>A token that ensures idempotency. This token expires in 10
minutes.</p></td>
</tr>
<tr class="even">
<td><code
id="finspacedata_delete_dataset_:_datasetId">datasetId</code></td>
<td><p>[required] The unique identifier of the Dataset to be
deleted.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      datasetId = "string"
    )

### Request syntax

    svc$delete_dataset(
      clientToken = "string",
      datasetId = "string"
    )
