<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchevidently_create_segment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Use this operation to define a segment of your audience

### Description

Use this operation to define a *segment* of your audience. A segment is
a portion of your audience that share one or more characteristics.
Examples could be Chrome browser users, users in Europe, or Firefox
browser users in Europe who also fit other criteria that your
application collects, such as age.

Using a segment in an experiment limits that experiment to evaluate only
the users who match the segment criteria. Using one or more segments in
a launch allows you to define different traffic splits for the different
audience segments.

For more information about segment pattern syntax, see [Segment rule
pattern
syntax](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Evidently-segments.html#CloudWatch-Evidently-segments-syntax.html).

The pattern that you define for a segment is matched against the value
of `evaluationContext`, which is passed into Evidently in the
`evaluate_feature` operation, when Evidently assigns a feature variation
to a user.

### Usage

    cloudwatchevidently_create_segment(description, name, pattern, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchevidently_create_segment_:_description">description</code></td>
<td><p>An optional description for this segment.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevidently_create_segment_:_name">name</code></td>
<td><p>[required] A name for the segment.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchevidently_create_segment_:_pattern">pattern</code></td>
<td><p>[required] The pattern to use for the segment. For more
information about pattern syntax, see <a
href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Evidently-segments.html#CloudWatch-Evidently-segments-syntax.html">Segment
rule pattern syntax</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevidently_create_segment_:_tags">tags</code></td>
<td><p>Assigns one or more tags (key-value pairs) to the segment.</p>
<p>Tags can help you organize and categorize your resources. You can
also use them to scope user permissions by granting a user permission to
access or change only resources with certain tag values.</p>
<p>Tags don't have any semantic meaning to Amazon Web Services and are
interpreted strictly as strings of characters.</p>
<p>You can associate as many as 50 tags with a segment.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html">Tagging
Amazon Web Services resources</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      segment = list(
        arn = "string",
        createdTime = as.POSIXct(
          "2015-01-01"
        ),
        description = "string",
        experimentCount = 123,
        lastUpdatedTime = as.POSIXct(
          "2015-01-01"
        ),
        launchCount = 123,
        name = "string",
        pattern = "string",
        tags = list(
          "string"
        )
      )
    )

### Request syntax

    svc$create_segment(
      description = "string",
      name = "string",
      pattern = "string",
      tags = list(
        "string"
      )
    )
