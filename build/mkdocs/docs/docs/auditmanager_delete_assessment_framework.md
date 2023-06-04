<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>auditmanager_delete_assessment_framework</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a custom framework in Audit Manager

### Description

Deletes a custom framework in Audit Manager.

### Usage

    auditmanager_delete_assessment_framework(frameworkId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="auditmanager_delete_assessment_framework_:_frameworkId">frameworkId</code></td>
<td><p>[required] The identifier for the custom framework.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_assessment_framework(
      frameworkId = "string"
    )
