<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3control_put_public_access_block</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates or modifies the PublicAccessBlock configuration for an Amazon Web Services account

### Description

Creates or modifies the `PublicAccessBlock` configuration for an Amazon
Web Services account. For this operation, users must have the
`s3:PutAccountPublicAccessBlock` permission. For more information, see
[Using Amazon S3 block public
access](https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-control-block-public-access.html).

Related actions include:

-   `get_public_access_block`

-   `delete_public_access_block`

### Usage

    s3control_put_public_access_block(PublicAccessBlockConfiguration,
      AccountId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="s3control_put_public_access_block_:_PublicAccessBlockConfiguration">PublicAccessBlockConfiguration</code></td>
<td><p>[required] The <code>PublicAccessBlock</code> configuration that
you want to apply to the specified Amazon Web Services account.</p></td>
</tr>
<tr class="even">
<td><code
id="s3control_put_public_access_block_:_AccountId">AccountId</code></td>
<td><p>[required] The account ID for the Amazon Web Services account
whose <code>PublicAccessBlock</code> configuration you want to
set.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_public_access_block(
      PublicAccessBlockConfiguration = list(
        BlockPublicAcls = TRUE|FALSE,
        IgnorePublicAcls = TRUE|FALSE,
        BlockPublicPolicy = TRUE|FALSE,
        RestrictPublicBuckets = TRUE|FALSE
      ),
      AccountId = "string"
    )
