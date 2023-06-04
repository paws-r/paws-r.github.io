<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_delete_cache_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a cache policy

### Description

Deletes a cache policy.

You cannot delete a cache policy if it's attached to a cache behavior.
First update your distributions to remove the cache policy from all
cache behaviors, then delete the cache policy.

To delete a cache policy, you must provide the policy's identifier and
version. To get these values, you can use `list_cache_policies` or
`get_cache_policy`.

### Usage

    cloudfront_delete_cache_policy(Id, IfMatch)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudfront_delete_cache_policy_:_Id">Id</code></td>
<td><p>[required] The unique identifier for the cache policy that you
are deleting. To get the identifier, you can use
<code>list_cache_policies</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudfront_delete_cache_policy_:_IfMatch">IfMatch</code></td>
<td><p>The version of the cache policy that you are deleting. The
version is the cache policy's <code>ETag</code> value, which you can get
using <code>list_cache_policies</code>, <code>get_cache_policy</code>,
or <code>get_cache_policy_config</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_cache_policy(
      Id = "string",
      IfMatch = "string"
    )
