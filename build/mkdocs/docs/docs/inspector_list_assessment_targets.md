<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>inspector_list_assessment_targets</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the ARNs of the assessment targets within this AWS account

### Description

Lists the ARNs of the assessment targets within this AWS account. For
more information about assessment targets, see [Amazon Inspector
Assessment
Targets](https://docs.aws.amazon.com/inspector/v1/userguide/inspector_applications.html).

### Usage

    inspector_list_assessment_targets(filter, nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="inspector_list_assessment_targets_:_filter">filter</code></td>
<td><p>You can use this parameter to specify a subset of data to be
included in the action's response.</p>
<p>For a record to match a filter, all specified filter attributes must
match. When multiple values are specified for a filter attribute, any of
the values can match.</p></td>
</tr>
<tr class="even">
<td><code
id="inspector_list_assessment_targets_:_nextToken">nextToken</code></td>
<td><p>You can use this parameter when paginating results. Set the value
of this parameter to null on your first call to the
<strong>ListAssessmentTargets</strong> action. Subsequent calls to the
action fill <strong>nextToken</strong> in the request with the value of
<strong>NextToken</strong> from the previous response to continue
listing data.</p></td>
</tr>
<tr class="odd">
<td><code
id="inspector_list_assessment_targets_:_maxResults">maxResults</code></td>
<td><p>You can use this parameter to indicate the maximum number of
items you want in the response. The default value is 10. The maximum
value is 500.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      assessmentTargetArns = list(
        "string"
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_assessment_targets(
      filter = list(
        assessmentTargetNamePattern = "string"
      ),
      nextToken = "string",
      maxResults = 123
    )

### Examples

    ## Not run: 
    # Lists the ARNs of the assessment targets within this AWS account.
    svc$list_assessment_targets(
      maxResults = 123L
    )

    ## End(Not run)
