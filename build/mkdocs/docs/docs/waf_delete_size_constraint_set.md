<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>waf_delete_size_constraint_set</td>
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

Permanently deletes a SizeConstraintSet. You can't delete a
`SizeConstraintSet` if it's still used in any `Rules` or if it still
includes any SizeConstraint objects (any filters).

If you just want to remove a `SizeConstraintSet` from a `Rule`, use
`update_rule`.

To permanently delete a `SizeConstraintSet`, perform the following
steps:

1.  Update the `SizeConstraintSet` to remove filters, if any. For more
    information, see `update_size_constraint_set`.

2.  Use `get_change_token` to get the change token that you provide in
    the `ChangeToken` parameter of a `delete_size_constraint_set`
    request.

3.  Submit a `delete_size_constraint_set` request.

### Usage

    waf_delete_size_constraint_set(SizeConstraintSetId, ChangeToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="waf_delete_size_constraint_set_:_SizeConstraintSetId">SizeConstraintSetId</code></td>
<td><p>[required] The <code>SizeConstraintSetId</code> of the
SizeConstraintSet that you want to delete.
<code>SizeConstraintSetId</code> is returned by
<code>create_size_constraint_set</code> and by
<code>list_size_constraint_sets</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="waf_delete_size_constraint_set_:_ChangeToken">ChangeToken</code></td>
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

    svc$delete_size_constraint_set(
      SizeConstraintSetId = "string",
      ChangeToken = "string"
    )

### Examples

    ## Not run: 
    # The following example deletes a size constraint set  with the ID
    # example1ds3t-46da-4fdb-b8d5-abc321j569j5.
    svc$delete_size_constraint_set(
      ChangeToken = "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
      SizeConstraintSetId = "example1ds3t-46da-4fdb-b8d5-abc321j569j5"
    )

    ## End(Not run)
