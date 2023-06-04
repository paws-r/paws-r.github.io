<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>waf_update_regex_pattern_set</td>
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

Inserts or deletes `RegexPatternString` objects in a RegexPatternSet.
For each `RegexPatternString` object, you specify the following values:

-   Whether to insert or delete the `RegexPatternString`.

-   The regular expression pattern that you want to insert or delete.
    For more information, see RegexPatternSet.

For example, you can create a `RegexPatternString` such as
`⁠B[a@]dB[o0]t⁠`. AWS WAF will match this `RegexPatternString` to:

-   BadBot

-   BadB0t

-   B@dBot

-   B@dB0t

To create and configure a `RegexPatternSet`, perform the following
steps:

1.  Create a `RegexPatternSet.` For more information, see
    `create_regex_pattern_set`.

2.  Use `get_change_token` to get the change token that you provide in
    the `ChangeToken` parameter of an `update_regex_pattern_set`
    request.

3.  Submit an `update_regex_pattern_set` request to specify the regular
    expression pattern that you want AWS WAF to watch for.

For more information about how to use the AWS WAF API to allow or block
HTTP requests, see the [AWS WAF Developer
Guide](https://docs.aws.amazon.com/waf/latest/developerguide/).

### Usage

    waf_update_regex_pattern_set(RegexPatternSetId, Updates, ChangeToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="waf_update_regex_pattern_set_:_RegexPatternSetId">RegexPatternSetId</code></td>
<td><p>[required] The <code>RegexPatternSetId</code> of the
RegexPatternSet that you want to update. <code>RegexPatternSetId</code>
is returned by <code>create_regex_pattern_set</code> and by
<code>list_regex_pattern_sets</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="waf_update_regex_pattern_set_:_Updates">Updates</code></td>
<td><p>[required] An array of <code>RegexPatternSetUpdate</code> objects
that you want to insert into or delete from a RegexPatternSet.</p></td>
</tr>
<tr class="odd">
<td><code
id="waf_update_regex_pattern_set_:_ChangeToken">ChangeToken</code></td>
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

    svc$update_regex_pattern_set(
      RegexPatternSetId = "string",
      Updates = list(
        list(
          Action = "INSERT"|"DELETE",
          RegexPatternString = "string"
        )
      ),
      ChangeToken = "string"
    )
