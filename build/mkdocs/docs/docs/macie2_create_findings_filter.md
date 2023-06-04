<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie2_create_findings_filter</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates and defines the criteria and other settings for a findings filter

### Description

Creates and defines the criteria and other settings for a findings
filter.

### Usage

    macie2_create_findings_filter(action, clientToken, description,
      findingCriteria, name, position, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="macie2_create_findings_filter_:_action">action</code></td>
<td><p>[required] The action to perform on findings that match the
filter criteria (findingCriteria). Valid values are: ARCHIVE, suppress
(automatically archive) the findings; and, NOOP, don't perform any
action on the findings.</p></td>
</tr>
<tr class="even">
<td><code
id="macie2_create_findings_filter_:_clientToken">clientToken</code></td>
<td><p>A unique, case-sensitive token that you provide to ensure the
idempotency of the request.</p></td>
</tr>
<tr class="odd">
<td><code
id="macie2_create_findings_filter_:_description">description</code></td>
<td><p>A custom description of the filter. The description can contain
as many as 512 characters.</p>
<p>We strongly recommend that you avoid including any sensitive data in
the description of a filter. Other users of your account might be able
to see this description, depending on the actions that they're allowed
to perform in Amazon Macie.</p></td>
</tr>
<tr class="even">
<td><code
id="macie2_create_findings_filter_:_findingCriteria">findingCriteria</code></td>
<td><p>[required] The criteria to use to filter findings.</p></td>
</tr>
<tr class="odd">
<td><code id="macie2_create_findings_filter_:_name">name</code></td>
<td><p>[required] A custom name for the filter. The name must contain at
least 3 characters and can contain as many as 64 characters.</p>
<p>We strongly recommend that you avoid including any sensitive data in
the name of a filter. Other users of your account might be able to see
this name, depending on the actions that they're allowed to perform in
Amazon Macie.</p></td>
</tr>
<tr class="even">
<td><code
id="macie2_create_findings_filter_:_position">position</code></td>
<td><p>The position of the filter in the list of saved filters on the
Amazon Macie console. This value also determines the order in which the
filter is applied to findings, relative to other filters that are also
applied to the findings.</p></td>
</tr>
<tr class="odd">
<td><code id="macie2_create_findings_filter_:_tags">tags</code></td>
<td><p>A map of key-value pairs that specifies the tags to associate
with the filter.</p>
<p>A findings filter can have a maximum of 50 tags. Each tag consists of
a tag key and an associated tag value. The maximum length of a tag key
is 128 characters. The maximum length of a tag value is 256
characters.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      arn = "string",
      id = "string"
    )

### Request syntax

    svc$create_findings_filter(
      action = "ARCHIVE"|"NOOP",
      clientToken = "string",
      description = "string",
      findingCriteria = list(
        criterion = list(
          list(
            eq = list(
              "string"
            ),
            eqExactMatch = list(
              "string"
            ),
            gt = 123,
            gte = 123,
            lt = 123,
            lte = 123,
            neq = list(
              "string"
            )
          )
        )
      ),
      name = "string",
      position = 123,
      tags = list(
        "string"
      )
    )
