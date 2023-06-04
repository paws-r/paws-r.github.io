<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie2_create_custom_data_identifier</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates and defines the criteria and other settings for a custom data identifier

### Description

Creates and defines the criteria and other settings for a custom data
identifier.

### Usage

    macie2_create_custom_data_identifier(clientToken, description,
      ignoreWords, keywords, maximumMatchDistance, name, regex,
      severityLevels, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="macie2_create_custom_data_identifier_:_clientToken">clientToken</code></td>
<td><p>A unique, case-sensitive token that you provide to ensure the
idempotency of the request.</p></td>
</tr>
<tr class="even">
<td><code
id="macie2_create_custom_data_identifier_:_description">description</code></td>
<td><p>A custom description of the custom data identifier. The
description can contain as many as 512 characters.</p>
<p>We strongly recommend that you avoid including any sensitive data in
the description of a custom data identifier. Other users of your account
might be able to see this description, depending on the actions that
they're allowed to perform in Amazon Macie.</p></td>
</tr>
<tr class="odd">
<td><code
id="macie2_create_custom_data_identifier_:_ignoreWords">ignoreWords</code></td>
<td><p>An array that lists specific character sequences (<em>ignore
words</em>) to exclude from the results. If the text matched by the
regular expression contains any string in this array, Amazon Macie
ignores it. The array can contain as many as 10 ignore words. Each
ignore word can contain 4-90 UTF-8 characters. Ignore words are case
sensitive.</p></td>
</tr>
<tr class="even">
<td><code
id="macie2_create_custom_data_identifier_:_keywords">keywords</code></td>
<td><p>An array that lists specific character sequences
(<em>keywords</em>), one of which must precede and be within proximity
(maximumMatchDistance) of the regular expression to match. The array can
contain as many as 50 keywords. Each keyword can contain 3-90 UTF-8
characters. Keywords aren't case sensitive.</p></td>
</tr>
<tr class="odd">
<td><code
id="macie2_create_custom_data_identifier_:_maximumMatchDistance">maximumMatchDistance</code></td>
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
id="macie2_create_custom_data_identifier_:_name">name</code></td>
<td><p>[required] A custom name for the custom data identifier. The name
can contain as many as 128 characters.</p>
<p>We strongly recommend that you avoid including any sensitive data in
the name of a custom data identifier. Other users of your account might
be able to see this name, depending on the actions that they're allowed
to perform in Amazon Macie.</p></td>
</tr>
<tr class="odd">
<td><code
id="macie2_create_custom_data_identifier_:_regex">regex</code></td>
<td><p>[required] The regular expression (<em>regex</em>) that defines
the pattern to match. The expression can contain as many as 512
characters.</p></td>
</tr>
<tr class="even">
<td><code
id="macie2_create_custom_data_identifier_:_severityLevels">severityLevels</code></td>
<td><p>The severity to assign to findings that the custom data
identifier produces, based on the number of occurrences of text that
matches the custom data identifier's detection criteria. You can specify
as many as three SeverityLevel objects in this array, one for each
severity: LOW, MEDIUM, or HIGH. If you specify more than one, the
occurrences thresholds must be in ascending order by severity, moving
from LOW to HIGH. For example, 1 for LOW, 50 for MEDIUM, and 100 for
HIGH. If an S3 object contains fewer occurrences than the lowest
specified threshold, Amazon Macie doesn't create a finding.</p>
<p>If you don't specify any values for this array, Macie creates
findings for S3 objects that contain at least one occurrence of text
that matches the detection criteria, and Macie assigns the MEDIUM
severity to those findings.</p></td>
</tr>
<tr class="odd">
<td><code
id="macie2_create_custom_data_identifier_:_tags">tags</code></td>
<td><p>A map of key-value pairs that specifies the tags to associate
with the custom data identifier.</p>
<p>A custom data identifier can have a maximum of 50 tags. Each tag
consists of a tag key and an associated tag value. The maximum length of
a tag key is 128 characters. The maximum length of a tag value is 256
characters.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      customDataIdentifierId = "string"
    )

### Request syntax

    svc$create_custom_data_identifier(
      clientToken = "string",
      description = "string",
      ignoreWords = list(
        "string"
      ),
      keywords = list(
        "string"
      ),
      maximumMatchDistance = 123,
      name = "string",
      regex = "string",
      severityLevels = list(
        list(
          occurrencesThreshold = 123,
          severity = "LOW"|"MEDIUM"|"HIGH"
        )
      ),
      tags = list(
        "string"
      )
    )
