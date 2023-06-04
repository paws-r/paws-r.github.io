<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>inspector_delete_assessment_target</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the assessment target that is specified by the ARN of the assessment target

### Description

Deletes the assessment target that is specified by the ARN of the
assessment target.

### Usage

    inspector_delete_assessment_target(assessmentTargetArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="inspector_delete_assessment_target_:_assessmentTargetArn">assessmentTargetArn</code></td>
<td><p>[required] The ARN that specifies the assessment target that you
want to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_assessment_target(
      assessmentTargetArn = "string"
    )

### Examples

    ## Not run: 
    # Deletes the assessment target that is specified by the ARN of the
    # assessment target.
    svc$delete_assessment_target(
      assessmentTargetArn = "arn:aws:inspector:us-west-2:123456789012:target/0-0kFIPusq"
    )

    ## End(Not run)
