<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_describe_data_set_refresh_properties</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the refresh properties of a dataset

### Description

Describes the refresh properties of a dataset.

### Usage

    quicksight_describe_data_set_refresh_properties(AwsAccountId, DataSetId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_describe_data_set_refresh_properties_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The Amazon Web Services account ID.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_describe_data_set_refresh_properties_:_DataSetId">DataSetId</code></td>
<td><p>[required] The ID of the dataset.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RequestId = "string",
      Status = 123,
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

### Request syntax

    svc$describe_data_set_refresh_properties(
      AwsAccountId = "string",
      DataSetId = "string"
    )
