<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3control_put_access_point_policy_for_object_lambda</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates or replaces resource policy for an Object Lambda Access Point

### Description

Creates or replaces resource policy for an Object Lambda Access Point.
For an example policy, see [Creating Object Lambda Access
Points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/olap-create.html#olap-create-cli)
in the *Amazon S3 User Guide*.

The following actions are related to
`put_access_point_policy_for_object_lambda`:

-   `delete_access_point_policy_for_object_lambda`

-   `get_access_point_policy_for_object_lambda`

### Usage

    s3control_put_access_point_policy_for_object_lambda(AccountId, Name,
      Policy)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="s3control_put_access_point_policy_for_object_lambda_:_AccountId">AccountId</code></td>
<td><p>[required] The account ID for the account that owns the specified
Object Lambda Access Point.</p></td>
</tr>
<tr class="even">
<td><code
id="s3control_put_access_point_policy_for_object_lambda_:_Name">Name</code></td>
<td><p>[required] The name of the Object Lambda Access Point.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3control_put_access_point_policy_for_object_lambda_:_Policy">Policy</code></td>
<td><p>[required] Object Lambda Access Point resource policy
document.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_access_point_policy_for_object_lambda(
      AccountId = "string",
      Name = "string",
      Policy = "string"
    )
