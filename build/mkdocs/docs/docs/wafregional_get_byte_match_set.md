<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wafregional_get_byte_match_set</td>
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

Returns the ByteMatchSet specified by `ByteMatchSetId`.

### Usage

    wafregional_get_byte_match_set(ByteMatchSetId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="wafregional_get_byte_match_set_:_ByteMatchSetId">ByteMatchSetId</code></td>
<td><p>[required] The <code>ByteMatchSetId</code> of the ByteMatchSet
that you want to get. <code>ByteMatchSetId</code> is returned by
<code>create_byte_match_set</code> and by
<code>list_byte_match_sets</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ByteMatchSet = list(
        ByteMatchSetId = "string",
        Name = "string",
        ByteMatchTuples = list(
          list(
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

### Request syntax

    svc$get_byte_match_set(
      ByteMatchSetId = "string"
    )

### Examples

    ## Not run: 
    # The following example returns the details of a byte match set with the
    # ID exampleIDs3t-46da-4fdb-b8d5-abc321j569j5.
    svc$get_byte_match_set(
      ByteMatchSetId = "exampleIDs3t-46da-4fdb-b8d5-abc321j569j5"
    )

    ## End(Not run)
