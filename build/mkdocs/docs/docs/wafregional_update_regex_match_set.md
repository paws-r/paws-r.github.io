<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wafregional_update_regex_match_set</td>
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

Inserts or deletes RegexMatchTuple objects (filters) in a RegexMatchSet.
For each `RegexMatchSetUpdate` object, you specify the following values:

-   Whether to insert or delete the object from the array. If you want
    to change a `RegexMatchSetUpdate` object, you delete the existing
    object and add a new one.

-   The part of a web request that you want AWS WAF to inspectupdate,
    such as a query string or the value of the `User-Agent` header.

-   The identifier of the pattern (a regular expression) that you want
    AWS WAF to look for. For more information, see RegexPatternSet.

-   Whether to perform any conversions on the request, such as
    converting it to lowercase, before inspecting it for the specified
    string.

For example, you can create a `RegexPatternSet` that matches any
requests with `User-Agent` headers that contain the string
`⁠B[a@]dB[o0]t⁠`. You can then configure AWS WAF to reject those requests.

To create and configure a `RegexMatchSet`, perform the following steps:

1.  Create a `RegexMatchSet.` For more information, see
    `create_regex_match_set`.

2.  Use `get_change_token` to get the change token that you provide in
    the `ChangeToken` parameter of an `update_regex_match_set` request.

3.  Submit an `update_regex_match_set` request to specify the part of
    the request that you want AWS WAF to inspect (for example, the
    header or the URI) and the identifier of the `RegexPatternSet` that
    contain the regular expression patters you want AWS WAF to watch
    for.

For more information about how to use the AWS WAF API to allow or block
HTTP requests, see the [AWS WAF Developer
Guide](https://docs.aws.amazon.com/waf/latest/developerguide/).

### Usage

    wafregional_update_regex_match_set(RegexMatchSetId, Updates,
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
id="wafregional_update_regex_match_set_:_RegexMatchSetId">RegexMatchSetId</code></td>
<td><p>[required] The <code>RegexMatchSetId</code> of the RegexMatchSet
that you want to update. <code>RegexMatchSetId</code> is returned by
<code>create_regex_match_set</code> and by
<code>list_regex_match_sets</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="wafregional_update_regex_match_set_:_Updates">Updates</code></td>
<td><p>[required] An array of <code>RegexMatchSetUpdate</code> objects
that you want to insert into or delete from a RegexMatchSet. For more
information, see RegexMatchTuple.</p></td>
</tr>
<tr class="odd">
<td><code
id="wafregional_update_regex_match_set_:_ChangeToken">ChangeToken</code></td>
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

    svc$update_regex_match_set(
      RegexMatchSetId = "string",
      Updates = list(
        list(
          Action = "INSERT"|"DELETE",
          RegexMatchTuple = list(
            FieldToMatch = list(
              Type = "URI"|"QUERY_STRING"|"HEADER"|"METHOD"|"BODY"|"SINGLE_QUERY_ARG"|"ALL_QUERY_ARGS",
              Data = "string"
            ),
            TextTransformation = "NONE"|"COMPRESS_WHITE_SPACE"|"HTML_ENTITY_DECODE"|"LOWERCASE"|"CMD_LINE"|"URL_DECODE",
            RegexPatternSetId = "string"
          )
        )
      ),
      ChangeToken = "string"
    )
