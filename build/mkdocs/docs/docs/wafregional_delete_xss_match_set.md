<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wafregional_delete_xss_match_set</td>
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

Permanently deletes an XssMatchSet. You can't delete an `XssMatchSet` if
it's still used in any `Rules` or if it still contains any XssMatchTuple
objects.

If you just want to remove an `XssMatchSet` from a `Rule`, use
`update_rule`.

To permanently delete an `XssMatchSet` from AWS WAF, perform the
following steps:

1.  Update the `XssMatchSet` to remove filters, if any. For more
    information, see `update_xss_match_set`.

2.  Use `get_change_token` to get the change token that you provide in
    the `ChangeToken` parameter of a `delete_xss_match_set` request.

3.  Submit a `delete_xss_match_set` request.

### Usage

    wafregional_delete_xss_match_set(XssMatchSetId, ChangeToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="wafregional_delete_xss_match_set_:_XssMatchSetId">XssMatchSetId</code></td>
<td><p>[required] The <code>XssMatchSetId</code> of the XssMatchSet that
you want to delete. <code>XssMatchSetId</code> is returned by
<code>create_xss_match_set</code> and by
<code>list_xss_match_sets</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="wafregional_delete_xss_match_set_:_ChangeToken">ChangeToken</code></td>
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

    svc$delete_xss_match_set(
      XssMatchSetId = "string",
      ChangeToken = "string"
    )

### Examples

    ## Not run: 
    # The following example deletes an XSS match set with the ID
    # example1ds3t-46da-4fdb-b8d5-abc321j569j5.
    svc$delete_xss_match_set(
      ChangeToken = "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
      XssMatchSetId = "example1ds3t-46da-4fdb-b8d5-abc321j569j5"
    )

    ## End(Not run)
