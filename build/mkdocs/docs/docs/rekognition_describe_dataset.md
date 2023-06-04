<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rekognition_describe_dataset</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes an Amazon Rekognition Custom Labels dataset

### Description

Describes an Amazon Rekognition Custom Labels dataset. You can get
information such as the current status of a dataset and statistics about
the images and labels in a dataset.

This operation requires permissions to perform the
`rekognition:DescribeDataset` action.

### Usage

    rekognition_describe_dataset(DatasetArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rekognition_describe_dataset_:_DatasetArn">DatasetArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the dataset that you
want to describe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DatasetDescription = list(
        CreationTimestamp = as.POSIXct(
          "2015-01-01"
        ),
        LastUpdatedTimestamp = as.POSIXct(
          "2015-01-01"
        ),
        Status = "CREATE_IN_PROGRESS"|"CREATE_COMPLETE"|"CREATE_FAILED"|"UPDATE_IN_PROGRESS"|"UPDATE_COMPLETE"|"UPDATE_FAILED"|"DELETE_IN_PROGRESS",
        StatusMessage = "string",
        StatusMessageCode = "SUCCESS"|"SERVICE_ERROR"|"CLIENT_ERROR",
        DatasetStats = list(
          LabeledEntries = 123,
          TotalEntries = 123,
          TotalLabels = 123,
          ErrorEntries = 123
        )
      )
    )

### Request syntax

    svc$describe_dataset(
      DatasetArn = "string"
    )
