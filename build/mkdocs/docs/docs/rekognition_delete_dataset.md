<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rekognition_delete_dataset</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an existing Amazon Rekognition Custom Labels dataset

### Description

Deletes an existing Amazon Rekognition Custom Labels dataset. Deleting a
dataset might take while. Use `describe_dataset` to check the current
status. The dataset is still deleting if the value of `Status` is
`DELETE_IN_PROGRESS`. If you try to access the dataset after it is
deleted, you get a `ResourceNotFoundException` exception.

You can't delete a dataset while it is creating (`Status` =
`CREATE_IN_PROGRESS`) or if the dataset is updating (`Status` =
`UPDATE_IN_PROGRESS`).

This operation requires permissions to perform the
`rekognition:DeleteDataset` action.

### Usage

    rekognition_delete_dataset(DatasetArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rekognition_delete_dataset_:_DatasetArn">DatasetArn</code></td>
<td><p>[required] The ARN of the Amazon Rekognition Custom Labels
dataset that you want to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_dataset(
      DatasetArn = "string"
    )
