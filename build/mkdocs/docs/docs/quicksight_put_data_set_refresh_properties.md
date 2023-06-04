<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_put_data_set_refresh_properties</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates or updates the dataset refresh properties for the dataset

### Description

Creates or updates the dataset refresh properties for the dataset.

### Usage

    quicksight_put_data_set_refresh_properties(AwsAccountId, DataSetId,
      DataSetRefreshProperties)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_put_data_set_refresh_properties_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The Amazon Web Services account ID.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_put_data_set_refresh_properties_:_DataSetId">DataSetId</code></td>
<td><p>[required] The ID of the dataset.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_put_data_set_refresh_properties_:_DataSetRefreshProperties">DataSetRefreshProperties</code></td>
<td><p>[required] The dataset refresh properties.</p></td>
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

    svc$put_data_set_refresh_properties(
      AwsAccountId = "string",
      DataSetId = "string",
      DataSetRefreshProperties = list(
        RefreshConfiguration = list(
          IncrementalRefresh = list(
            LookbackWindow = list(
              ColumnName = "string",
              Size = 123,
              SizeUnit = "HOUR"|"DAY"|"WEEK"
            )
          )
        )
      )
    )
