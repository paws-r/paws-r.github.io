<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wafregional_delete_ip_set</td>
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

Permanently deletes an IPSet. You can't delete an `IPSet` if it's still
used in any `Rules` or if it still includes any IP addresses.

If you just want to remove an `IPSet` from a `Rule`, use `update_rule`.

To permanently delete an `IPSet` from AWS WAF, perform the following
steps:

1.  Update the `IPSet` to remove IP address ranges, if any. For more
    information, see `update_ip_set`.

2.  Use `get_change_token` to get the change token that you provide in
    the `ChangeToken` parameter of a `delete_ip_set` request.

3.  Submit a `delete_ip_set` request.

### Usage

    wafregional_delete_ip_set(IPSetId, ChangeToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="wafregional_delete_ip_set_:_IPSetId">IPSetId</code></td>
<td><p>[required] The <code>IPSetId</code> of the IPSet that you want to
delete. <code>IPSetId</code> is returned by <code>create_ip_set</code>
and by <code>list_ip_sets</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="wafregional_delete_ip_set_:_ChangeToken">ChangeToken</code></td>
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

    svc$delete_ip_set(
      IPSetId = "string",
      ChangeToken = "string"
    )

### Examples

    ## Not run: 
    # The following example deletes an IP match set  with the ID
    # example1ds3t-46da-4fdb-b8d5-abc321j569j5.
    svc$delete_ip_set(
      ChangeToken = "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
      IPSetId = "example1ds3t-46da-4fdb-b8d5-abc321j569j5"
    )

    ## End(Not run)
