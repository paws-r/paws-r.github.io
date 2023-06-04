<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>inspector_delete_assessment_run</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the assessment run that is specified by the ARN of the assessment run

### Description

Deletes the assessment run that is specified by the ARN of the
assessment run.

### Usage

    inspector_delete_assessment_run(assessmentRunArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="inspector_delete_assessment_run_:_assessmentRunArn">assessmentRunArn</code></td>
<td><p>[required] The ARN that specifies the assessment run that you
want to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_assessment_run(
      assessmentRunArn = "string"
    )

### Examples

    ## Not run: 
    # Deletes the assessment run that is specified by the ARN of the
    # assessment run.
    svc$delete_assessment_run(
      assessmentRunArn = "arn:aws:inspector:us-west-2:123456789012:target/0-nvg..."
    )

    ## End(Not run)
