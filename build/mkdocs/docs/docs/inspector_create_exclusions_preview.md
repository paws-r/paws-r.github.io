<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>inspector_create_exclusions_preview</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts the generation of an exclusions preview for the specified assessment template

### Description

Starts the generation of an exclusions preview for the specified
assessment template. The exclusions preview lists the potential
exclusions (ExclusionPreview) that Inspector can detect before it runs
the assessment.

### Usage

    inspector_create_exclusions_preview(assessmentTemplateArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="inspector_create_exclusions_preview_:_assessmentTemplateArn">assessmentTemplateArn</code></td>
<td><p>[required] The ARN that specifies the assessment template for
which you want to create an exclusions preview.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      previewToken = "string"
    )

### Request syntax

    svc$create_exclusions_preview(
      assessmentTemplateArn = "string"
    )
