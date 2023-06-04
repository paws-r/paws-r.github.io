<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_delete_data_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a dataset

### Description

Deletes a dataset.

### Usage

    quicksight_delete_data_set(AwsAccountId, DataSetId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_delete_data_set_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The Amazon Web Services account ID.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_delete_data_set_:_DataSetId">DataSetId</code></td>
<td><p>[required] The ID for the dataset that you want to create. This
ID is unique per Amazon Web Services Region for each Amazon Web Services
account.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Arn = "string",
      DataSetId = "string",
      RequestId = "string",
      Status = 123
    )

### Request syntax

    svc$delete_data_set(
      AwsAccountId = "string",
      DataSetId = "string"
    )
