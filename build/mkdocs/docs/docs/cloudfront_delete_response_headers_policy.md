<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_delete_response_headers_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a response headers policy

### Description

Deletes a response headers policy.

You cannot delete a response headers policy if it's attached to a cache
behavior. First update your distributions to remove the response headers
policy from all cache behaviors, then delete the response headers
policy.

To delete a response headers policy, you must provide the policy's
identifier and version. To get these values, you can use
`list_response_headers_policies` or `get_response_headers_policy`.

### Usage

    cloudfront_delete_response_headers_policy(Id, IfMatch)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudfront_delete_response_headers_policy_:_Id">Id</code></td>
<td><p>[required] The identifier for the response headers policy that
you are deleting.</p>
<p>To get the identifier, you can use
<code>list_response_headers_policies</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudfront_delete_response_headers_policy_:_IfMatch">IfMatch</code></td>
<td><p>The version of the response headers policy that you are
deleting.</p>
<p>The version is the response headers policy's <code>ETag</code> value,
which you can get using <code>list_response_headers_policies</code>,
<code>get_response_headers_policy</code>, or
<code>get_response_headers_policy_config</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_response_headers_policy(
      Id = "string",
      IfMatch = "string"
    )
