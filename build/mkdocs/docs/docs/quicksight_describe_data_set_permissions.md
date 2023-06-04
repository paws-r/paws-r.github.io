<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_describe_data_set_permissions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the permissions on a dataset

### Description

Describes the permissions on a dataset.

The permissions resource is
`arn:aws:quicksight:region:aws-account-id:dataset/data-set-id`.

### Usage

    quicksight_describe_data_set_permissions(AwsAccountId, DataSetId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_describe_data_set_permissions_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The Amazon Web Services account ID.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_describe_data_set_permissions_:_DataSetId">DataSetId</code></td>
<td><p>[required] The ID for the dataset that you want to create. This
ID is unique per Amazon Web Services Region for each Amazon Web Services
account.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DataSetArn = "string",
      DataSetId = "string",
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

    svc$describe_data_set_permissions(
      AwsAccountId = "string",
      DataSetId = "string"
    )
