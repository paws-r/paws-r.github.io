<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3control_list_storage_lens_configurations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a list of Amazon S3 Storage Lens configurations

### Description

Gets a list of Amazon S3 Storage Lens configurations. For more
information about S3 Storage Lens, see [Assessing your storage activity
and usage with Amazon S3 Storage
Lens](https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage_lens.html)
in the *Amazon S3 User Guide*.

To use this action, you must have permission to perform the
`s3:ListStorageLensConfigurations` action. For more information, see
[Setting permissions to use Amazon S3 Storage
Lens](https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage_lens_iam_permissions.html)
in the *Amazon S3 User Guide*.

### Usage

    s3control_list_storage_lens_configurations(AccountId, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="s3control_list_storage_lens_configurations_:_AccountId">AccountId</code></td>
<td><p>[required] The account ID of the requester.</p></td>
</tr>
<tr class="even">
<td><code
id="s3control_list_storage_lens_configurations_:_NextToken">NextToken</code></td>
<td><p>A pagination token to request the next page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      StorageLensConfigurationList = list(
        list(
          Id = "string",
          StorageLensArn = "string",
          HomeRegion = "string",
          IsEnabled = TRUE|FALSE
        )
      )
    )

### Request syntax

    svc$list_storage_lens_configurations(
      AccountId = "string",
      NextToken = "string"
    )
