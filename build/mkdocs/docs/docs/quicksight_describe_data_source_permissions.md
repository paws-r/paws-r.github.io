<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_describe_data_source_permissions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the resource permissions for a data source

### Description

Describes the resource permissions for a data source.

### Usage

    quicksight_describe_data_source_permissions(AwsAccountId, DataSourceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_describe_data_source_permissions_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The Amazon Web Services account ID.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_describe_data_source_permissions_:_DataSourceId">DataSourceId</code></td>
<td><p>[required] The ID of the data source. This ID is unique per
Amazon Web Services Region for each Amazon Web Services
account.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DataSourceArn = "string",
      DataSourceId = "string",
      Permissions = list(
        list(
          Principal = "string",
          Actions = list(
            "string"
          )
        )
      ),
      RequestId = "string",
      Status = 123
    )

### Request syntax

    svc$describe_data_source_permissions(
      AwsAccountId = "string",
      DataSourceId = "string"
    )
