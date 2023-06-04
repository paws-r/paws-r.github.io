<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_update_data_source_permissions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the permissions to a data source

### Description

Updates the permissions to a data source.

### Usage

    quicksight_update_data_source_permissions(AwsAccountId, DataSourceId,
      GrantPermissions, RevokePermissions)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_update_data_source_permissions_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The Amazon Web Services account ID.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_update_data_source_permissions_:_DataSourceId">DataSourceId</code></td>
<td><p>[required] The ID of the data source. This ID is unique per
Amazon Web Services Region for each Amazon Web Services
account.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_update_data_source_permissions_:_GrantPermissions">GrantPermissions</code></td>
<td><p>A list of resource permissions that you want to grant on the data
source.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_update_data_source_permissions_:_RevokePermissions">RevokePermissions</code></td>
<td><p>A list of resource permissions that you want to revoke on the
data source.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DataSourceArn = "string",
      DataSourceId = "string",
      RequestId = "string",
      Status = 123
    )

### Request syntax

    svc$update_data_source_permissions(
      AwsAccountId = "string",
      DataSourceId = "string",
      GrantPermissions = list(
        list(
          Principal = "string",
          Actions = list(
            "string"
          )
        )
      ),
      RevokePermissions = list(
        list(
          Principal = "string",
          Actions = list(
            "string"
          )
        )
      )
    )
