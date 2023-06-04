<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>inspector_update_assessment_target</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the assessment target that is specified by the ARN of the assessment target

### Description

Updates the assessment target that is specified by the ARN of the
assessment target.

If resourceGroupArn is not specified, all EC2 instances in the current
AWS account and region are included in the assessment target.

### Usage

    inspector_update_assessment_target(assessmentTargetArn,
      assessmentTargetName, resourceGroupArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="inspector_update_assessment_target_:_assessmentTargetArn">assessmentTargetArn</code></td>
<td><p>[required] The ARN of the assessment target that you want to
update.</p></td>
</tr>
<tr class="even">
<td><code
id="inspector_update_assessment_target_:_assessmentTargetName">assessmentTargetName</code></td>
<td><p>[required] The name of the assessment target that you want to
update.</p></td>
</tr>
<tr class="odd">
<td><code
id="inspector_update_assessment_target_:_resourceGroupArn">resourceGroupArn</code></td>
<td><p>The ARN of the resource group that is used to specify the new
resource group to associate with the assessment target.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_assessment_target(
      assessmentTargetArn = "string",
      assessmentTargetName = "string",
      resourceGroupArn = "string"
    )

### Examples

    ## Not run: 
    # Updates the assessment target that is specified by the ARN of the
    # assessment target.
    svc$update_assessment_target(
      assessmentTargetArn = "arn:aws:inspector:us-west-2:123456789012:target/0-nvgVhaxX",
      assessmentTargetName = "Example",
      resourceGroupArn = "arn:aws:inspector:us-west-2:123456789012:resourcegroup/0-yNbgL5Pt"
    )

    ## End(Not run)
