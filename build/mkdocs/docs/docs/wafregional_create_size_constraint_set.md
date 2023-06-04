<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wafregional_create_size_constraint_set</td>
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

Creates a `SizeConstraintSet`. You then use `update_size_constraint_set`
to identify the part of a web request that you want AWS WAF to check for
length, such as the length of the `User-Agent` header or the length of
the query string. For example, you can create a `SizeConstraintSet` that
matches any requests that have a query string that is longer than 100
bytes. You can then configure AWS WAF to reject those requests.

To create and configure a `SizeConstraintSet`, perform the following
steps:

1.  Use `get_change_token` to get the change token that you provide in
    the `ChangeToken` parameter of a `create_size_constraint_set`
    request.

2.  Submit a `create_size_constraint_set` request.

3.  Use `get_change_token` to get the change token that you provide in
    the `ChangeToken` parameter of an `update_size_constraint_set`
    request.

4.  Submit an `update_size_constraint_set` request to specify the part
    of the request that you want AWS WAF to inspect (for example, the
    header or the URI) and the value that you want AWS WAF to watch for.

For more information about how to use the AWS WAF API to allow or block
HTTP requests, see the [AWS WAF Developer
Guide](https://docs.aws.amazon.com/waf/latest/developerguide/).

### Usage

    wafregional_create_size_constraint_set(Name, ChangeToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="wafregional_create_size_constraint_set_:_Name">Name</code></td>
<td><p>[required] A friendly name or description of the
SizeConstraintSet. You can't change <code>Name</code> after you create a
<code>SizeConstraintSet</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="wafregional_create_size_constraint_set_:_ChangeToken">ChangeToken</code></td>
<td><p>[required] The value returned by the most recent call to
<code>get_change_token</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SizeConstraintSet = list(
        SizeConstraintSetId = "string",
        Name = "string",
        SizeConstraints = list(
          list(
            FieldToMatch = list(
              Type = "URI"|"QUERY_STRING"|"HEADER"|"METHOD"|"BODY"|"SINGLE_QUERY_ARG"|"ALL_QUERY_ARGS",
              Data = "string"
            ),
            TextTransformation = "NONE"|"COMPRESS_WHITE_SPACE"|"HTML_ENTITY_DECODE"|"LOWERCASE"|"CMD_LINE"|"URL_DECODE",
            ComparisonOperator = "EQ"|"NE"|"LE"|"LT"|"GE"|"GT",
            Size = 123
          )
        )
      ),
      ChangeToken = "string"
    )

### Request syntax

    svc$create_size_constraint_set(
      Name = "string",
      ChangeToken = "string"
    )

### Examples

    ## Not run: 
    # The following example creates size constraint set named
    # MySampleSizeConstraintSet.
    svc$create_size_constraint_set(
      ChangeToken = "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
      Name = "MySampleSizeConstraintSet"
    )

    ## End(Not run)
