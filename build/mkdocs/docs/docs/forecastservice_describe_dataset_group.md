<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>forecastservice_describe_dataset_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes a dataset group created using the CreateDatasetGroup operation

### Description

Describes a dataset group created using the `create_dataset_group`
operation.

In addition to listing the parameters provided in the
`create_dataset_group` request, this operation includes the following
properties:

-   `DatasetArns` - The datasets belonging to the group.

-   `CreationTime`

-   `LastModificationTime`

-   `Status`

### Usage

    forecastservice_describe_dataset_group(DatasetGroupArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="forecastservice_describe_dataset_group_:_DatasetGroupArn">DatasetGroupArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the dataset
group.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DatasetGroupName = "string",
      DatasetGroupArn = "string",
      DatasetArns = list(
        "string"
      ),
      Domain = "RETAIL"|"CUSTOM"|"INVENTORY_PLANNING"|"EC2_CAPACITY"|"WORK_FORCE"|"WEB_TRAFFIC"|"METRICS",
      Status = "string",
      CreationTime = as.POSIXct(
        "2015-01-01"
      ),
      LastModificationTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$describe_dataset_group(
      DatasetGroupArn = "string"
    )
