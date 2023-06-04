<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>forecastservice_update_dataset_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Replaces the datasets in a dataset group with the specified datasets

### Description

Replaces the datasets in a dataset group with the specified datasets.

The `Status` of the dataset group must be `ACTIVE` before you can use
the dataset group to create a predictor. Use the
`describe_dataset_group` operation to get the status.

### Usage

    forecastservice_update_dataset_group(DatasetGroupArn, DatasetArns)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="forecastservice_update_dataset_group_:_DatasetGroupArn">DatasetGroupArn</code></td>
<td><p>[required] The ARN of the dataset group.</p></td>
</tr>
<tr class="even">
<td><code
id="forecastservice_update_dataset_group_:_DatasetArns">DatasetArns</code></td>
<td><p>[required] An array of the Amazon Resource Names (ARNs) of the
datasets to add to the dataset group.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_dataset_group(
      DatasetGroupArn = "string",
      DatasetArns = list(
        "string"
      )
    )
