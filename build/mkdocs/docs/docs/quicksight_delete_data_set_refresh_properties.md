<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_delete_data_set_refresh_properties</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the dataset refresh properties of the dataset

### Description

Deletes the dataset refresh properties of the dataset.

### Usage

    quicksight_delete_data_set_refresh_properties(AwsAccountId, DataSetId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_delete_data_set_refresh_properties_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The Amazon Web Services account ID.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_delete_data_set_refresh_properties_:_DataSetId">DataSetId</code></td>
<td><p>[required] The ID of the dataset.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RequestId = "string",
      Status = 123
    )

### Request syntax

    svc$delete_data_set_refresh_properties(
      AwsAccountId = "string",
      DataSetId = "string"
    )
