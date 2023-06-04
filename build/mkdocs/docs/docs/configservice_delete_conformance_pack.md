<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_delete_conformance_pack</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified conformance pack and all the Config rules, remediation actions, and all evaluation results within that conformance pack

### Description

Deletes the specified conformance pack and all the Config rules,
remediation actions, and all evaluation results within that conformance
pack.

Config sets the conformance pack to `DELETE_IN_PROGRESS` until the
deletion is complete. You cannot update a conformance pack while it is
in this state.

### Usage

    configservice_delete_conformance_pack(ConformancePackName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="configservice_delete_conformance_pack_:_ConformancePackName">ConformancePackName</code></td>
<td><p>[required] Name of the conformance pack you want to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_conformance_pack(
      ConformancePackName = "string"
    )
