<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>waf_delete_regex_match_set</td>
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

Permanently deletes a RegexMatchSet. You can't delete a `RegexMatchSet`
if it's still used in any `Rules` or if it still includes any
`RegexMatchTuples` objects (any filters).

If you just want to remove a `RegexMatchSet` from a `Rule`, use
`update_rule`.

To permanently delete a `RegexMatchSet`, perform the following steps:

1.  Update the `RegexMatchSet` to remove filters, if any. For more
    information, see `update_regex_match_set`.

2.  Use `get_change_token` to get the change token that you provide in
    the `ChangeToken` parameter of a `delete_regex_match_set` request.

3.  Submit a `delete_regex_match_set` request.

### Usage

    waf_delete_regex_match_set(RegexMatchSetId, ChangeToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="waf_delete_regex_match_set_:_RegexMatchSetId">RegexMatchSetId</code></td>
<td><p>[required] The <code>RegexMatchSetId</code> of the RegexMatchSet
that you want to delete. <code>RegexMatchSetId</code> is returned by
<code>create_regex_match_set</code> and by
<code>list_regex_match_sets</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="waf_delete_regex_match_set_:_ChangeToken">ChangeToken</code></td>
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

    svc$delete_regex_match_set(
      RegexMatchSetId = "string",
      ChangeToken = "string"
    )
