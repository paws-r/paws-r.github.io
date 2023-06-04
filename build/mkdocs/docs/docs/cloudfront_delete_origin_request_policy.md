<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_delete_origin_request_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an origin request policy

### Description

Deletes an origin request policy.

You cannot delete an origin request policy if it's attached to any cache
behaviors. First update your distributions to remove the origin request
policy from all cache behaviors, then delete the origin request policy.

To delete an origin request policy, you must provide the policy's
identifier and version. To get the identifier, you can use
`list_origin_request_policies` or `get_origin_request_policy`.

### Usage

    cloudfront_delete_origin_request_policy(Id, IfMatch)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudfront_delete_origin_request_policy_:_Id">Id</code></td>
<td><p>[required] The unique identifier for the origin request policy
that you are deleting. To get the identifier, you can use
<code>list_origin_request_policies</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudfront_delete_origin_request_policy_:_IfMatch">IfMatch</code></td>
<td><p>The version of the origin request policy that you are deleting.
The version is the origin request policy's <code>ETag</code> value,
which you can get using <code>list_origin_request_policies</code>,
<code>get_origin_request_policy</code>, or
<code>get_origin_request_policy_config</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_origin_request_policy(
      Id = "string",
      IfMatch = "string"
    )
