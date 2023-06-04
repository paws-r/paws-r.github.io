<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rekognition_distribute_dataset_entries</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Distributes the entries (images) in a training dataset across the training dataset and the test dataset for a project

### Description

Distributes the entries (images) in a training dataset across the
training dataset and the test dataset for a project.
`distribute_dataset_entries` moves 20% of the training dataset images to
the test dataset. An entry is a JSON Line that describes an image.

You supply the Amazon Resource Names (ARN) of a project's training
dataset and test dataset. The training dataset must contain the images
that you want to split. The test dataset must be empty. The datasets
must belong to the same project. To create training and test datasets
for a project, call `create_dataset`.

Distributing a dataset takes a while to complete. To check the status
call `describe_dataset`. The operation is complete when the `Status`
field for the training dataset and the test dataset is
`UPDATE_COMPLETE`. If the dataset split fails, the value of `Status` is
`UPDATE_FAILED`.

This operation requires permissions to perform the
`rekognition:DistributeDatasetEntries` action.

### Usage

    rekognition_distribute_dataset_entries(Datasets)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rekognition_distribute_dataset_entries_:_Datasets">Datasets</code></td>
<td><p>[required] The ARNS for the training dataset and test dataset
that you want to use. The datasets must belong to the same project. The
test dataset must be empty.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$distribute_dataset_entries(
      Datasets = list(
        list(
          Arn = "string"
        )
      )
    )
