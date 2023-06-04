<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>inspector_describe_assessment_templates</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the assessment templates that are specified by the ARNs of the assessment templates

### Description

Describes the assessment templates that are specified by the ARNs of the
assessment templates.

### Usage

    inspector_describe_assessment_templates(assessmentTemplateArns)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="inspector_describe_assessment_templates_:_assessmentTemplateArns">assessmentTemplateArns</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      assessmentTemplates = list(
        list(
          arn = "string",
          name = "string",
          assessmentTargetArn = "string",
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
          lastAssessmentRunArn = "string",
          assessmentRunCount = 123,
          createdAt = as.POSIXct(
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

    svc$describe_assessment_templates(
      assessmentTemplateArns = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # Describes the assessment templates that are specified by the ARNs of the
    # assessment templates.
    svc$describe_assessment_templates(
      assessmentTemplateArns = list(
        "arn:aws:inspector:us-west-2:123456789012:target/0-0kFIPusq/template/0-4r1V2mAw"
      )
    )

    ## End(Not run)
