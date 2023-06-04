<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>shield_delete_protection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an Shield Advanced Protection

### Description

Deletes an Shield Advanced Protection.

### Usage

    shield_delete_protection(ProtectionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="shield_delete_protection_:_ProtectionId">ProtectionId</code></td>
<td><p>[required] The unique identifier (ID) for the Protection object
to be deleted.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_protection(
      ProtectionId = "string"
    )
