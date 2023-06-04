<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_update_data_set_permissions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the permissions on a dataset

### Description

Updates the permissions on a dataset.

The permissions resource is
`arn:aws:quicksight:region:aws-account-id:dataset/data-set-id`.

### Usage

    quicksight_update_data_set_permissions(AwsAccountId, DataSetId,
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
id="quicksight_update_data_set_permissions_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The Amazon Web Services account ID.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_update_data_set_permissions_:_DataSetId">DataSetId</code></td>
<td><p>[required] The ID for the dataset whose permissions you want to
update. This ID is unique per Amazon Web Services Region for each Amazon
Web Services account.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_update_data_set_permissions_:_GrantPermissions">GrantPermissions</code></td>
<td><p>The resource permissions that you want to grant to the
dataset.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_update_data_set_permissions_:_RevokePermissions">RevokePermissions</code></td>
<td><p>The resource permissions that you want to revoke from the
dataset.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DataSetArn = "string",
      DataSetId = "string",
      RequestId = "string",
      Status = 123
    )

### Request syntax

    svc$update_data_set_permissions(
      AwsAccountId = "string",
      DataSetId = "string",
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
