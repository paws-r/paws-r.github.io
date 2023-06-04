<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>forecastservice_delete_dataset_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a dataset group created using the CreateDatasetGroup operation

### Description

Deletes a dataset group created using the `create_dataset_group`
operation. You can only delete dataset groups that have a status of
`ACTIVE`, `CREATE_FAILED`, or `UPDATE_FAILED`. To get the status, use
the `describe_dataset_group` operation.

This operation deletes only the dataset group, not the datasets in the
group.

### Usage

    forecastservice_delete_dataset_group(DatasetGroupArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="forecastservice_delete_dataset_group_:_DatasetGroupArn">DatasetGroupArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the dataset group to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_dataset_group(
      DatasetGroupArn = "string"
    )
