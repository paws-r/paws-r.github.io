<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>waf_update_size_constraint_set</td>
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

Inserts or deletes SizeConstraint objects (filters) in a
SizeConstraintSet. For each `SizeConstraint` object, you specify the
following values:

-   Whether to insert or delete the object from the array. If you want
    to change a `SizeConstraintSetUpdate` object, you delete the
    existing object and add a new one.

-   The part of a web request that you want AWS WAF to evaluate, such as
    the length of a query string or the length of the `User-Agent`
    header.

-   Whether to perform any transformations on the request, such as
    converting it to lowercase, before checking its length. Note that
    transformations of the request body are not supported because the
    AWS resource forwards only the first `8192` bytes of your request to
    AWS WAF.

    You can only specify a single type of TextTransformation.

-   A `ComparisonOperator` used for evaluating the selected part of the
    request against the specified `Size`, such as equals, greater than,
    less than, and so on.

-   The length, in bytes, that you want AWS WAF to watch for in selected
    part of the request. The length is computed after applying the
    transformation.

For example, you can add a `SizeConstraintSetUpdate` object that matches
web requests in which the length of the `User-Agent` header is greater
than 100 bytes. You can then configure AWS WAF to block those requests.

To create and configure a `SizeConstraintSet`, perform the following
steps:

1.  Create a `SizeConstraintSet.` For more information, see
    `create_size_constraint_set`.

2.  Use `get_change_token` to get the change token that you provide in
    the `ChangeToken` parameter of an `update_size_constraint_set`
    request.

3.  Submit an `update_size_constraint_set` request to specify the part
    of the request that you want AWS WAF to inspect (for example, the
    header or the URI) and the value that you want AWS WAF to watch for.

For more information about how to use the AWS WAF API to allow or block
HTTP requests, see the [AWS WAF Developer
Guide](https://docs.aws.amazon.com/waf/latest/developerguide/).

### Usage

    waf_update_size_constraint_set(SizeConstraintSetId, ChangeToken,
      Updates)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="waf_update_size_constraint_set_:_SizeConstraintSetId">SizeConstraintSetId</code></td>
<td><p>[required] The <code>SizeConstraintSetId</code> of the
SizeConstraintSet that you want to update.
<code>SizeConstraintSetId</code> is returned by
<code>create_size_constraint_set</code> and by
<code>list_size_constraint_sets</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="waf_update_size_constraint_set_:_ChangeToken">ChangeToken</code></td>
<td><p>[required] The value returned by the most recent call to
<code>get_change_token</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="waf_update_size_constraint_set_:_Updates">Updates</code></td>
<td><p>[required] An array of <code>SizeConstraintSetUpdate</code>
objects that you want to insert into or delete from a SizeConstraintSet.
For more information, see the applicable data types:</p>
<ul>
<li><p>SizeConstraintSetUpdate: Contains <code>Action</code> and
<code>SizeConstraint</code></p></li>
<li><p>SizeConstraint: Contains <code>FieldToMatch</code>,
<code>TextTransformation</code>, <code>ComparisonOperator</code>, and
<code>Size</code></p></li>
<li><p>FieldToMatch: Contains <code>Data</code> and
<code>Type</code></p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ChangeToken = "string"
    )

### Request syntax

    svc$update_size_constraint_set(
      SizeConstraintSetId = "string",
      ChangeToken = "string",
      Updates = list(
        list(
          Action = "INSERT"|"DELETE",
          SizeConstraint = list(
            FieldToMatch = list(
              Type = "URI"|"QUERY_STRING"|"HEADER"|"METHOD"|"BODY"|"SINGLE_QUERY_ARG"|"ALL_QUERY_ARGS",
              Data = "string"
            ),
            TextTransformation = "NONE"|"COMPRESS_WHITE_SPACE"|"HTML_ENTITY_DECODE"|"LOWERCASE"|"CMD_LINE"|"URL_DECODE",
            ComparisonOperator = "EQ"|"NE"|"LE"|"LT"|"GE"|"GT",
            Size = 123
          )
        )
      )
    )

### Examples

    ## Not run: 
    # The following example deletes a SizeConstraint object (filters) in a
    # size constraint set with the ID
    # example1ds3t-46da-4fdb-b8d5-abc321j569j5.
    svc$update_size_constraint_set(
      ChangeToken = "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
      SizeConstraintSetId = "example1ds3t-46da-4fdb-b8d5-abc321j569j5",
      Updates = list(
        list(
          Action = "DELETE",
          SizeConstraint = list(
            ComparisonOperator = "GT",
            FieldToMatch = list(
              Type = "QUERY_STRING"
            ),
            Size = 0L,
            TextTransformation = "NONE"
          )
        )
      )
    )

    ## End(Not run)
