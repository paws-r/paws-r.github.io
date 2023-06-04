<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>inspector_list_assessment_runs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the assessment runs that correspond to the assessment templates that are specified by the ARNs of the assessment templates

### Description

Lists the assessment runs that correspond to the assessment templates
that are specified by the ARNs of the assessment templates.

### Usage

    inspector_list_assessment_runs(assessmentTemplateArns, filter,
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
id="inspector_list_assessment_runs_:_assessmentTemplateArns">assessmentTemplateArns</code></td>
<td><p>The ARNs that specify the assessment templates whose assessment
runs you want to list.</p></td>
</tr>
<tr class="even">
<td><code
id="inspector_list_assessment_runs_:_filter">filter</code></td>
<td><p>You can use this parameter to specify a subset of data to be
included in the action's response.</p>
<p>For a record to match a filter, all specified filter attributes must
match. When multiple values are specified for a filter attribute, any of
the values can match.</p></td>
</tr>
<tr class="odd">
<td><code
id="inspector_list_assessment_runs_:_nextToken">nextToken</code></td>
<td><p>You can use this parameter when paginating results. Set the value
of this parameter to null on your first call to the
<strong>ListAssessmentRuns</strong> action. Subsequent calls to the
action fill <strong>nextToken</strong> in the request with the value of
<strong>NextToken</strong> from the previous response to continue
listing data.</p></td>
</tr>
<tr class="even">
<td><code
id="inspector_list_assessment_runs_:_maxResults">maxResults</code></td>
<td><p>You can use this parameter to indicate the maximum number of
items that you want in the response. The default value is 10. The
maximum value is 500.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      assessmentRunArns = list(
        "string"
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_assessment_runs(
      assessmentTemplateArns = list(
        "string"
      ),
      filter = list(
        namePattern = "string",
        states = list(
          "CREATED"|"START_DATA_COLLECTION_PENDING"|"START_DATA_COLLECTION_IN_PROGRESS"|"COLLECTING_DATA"|"STOP_DATA_COLLECTION_PENDING"|"DATA_COLLECTED"|"START_EVALUATING_RULES_PENDING"|"EVALUATING_RULES"|"FAILED"|"ERROR"|"COMPLETED"|"COMPLETED_WITH_ERRORS"|"CANCELED"
        ),
        durationRange = list(
          minSeconds = 123,
          maxSeconds = 123
        ),
        rulesPackageArns = list(
          "string"
        ),
        startTimeRange = list(
          beginDate = as.POSIXct(
            "2015-01-01"
          ),
          endDate = as.POSIXct(
            "2015-01-01"
          )
        ),
        completionTimeRange = list(
          beginDate = as.POSIXct(
            "2015-01-01"
          ),
          endDate = as.POSIXct(
            "2015-01-01"
          )
        ),
        stateChangeTimeRange = list(
          beginDate = as.POSIXct(
            "2015-01-01"
          ),
          endDate = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      nextToken = "string",
      maxResults = 123
    )

### Examples

    ## Not run: 
    # Lists the assessment runs that correspond to the assessment templates
    # that are specified by the ARNs of the assessment templates.
    svc$list_assessment_runs(
      assessmentTemplateArns = list(
        "arn:aws:inspector:us-west-2:123456789012:target/0-0kFIPusq/template/0-4r1V2mAw"
      ),
      maxResults = 123L
    )

    ## End(Not run)
