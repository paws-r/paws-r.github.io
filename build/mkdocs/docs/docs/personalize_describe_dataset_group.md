<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>personalize_describe_dataset_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the given dataset group

### Description

Describes the given dataset group. For more information on dataset
groups, see `create_dataset_group`.

### Usage

    personalize_describe_dataset_group(datasetGroupArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="personalize_describe_dataset_group_:_datasetGroupArn">datasetGroupArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the dataset group to
describe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      datasetGroup = list(
        name = "string",
        datasetGroupArn = "string",
        status = "string",
        roleArn = "string",
        kmsKeyArn = "string",
        creationDateTime = as.POSIXct(
          "2015-01-01"
        ),
        lastUpdatedDateTime = as.POSIXct(
          "2015-01-01"
        ),
        failureReason = "string",
        domain = "ECOMMERCE"|"VIDEO_ON_DEMAND"
      )
    )

### Request syntax

    svc$describe_dataset_group(
      datasetGroupArn = "string"
    )
