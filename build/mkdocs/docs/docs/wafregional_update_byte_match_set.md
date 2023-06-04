<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wafregional_update_byte_match_set</td>
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

Inserts or deletes ByteMatchTuple objects (filters) in a ByteMatchSet.
For each `ByteMatchTuple` object, you specify the following values:

-   Whether to insert or delete the object from the array. If you want
    to change a `ByteMatchSetUpdate` object, you delete the existing
    object and add a new one.

-   The part of a web request that you want AWS WAF to inspect, such as
    a query string or the value of the `User-Agent` header.

-   The bytes (typically a string that corresponds with ASCII
    characters) that you want AWS WAF to look for. For more information,
    including how you specify the values for the AWS WAF API and the AWS
    CLI or SDKs, see `TargetString` in the ByteMatchTuple data type.

-   Where to look, such as at the beginning or the end of a query
    string.

-   Whether to perform any conversions on the request, such as
    converting it to lowercase, before inspecting it for the specified
    string.

For example, you can add a `ByteMatchSetUpdate` object that matches web
requests in which `User-Agent` headers contain the string `BadBot`. You
can then configure AWS WAF to block those requests.

To create and configure a `ByteMatchSet`, perform the following steps:

1.  Create a `ByteMatchSet.` For more information, see
    `create_byte_match_set`.

2.  Use `get_change_token` to get the change token that you provide in
    the `ChangeToken` parameter of an `update_byte_match_set` request.

3.  Submit an `update_byte_match_set` request to specify the part of the
    request that you want AWS WAF to inspect (for example, the header or
    the URI) and the value that you want AWS WAF to watch for.

For more information about how to use the AWS WAF API to allow or block
HTTP requests, see the [AWS WAF Developer
Guide](https://docs.aws.amazon.com/waf/latest/developerguide/).

### Usage

    wafregional_update_byte_match_set(ByteMatchSetId, ChangeToken, Updates)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="wafregional_update_byte_match_set_:_ByteMatchSetId">ByteMatchSetId</code></td>
<td><p>[required] The <code>ByteMatchSetId</code> of the ByteMatchSet
that you want to update. <code>ByteMatchSetId</code> is returned by
<code>create_byte_match_set</code> and by
<code>list_byte_match_sets</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="wafregional_update_byte_match_set_:_ChangeToken">ChangeToken</code></td>
<td><p>[required] The value returned by the most recent call to
<code>get_change_token</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="wafregional_update_byte_match_set_:_Updates">Updates</code></td>
<td><p>[required] An array of <code>ByteMatchSetUpdate</code> objects
that you want to insert into or delete from a ByteMatchSet. For more
information, see the applicable data types:</p>
<ul>
<li><p>ByteMatchSetUpdate: Contains <code>Action</code> and
<code>ByteMatchTuple</code></p></li>
<li><p>ByteMatchTuple: Contains <code>FieldToMatch</code>,
<code>PositionalConstraint</code>, <code>TargetString</code>, and
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

    svc$update_byte_match_set(
      ByteMatchSetId = "string",
      ChangeToken = "string",
      Updates = list(
        list(
          Action = "INSERT"|"DELETE",
          ByteMatchTuple = list(
            FieldToMatch = list(
              Type = "URI"|"QUERY_STRING"|"HEADER"|"METHOD"|"BODY"|"SINGLE_QUERY_ARG"|"ALL_QUERY_ARGS",
              Data = "string"
            ),
            TargetString = raw,
            TextTransformation = "NONE"|"COMPRESS_WHITE_SPACE"|"HTML_ENTITY_DECODE"|"LOWERCASE"|"CMD_LINE"|"URL_DECODE",
            PositionalConstraint = "EXACTLY"|"STARTS_WITH"|"ENDS_WITH"|"CONTAINS"|"CONTAINS_WORD"
          )
        )
      )
    )

### Examples

    ## Not run: 
    # The following example deletes a ByteMatchTuple object (filters) in an
    # byte match set with the ID exampleIDs3t-46da-4fdb-b8d5-abc321j569j5.
    svc$update_byte_match_set(
      ByteMatchSetId = "exampleIDs3t-46da-4fdb-b8d5-abc321j569j5",
      ChangeToken = "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
      Updates = list(
        list(
          Action = "DELETE",
          ByteMatchTuple = list(
            FieldToMatch = list(
              Data = "referer",
              Type = "HEADER"
            ),
            PositionalConstraint = "CONTAINS",
            TargetString = "badrefer1",
            TextTransformation = "NONE"
          )
        )
      )
    )

    ## End(Not run)
