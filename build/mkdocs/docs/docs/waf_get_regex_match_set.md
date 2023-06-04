<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>waf_get_regex_match_set</td>
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

Returns the RegexMatchSet specified by `RegexMatchSetId`.

### Usage

    waf_get_regex_match_set(RegexMatchSetId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="waf_get_regex_match_set_:_RegexMatchSetId">RegexMatchSetId</code></td>
<td><p>[required] The <code>RegexMatchSetId</code> of the RegexMatchSet
that you want to get. <code>RegexMatchSetId</code> is returned by
<code>create_regex_match_set</code> and by
<code>list_regex_match_sets</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RegexMatchSet = list(
        RegexMatchSetId = "string",
        Name = "string",
        RegexMatchTuples = list(
          list(
            FieldToMatch = list(
              Type = "URI"|"QUERY_STRING"|"HEADER"|"METHOD"|"BODY"|"SINGLE_QUERY_ARG"|"ALL_QUERY_ARGS",
              Data = "string"
            ),
            TextTransformation = "NONE"|"COMPRESS_WHITE_SPACE"|"HTML_ENTITY_DECODE"|"LOWERCASE"|"CMD_LINE"|"URL_DECODE",
            RegexPatternSetId = "string"
          )
        )
      )
    )

### Request syntax

    svc$get_regex_match_set(
      RegexMatchSetId = "string"
    )
