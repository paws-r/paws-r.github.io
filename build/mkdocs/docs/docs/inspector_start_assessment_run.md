<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>inspector_start_assessment_run</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts the assessment run specified by the ARN of the assessment template

### Description

Starts the assessment run specified by the ARN of the assessment
template. For this API to function properly, you must not exceed the
limit of running up to 500 concurrent agents per AWS account.

### Usage

    inspector_start_assessment_run(assessmentTemplateArn, assessmentRunName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="inspector_start_assessment_run_:_assessmentTemplateArn">assessmentTemplateArn</code></td>
<td><p>[required] The ARN of the assessment template of the assessment
run that you want to start.</p></td>
</tr>
<tr class="even">
<td><code
id="inspector_start_assessment_run_:_assessmentRunName">assessmentRunName</code></td>
<td><p>You can specify the name for the assessment run. The name must be
unique for the assessment template whose ARN is used to start the
assessment run.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      assessmentRunArn = "string"
    )

### Request syntax

    svc$start_assessment_run(
      assessmentTemplateArn = "string",
      assessmentRunName = "string"
    )

### Examples

    ## Not run: 
    # Starts the assessment run specified by the ARN of the assessment
    # template. For this API to function properly, you must not exceed the
    # limit of running up to 500 concurrent agents per AWS account.
    svc$start_assessment_run(
      assessmentRunName = "examplerun",
      assessmentTemplateArn = "arn:aws:inspector:us-west-2:123456789012:target/..."
    )

    ## End(Not run)
