<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_delete_patch_baseline</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a patch baseline

### Description

Deletes a patch baseline.

### Usage

    ssm_delete_patch_baseline(BaselineId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_delete_patch_baseline_:_BaselineId">BaselineId</code></td>
<td><p>[required] The ID of the patch baseline to delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      BaselineId = "string"
    )

### Request syntax

    svc$delete_patch_baseline(
      BaselineId = "string"
    )
