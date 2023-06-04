<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wafregional_get_xss_match_set</td>
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

Returns the XssMatchSet that is specified by `XssMatchSetId`.

### Usage

    wafregional_get_xss_match_set(XssMatchSetId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="wafregional_get_xss_match_set_:_XssMatchSetId">XssMatchSetId</code></td>
<td><p>[required] The <code>XssMatchSetId</code> of the XssMatchSet that
you want to get. <code>XssMatchSetId</code> is returned by
<code>create_xss_match_set</code> and by
<code>list_xss_match_sets</code>.</p></td>
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
      )
    )

### Request syntax

    svc$get_xss_match_set(
      XssMatchSetId = "string"
    )

### Examples

    ## Not run: 
    # The following example returns the details of an XSS match set with the
    # ID example1ds3t-46da-4fdb-b8d5-abc321j569j5.
    svc$get_xss_match_set(
      XssMatchSetId = "example1ds3t-46da-4fdb-b8d5-abc321j569j5"
    )

    ## End(Not run)
