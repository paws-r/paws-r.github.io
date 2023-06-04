<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>comprehend_describe_dataset</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about the dataset that you specify

### Description

Returns information about the dataset that you specify. For more
information about datasets, see [Flywheel
overview](https://docs.aws.amazon.com/comprehend/latest/dg/flywheels-about.html)
in the *Amazon Comprehend Developer Guide*.

### Usage

    comprehend_describe_dataset(DatasetArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="comprehend_describe_dataset_:_DatasetArn">DatasetArn</code></td>
<td><p>[required] The ARN of the dataset.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DatasetProperties = list(
        DatasetArn = "string",
        DatasetName = "string",
        DatasetType = "TRAIN"|"TEST",
        DatasetS3Uri = "string",
        Description = "string",
        Status = "CREATING"|"COMPLETED"|"FAILED",
        Message = "string",
        NumberOfDocuments = 123,
        CreationTime = as.POSIXct(
          "2015-01-01"
        ),
        EndTime = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$describe_dataset(
      DatasetArn = "string"
    )
