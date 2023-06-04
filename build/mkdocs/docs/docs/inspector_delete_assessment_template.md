<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>inspector_delete_assessment_template</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the assessment template that is specified by the ARN of the assessment template

### Description

Deletes the assessment template that is specified by the ARN of the
assessment template.

### Usage

    inspector_delete_assessment_template(assessmentTemplateArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="inspector_delete_assessment_template_:_assessmentTemplateArn">assessmentTemplateArn</code></td>
<td><p>[required] The ARN that specifies the assessment template that
you want to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_assessment_template(
      assessmentTemplateArn = "string"
    )

### Examples

    ## Not run: 
    # Deletes the assessment template that is specified by the ARN of the
    # assessment template.
    svc$delete_assessment_template(
      assessmentTemplateArn = "arn:aws:inspector:us-west-2:123456789012:target/..."
    )

    ## End(Not run)
