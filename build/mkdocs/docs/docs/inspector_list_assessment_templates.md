<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>inspector_list_assessment_templates</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the assessment templates that correspond to the assessment targets that are specified by the ARNs of the assessment targets

### Description

Lists the assessment templates that correspond to the assessment targets
that are specified by the ARNs of the assessment targets.

### Usage

    inspector_list_assessment_templates(assessmentTargetArns, filter,
      nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="inspector_list_assessment_templates_:_assessmentTargetArns">assessmentTargetArns</code></td>
<td><p>A list of ARNs that specifies the assessment targets whose
assessment templates you want to list.</p></td>
</tr>
<tr class="even">
<td><code
id="inspector_list_assessment_templates_:_filter">filter</code></td>
<td><p>You can use this parameter to specify a subset of data to be
included in the action's response.</p>
<p>For a record to match a filter, all specified filter attributes must
match. When multiple values are specified for a filter attribute, any of
the values can match.</p></td>
</tr>
<tr class="odd">
<td><code
id="inspector_list_assessment_templates_:_nextToken">nextToken</code></td>
<td><p>You can use this parameter when paginating results. Set the value
of this parameter to null on your first call to the
<strong>ListAssessmentTemplates</strong> action. Subsequent calls to the
action fill <strong>nextToken</strong> in the request with the value of
<strong>NextToken</strong> from the previous response to continue
listing data.</p></td>
</tr>
<tr class="even">
<td><code
id="inspector_list_assessment_templates_:_maxResults">maxResults</code></td>
<td><p>You can use this parameter to indicate the maximum number of
items you want in the response. The default value is 10. The maximum
value is 500.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      assessmentTemplateArns = list(
        "string"
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_assessment_templates(
      assessmentTargetArns = list(
        "string"
      ),
      filter = list(
        namePattern = "string",
        durationRange = list(
          minSeconds = 123,
          maxSeconds = 123
        ),
        rulesPackageArns = list(
          "string"
        )
      ),
      nextToken = "string",
      maxResults = 123
    )

### Examples

    ## Not run: 
    # Lists the assessment templates that correspond to the assessment targets
    # that are specified by the ARNs of the assessment targets.
    svc$list_assessment_templates(
      assessmentTargetArns = list(
        "arn:aws:inspector:us-west-2:123456789012:target/0-0kFIPusq"
      ),
      maxResults = 123L
    )

    ## End(Not run)
