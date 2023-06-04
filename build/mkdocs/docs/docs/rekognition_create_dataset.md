<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rekognition_create_dataset</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new Amazon Rekognition Custom Labels dataset

### Description

Creates a new Amazon Rekognition Custom Labels dataset. You can create a
dataset by using an Amazon Sagemaker format manifest file or by copying
an existing Amazon Rekognition Custom Labels dataset.

To create a training dataset for a project, specify `train` for the
value of `DatasetType`. To create the test dataset for a project,
specify `test` for the value of `DatasetType`.

The response from `create_dataset` is the Amazon Resource Name (ARN) for
the dataset. Creating a dataset takes a while to complete. Use
`describe_dataset` to check the current status. The dataset created
successfully if the value of `Status` is `CREATE_COMPLETE`.

To check if any non-terminal errors occurred, call
`list_dataset_entries` and check for the presence of `errors` lists in
the JSON Lines.

Dataset creation fails if a terminal error occurs (`Status` =
`CREATE_FAILED`). Currently, you can't access the terminal error
information.

For more information, see Creating dataset in the *Amazon Rekognition
Custom Labels Developer Guide*.

This operation requires permissions to perform the
`rekognition:CreateDataset` action. If you want to copy an existing
dataset, you also require permission to perform the
`rekognition:ListDatasetEntries` action.

### Usage

    rekognition_create_dataset(DatasetSource, DatasetType, ProjectArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rekognition_create_dataset_:_DatasetSource">DatasetSource</code></td>
<td><p>The source files for the dataset. You can specify the ARN of an
existing dataset or specify the Amazon S3 bucket location of an Amazon
Sagemaker format manifest file. If you don't specify
<code>datasetSource</code>, an empty dataset is created. To add labeled
images to the dataset, You can use the console or call
<code>update_dataset_entries</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="rekognition_create_dataset_:_DatasetType">DatasetType</code></td>
<td><p>[required] The type of the dataset. Specify <code>train</code> to
create a training dataset. Specify <code>test</code> to create a test
dataset.</p></td>
</tr>
<tr class="odd">
<td><code
id="rekognition_create_dataset_:_ProjectArn">ProjectArn</code></td>
<td><p>[required] The ARN of the Amazon Rekognition Custom Labels
project to which you want to asssign the dataset.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DatasetArn = "string"
    )

### Request syntax

    svc$create_dataset(
      DatasetSource = list(
        GroundTruthManifest = list(
          S3Object = list(
            Bucket = "string",
            Name = "string",
            Version = "string"
          )
        ),
        DatasetArn = "string"
      ),
      DatasetType = "TRAIN"|"TEST",
      ProjectArn = "string"
    )
