<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>waf_delete_web_acl</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This is AWS WAF Classic documentation

### Description

This is **AWS WAF Classic** documentation. For more information, see
[AWS WAF
Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
in the developer guide.

**For the latest version of AWS WAF**, use the AWS WAFV2 API and see the
[AWS WAF Developer
Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
With the latest version, AWS WAF has a single set of endpoints for
regional and global use.

Permanently deletes a WebACL. You can't delete a `WebACL` if it still
contains any `Rules`.

To delete a `WebACL`, perform the following steps:

1.  Update the `WebACL` to remove `Rules`, if any. For more information,
    see `update_web_acl`.

2.  Use `get_change_token` to get the change token that you provide in
    the `ChangeToken` parameter of a `delete_web_acl` request.

3.  Submit a `delete_web_acl` request.

### Usage

    waf_delete_web_acl(WebACLId, ChangeToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="waf_delete_web_acl_:_WebACLId">WebACLId</code></td>
<td><p>[required] The <code>WebACLId</code> of the WebACL that you want
to delete. <code>WebACLId</code> is returned by
<code>create_web_acl</code> and by <code>list_web_ac_ls</code>.</p></td>
</tr>
<tr class="even">
<td><code id="waf_delete_web_acl_:_ChangeToken">ChangeToken</code></td>
<td><p>[required] The value returned by the most recent call to
<code>get_change_token</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ChangeToken = "string"
    )

### Request syntax

    svc$delete_web_acl(
      WebACLId = "string",
      ChangeToken = "string"
    )

### Examples

    ## Not run: 
    # The following example deletes a web ACL with the ID
    # example-46da-4444-5555-example.
    svc$delete_web_acl(
      ChangeToken = "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
      WebACLId = "example-46da-4444-5555-example"
    )

    ## End(Not run)
