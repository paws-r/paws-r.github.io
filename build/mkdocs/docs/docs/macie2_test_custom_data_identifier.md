<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie2_test_custom_data_identifier</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Tests a custom data identifier

### Description

Tests a custom data identifier.

### Usage

    macie2_test_custom_data_identifier(ignoreWords, keywords,
      maximumMatchDistance, regex, sampleText)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="macie2_test_custom_data_identifier_:_ignoreWords">ignoreWords</code></td>
<td><p>An array that lists specific character sequences (<em>ignore
words</em>) to exclude from the results. If the text matched by the
regular expression contains any string in this array, Amazon Macie
ignores it. The array can contain as many as 10 ignore words. Each
ignore word can contain 4-90 UTF-8 characters. Ignore words are case
sensitive.</p></td>
</tr>
<tr class="even">
<td><code
id="macie2_test_custom_data_identifier_:_keywords">keywords</code></td>
<td><p>An array that lists specific character sequences
(<em>keywords</em>), one of which must precede and be within proximity
(maximumMatchDistance) of the regular expression to match. The array can
contain as many as 50 keywords. Each keyword can contain 3-90 UTF-8
characters. Keywords aren't case sensitive.</p></td>
</tr>
<tr class="odd">
<td><code
id="macie2_test_custom_data_identifier_:_maximumMatchDistance">maximumMatchDistance</code></td>
<td><p>The maximum number of characters that can exist between the end
of at least one complete character sequence specified by the keywords
array and the end of the text that matches the regex pattern. If a
complete keyword precedes all the text that matches the pattern and the
keyword is within the specified distance, Amazon Macie includes the
result. The distance can be 1-300 characters. The default value is
50.</p></td>
</tr>
<tr class="even">
<td><code
id="macie2_test_custom_data_identifier_:_regex">regex</code></td>
<td><p>[required] The regular expression (<em>regex</em>) that defines
the pattern to match. The expression can contain as many as 512
characters.</p></td>
</tr>
<tr class="odd">
<td><code
id="macie2_test_custom_data_identifier_:_sampleText">sampleText</code></td>
<td><p>[required] The sample text to inspect by using the custom data
identifier. The text can contain as many as 1,000 characters.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      matchCount = 123
    )

### Request syntax

    svc$test_custom_data_identifier(
      ignoreWords = list(
        "string"
      ),
      keywords = list(
        "string"
      ),
      maximumMatchDistance = 123,
      regex = "string",
      sampleText = "string"
    )
