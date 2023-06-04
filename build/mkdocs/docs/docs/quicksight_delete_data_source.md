<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_delete_data_source</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the data source permanently

### Description

Deletes the data source permanently. This operation breaks all the
datasets that reference the deleted data source.

### Usage

    quicksight_delete_data_source(AwsAccountId, DataSourceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_delete_data_source_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The Amazon Web Services account ID.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_delete_data_source_:_DataSourceId">DataSourceId</code></td>
<td><p>[required] The ID of the data source. This ID is unique per
Amazon Web Services Region for each Amazon Web Services
account.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Arn = "string",
      DataSourceId = "string",
      RequestId = "string",
      Status = 123
    )

### Request syntax

    svc$delete_data_source(
      AwsAccountId = "string",
      DataSourceId = "string"
    )
