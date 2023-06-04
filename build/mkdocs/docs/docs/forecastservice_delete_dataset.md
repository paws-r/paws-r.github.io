<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>forecastservice_delete_dataset</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an Amazon Forecast dataset that was created using the CreateDataset operation

### Description

Deletes an Amazon Forecast dataset that was created using the
`create_dataset` operation. You can only delete datasets that have a
status of `ACTIVE` or `CREATE_FAILED`. To get the status use the
`describe_dataset` operation.

Forecast does not automatically update any dataset groups that contain
the deleted dataset. In order to update the dataset group, use the
`update_dataset_group` operation, omitting the deleted dataset's ARN.

### Usage

    forecastservice_delete_dataset(DatasetArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="forecastservice_delete_dataset_:_DatasetArn">DatasetArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the dataset to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_dataset(
      DatasetArn = "string"
    )
