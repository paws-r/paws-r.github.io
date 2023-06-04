<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wafregional_create_regex_pattern_set</td>
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

Creates a `RegexPatternSet`. You then use `update_regex_pattern_set` to
specify the regular expression (regex) pattern that you want AWS WAF to
search for, such as `⁠B[a@]dB[o0]t⁠`. You can then configure AWS WAF to
reject those requests.

To create and configure a `RegexPatternSet`, perform the following
steps:

1.  Use `get_change_token` to get the change token that you provide in
    the `ChangeToken` parameter of a `create_regex_pattern_set` request.

2.  Submit a `create_regex_pattern_set` request.

3.  Use `get_change_token` to get the change token that you provide in
    the `ChangeToken` parameter of an `update_regex_pattern_set`
    request.

4.  Submit an `update_regex_pattern_set` request to specify the string
    that you want AWS WAF to watch for.

For more information about how to use the AWS WAF API to allow or block
HTTP requests, see the [AWS WAF Developer
Guide](https://docs.aws.amazon.com/waf/latest/developerguide/).

### Usage

    wafregional_create_regex_pattern_set(Name, ChangeToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="wafregional_create_regex_pattern_set_:_Name">Name</code></td>
<td><p>[required] A friendly name or description of the RegexPatternSet.
You can't change <code>Name</code> after you create a
<code>RegexPatternSet</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="wafregional_create_regex_pattern_set_:_ChangeToken">ChangeToken</code></td>
<td><p>[required] The value returned by the most recent call to
<code>get_change_token</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RegexPatternSet = list(
        RegexPatternSetId = "string",
        Name = "string",
        RegexPatternStrings = list(
          "string"
        )
      ),
      ChangeToken = "string"
    )

### Request syntax

    svc$create_regex_pattern_set(
      Name = "string",
      ChangeToken = "string"
    )
