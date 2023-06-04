<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wafregional_delete_sql_injection_match_set</td>
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

Permanently deletes a SqlInjectionMatchSet. You can't delete a
`SqlInjectionMatchSet` if it's still used in any `Rules` or if it still
contains any SqlInjectionMatchTuple objects.

If you just want to remove a `SqlInjectionMatchSet` from a `Rule`, use
`update_rule`.

To permanently delete a `SqlInjectionMatchSet` from AWS WAF, perform the
following steps:

1.  Update the `SqlInjectionMatchSet` to remove filters, if any. For
    more information, see `update_sql_injection_match_set`.

2.  Use `get_change_token` to get the change token that you provide in
    the `ChangeToken` parameter of a `delete_sql_injection_match_set`
    request.

3.  Submit a `delete_sql_injection_match_set` request.

### Usage

    wafregional_delete_sql_injection_match_set(SqlInjectionMatchSetId,
      ChangeToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="wafregional_delete_sql_injection_match_set_:_SqlInjectionMatchSetId">SqlInjectionMatchSetId</code></td>
<td><p>[required] The <code>SqlInjectionMatchSetId</code> of the
SqlInjectionMatchSet that you want to delete.
<code>SqlInjectionMatchSetId</code> is returned by
<code>create_sql_injection_match_set</code> and by
<code>list_sql_injection_match_sets</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="wafregional_delete_sql_injection_match_set_:_ChangeToken">ChangeToken</code></td>
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

    svc$delete_sql_injection_match_set(
      SqlInjectionMatchSetId = "string",
      ChangeToken = "string"
    )

### Examples

    ## Not run: 
    # The following example deletes a SQL injection match set  with the ID
    # example1ds3t-46da-4fdb-b8d5-abc321j569j5.
    svc$delete_sql_injection_match_set(
      ChangeToken = "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
      SqlInjectionMatchSetId = "example1ds3t-46da-4fdb-b8d5-abc321j569j5"
    )

    ## End(Not run)
