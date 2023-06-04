<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>inspector_describe_assessment_targets</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the assessment targets that are specified by the ARNs of the assessment targets

### Description

Describes the assessment targets that are specified by the ARNs of the
assessment targets.

### Usage

    inspector_describe_assessment_targets(assessmentTargetArns)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="inspector_describe_assessment_targets_:_assessmentTargetArns">assessmentTargetArns</code></td>
<td><p>[required] The ARNs that specifies the assessment targets that
you want to describe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      assessmentTargets = list(
        list(
          arn = "string",
          name = "string",
          resourceGroupArn = "string",
          createdAt = as.POSIXct(
            "2015-01-01"
          ),
          updatedAt = as.POSIXct(
            "2015-01-01"
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

    svc$describe_assessment_targets(
      assessmentTargetArns = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # Describes the assessment targets that are specified by the ARNs of the
    # assessment targets.
    svc$describe_assessment_targets(
      assessmentTargetArns = list(
        "arn:aws:inspector:us-west-2:123456789012:target/0-0kFIPusq"
      )
    )

    ## End(Not run)
