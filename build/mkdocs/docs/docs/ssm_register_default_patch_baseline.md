<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_register_default_patch_baseline</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Defines the default patch baseline for the relevant operating system

### Description

Defines the default patch baseline for the relevant operating system.

To reset the Amazon Web Services-predefined patch baseline as the
default, specify the full patch baseline Amazon Resource Name (ARN) as
the baseline ID value. For example, for CentOS, specify
`⁠arn:aws:ssm:us-east-2:733109147000:patchbaseline/pb-0574b43a65ea646ed⁠`
instead of `⁠pb-0574b43a65ea646ed⁠`.

### Usage

    ssm_register_default_patch_baseline(BaselineId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_register_default_patch_baseline_:_BaselineId">BaselineId</code></td>
<td><p>[required] The ID of the patch baseline that should be the
default patch baseline.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      BaselineId = "string"
    )

### Request syntax

    svc$register_default_patch_baseline(
      BaselineId = "string"
    )
