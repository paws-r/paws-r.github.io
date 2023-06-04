<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3control_delete_public_access_block</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes the PublicAccessBlock configuration for an Amazon Web Services account

### Description

Removes the `PublicAccessBlock` configuration for an Amazon Web Services
account. For more information, see [Using Amazon S3 block public
access](https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-control-block-public-access.html).

Related actions include:

-   `get_public_access_block`

-   `put_public_access_block`

### Usage

    s3control_delete_public_access_block(AccountId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="s3control_delete_public_access_block_:_AccountId">AccountId</code></td>
<td><p>[required] The account ID for the Amazon Web Services account
whose <code>PublicAccessBlock</code> configuration you want to
remove.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_public_access_block(
      AccountId = "string"
    )
