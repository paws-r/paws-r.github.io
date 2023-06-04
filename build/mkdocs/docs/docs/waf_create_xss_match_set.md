<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>waf_create_xss_match_set</td>
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

Creates an XssMatchSet, which you use to allow, block, or count requests
that contain cross-site scripting attacks in the specified part of web
requests. AWS WAF searches for character sequences that are likely to be
malicious strings.

To create and configure an `XssMatchSet`, perform the following steps:

1.  Use `get_change_token` to get the change token that you provide in
    the `ChangeToken` parameter of a `create_xss_match_set` request.

2.  Submit a `create_xss_match_set` request.

3.  Use `get_change_token` to get the change token that you provide in
    the `ChangeToken` parameter of an `update_xss_match_set` request.

4.  Submit an `update_xss_match_set` request to specify the parts of web
    requests in which you want to allow, block, or count cross-site
    scripting attacks.

For more information about how to use the AWS WAF API to allow or block
HTTP requests, see the [AWS WAF Developer
Guide](https://docs.aws.amazon.com/waf/latest/developerguide/).

### Usage

    waf_create_xss_match_set(Name, ChangeToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="waf_create_xss_match_set_:_Name">Name</code></td>
<td><p>[required] A friendly name or description for the XssMatchSet
that you're creating. You can't change <code>Name</code> after you
create the <code>XssMatchSet</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="waf_create_xss_match_set_:_ChangeToken">ChangeToken</code></td>
<td><p>[required] The value returned by the most recent call to
<code>get_change_token</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      XssMatchSet = list(
        XssMatchSetId = "string",
        Name = "string",
        XssMatchTuples = list(
          list(
            FieldToMatch = list(
              Type = "URI"|"QUERY_STRING"|"HEADER"|"METHOD"|"BODY"|"SINGLE_QUERY_ARG"|"ALL_QUERY_ARGS",
              Data = "string"
            ),
            TextTransformation = "NONE"|"COMPRESS_WHITE_SPACE"|"HTML_ENTITY_DECODE"|"LOWERCASE"|"CMD_LINE"|"URL_DECODE"
          )
        )
      ),
      ChangeToken = "string"
    )

### Request syntax

    svc$create_xss_match_set(
      Name = "string",
      ChangeToken = "string"
    )

### Examples

    ## Not run: 
    # The following example creates an XSS match set named
    # MySampleXssMatchSet.
    svc$create_xss_match_set(
      ChangeToken = "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
      Name = "MySampleXssMatchSet"
    )

    ## End(Not run)
