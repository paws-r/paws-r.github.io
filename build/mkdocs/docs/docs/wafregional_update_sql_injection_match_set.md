<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wafregional_update_sql_injection_match_set</td>
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

Inserts or deletes SqlInjectionMatchTuple objects (filters) in a
SqlInjectionMatchSet. For each `SqlInjectionMatchTuple` object, you
specify the following values:

-   `Action`: Whether to insert the object into or delete the object
    from the array. To change a `SqlInjectionMatchTuple`, you delete the
    existing object and add a new one.

-   `FieldToMatch`: The part of web requests that you want AWS WAF to
    inspect and, if you want AWS WAF to inspect a header or custom query
    parameter, the name of the header or parameter.

-   `TextTransformation`: Which text transformation, if any, to perform
    on the web request before inspecting the request for snippets of
    malicious SQL code.

    You can only specify a single type of TextTransformation.

You use `SqlInjectionMatchSet` objects to specify which CloudFront
requests that you want to allow, block, or count. For example, if you're
receiving requests that contain snippets of SQL code in the query string
and you want to block the requests, you can create a
`SqlInjectionMatchSet` with the applicable settings, and then configure
AWS WAF to block the requests.

To create and configure a `SqlInjectionMatchSet`, perform the following
steps:

1.  Submit a `create_sql_injection_match_set` request.

2.  Use `get_change_token` to get the change token that you provide in
    the `ChangeToken` parameter of an `update_ip_set` request.

3.  Submit an `update_sql_injection_match_set` request to specify the
    parts of web requests that you want AWS WAF to inspect for snippets
    of SQL code.

For more information about how to use the AWS WAF API to allow or block
HTTP requests, see the [AWS WAF Developer
Guide](https://docs.aws.amazon.com/waf/latest/developerguide/).

### Usage

    wafregional_update_sql_injection_match_set(SqlInjectionMatchSetId,
      ChangeToken, Updates)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="wafregional_update_sql_injection_match_set_:_SqlInjectionMatchSetId">SqlInjectionMatchSetId</code></td>
<td><p>[required] The <code>SqlInjectionMatchSetId</code> of the
<code>SqlInjectionMatchSet</code> that you want to update.
<code>SqlInjectionMatchSetId</code> is returned by
<code>create_sql_injection_match_set</code> and by
<code>list_sql_injection_match_sets</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="wafregional_update_sql_injection_match_set_:_ChangeToken">ChangeToken</code></td>
<td><p>[required] The value returned by the most recent call to
<code>get_change_token</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="wafregional_update_sql_injection_match_set_:_Updates">Updates</code></td>
<td><p>[required] An array of <code>SqlInjectionMatchSetUpdate</code>
objects that you want to insert into or delete from a
SqlInjectionMatchSet. For more information, see the applicable data
types:</p>
<ul>
<li><p>SqlInjectionMatchSetUpdate: Contains <code>Action</code> and
<code>SqlInjectionMatchTuple</code></p></li>
<li><p>SqlInjectionMatchTuple: Contains <code>FieldToMatch</code> and
<code>TextTransformation</code></p></li>
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

    svc$update_sql_injection_match_set(
      SqlInjectionMatchSetId = "string",
      ChangeToken = "string",
      Updates = list(
        list(
          Action = "INSERT"|"DELETE",
          SqlInjectionMatchTuple = list(
            FieldToMatch = list(
              Type = "URI"|"QUERY_STRING"|"HEADER"|"METHOD"|"BODY"|"SINGLE_QUERY_ARG"|"ALL_QUERY_ARGS",
              Data = "string"
            ),
            TextTransformation = "NONE"|"COMPRESS_WHITE_SPACE"|"HTML_ENTITY_DECODE"|"LOWERCASE"|"CMD_LINE"|"URL_DECODE"
          )
        )
      )
    )

### Examples

    ## Not run: 
    # The following example deletes a SqlInjectionMatchTuple object (filters)
    # in a SQL injection match set with the ID
    # example1ds3t-46da-4fdb-b8d5-abc321j569j5.
    svc$update_sql_injection_match_set(
      ChangeToken = "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
      SqlInjectionMatchSetId = "example1ds3t-46da-4fdb-b8d5-abc321j569j5",
      Updates = list(
        list(
          Action = "DELETE",
          SqlInjectionMatchTuple = list(
            FieldToMatch = list(
              Type = "QUERY_STRING"
            ),
            TextTransformation = "URL_DECODE"
          )
        )
      )
    )

    ## End(Not run)
