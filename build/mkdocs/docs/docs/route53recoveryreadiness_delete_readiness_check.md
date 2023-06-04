<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53recoveryreadiness_delete_readiness_check</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a readiness check

### Description

Deletes a readiness check.

### Usage

    route53recoveryreadiness_delete_readiness_check(ReadinessCheckName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53recoveryreadiness_delete_readiness_check_:_ReadinessCheckName">ReadinessCheckName</code></td>
<td><p>[required] Name of a readiness check.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_readiness_check(
      ReadinessCheckName = "string"
    )
