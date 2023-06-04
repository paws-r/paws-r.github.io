<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>inspector_describe_assessment_runs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the assessment runs that are specified by the ARNs of the assessment runs

### Description

Describes the assessment runs that are specified by the ARNs of the
assessment runs.

### Usage

    inspector_describe_assessment_runs(assessmentRunArns)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="inspector_describe_assessment_runs_:_assessmentRunArns">assessmentRunArns</code></td>
<td><p>[required] The ARN that specifies the assessment run that you
want to describe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      assessmentRuns = list(
        list(
          arn = "string",
          name = "string",
          assessmentTemplateArn = "string",
          state = "CREATED"|"START_DATA_COLLECTION_PENDING"|"START_DATA_COLLECTION_IN_PROGRESS"|"COLLECTING_DATA"|"STOP_DATA_COLLECTION_PENDING"|"DATA_COLLECTED"|"START_EVALUATING_RULES_PENDING"|"EVALUATING_RULES"|"FAILED"|"ERROR"|"COMPLETED"|"COMPLETED_WITH_ERRORS"|"CANCELED",
          durationInSeconds = 123,
          rulesPackageArns = list(
            "string"
          ),
          userAttributesForFindings = list(
            list(
              key = "string",
              value = "string"
            )
          ),
          createdAt = as.POSIXct(
            "2015-01-01"
          ),
          startedAt = as.POSIXct(
            "2015-01-01"
          ),
          completedAt = as.POSIXct(
            "2015-01-01"
          ),
          stateChangedAt = as.POSIXct(
            "2015-01-01"
          ),
          dataCollected = TRUE|FALSE,
          stateChanges = list(
            list(
              stateChangedAt = as.POSIXct(
                "2015-01-01"
              ),
              state = "CREATED"|"START_DATA_COLLECTION_PENDING"|"START_DATA_COLLECTION_IN_PROGRESS"|"COLLECTING_DATA"|"STOP_DATA_COLLECTION_PENDING"|"DATA_COLLECTED"|"START_EVALUATING_RULES_PENDING"|"EVALUATING_RULES"|"FAILED"|"ERROR"|"COMPLETED"|"COMPLETED_WITH_ERRORS"|"CANCELED"
            )
          ),
          notifications = list(
            list(
              date = as.POSIXct(
                "2015-01-01"
              ),
              event = "ASSESSMENT_RUN_STARTED"|"ASSESSMENT_RUN_COMPLETED"|"ASSESSMENT_RUN_STATE_CHANGED"|"FINDING_REPORTED"|"OTHER",
              message = "string",
              error = TRUE|FALSE,
              snsTopicArn = "string",
              snsPublishStatusCode = "SUCCESS"|"TOPIC_DOES_NOT_EXIST"|"ACCESS_DENIED"|"INTERNAL_ERROR"
            )
          ),
          findingCounts = list(
            123
          )
        )
      ),
      failedItems = list(
        list(
          failureCode = "INVALID_ARN"|"DUPLICATE_ARN"|"ITEM_DOES_NOT_EXIST"|"ACCESS_DENIED"|"LIMIT_EXCEEDED"|"INTERNAL_ERROR",
          retryable = TRUE|FALSE
        )
      )
    )

### Request syntax

    svc$describe_assessment_runs(
      assessmentRunArns = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # Describes the assessment runs that are specified by the ARNs of the
    # assessment runs.
    svc$describe_assessment_runs(
      assessmentRunArns = list(
        "arn:aws:inspector:us-west-2:123456789012:target/0-0kFIPusq/template/0-..."
      )
    )

    ## End(Not run)
