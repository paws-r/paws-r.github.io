<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssmcontacts_create_rotation_override</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an override for a rotation in an on-call schedule

### Description

Creates an override for a rotation in an on-call schedule.

### Usage

    ssmcontacts_create_rotation_override(RotationId, NewContactIds,
      StartTime, EndTime, IdempotencyToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssmcontacts_create_rotation_override_:_RotationId">RotationId</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the rotation to
create an override for.</p></td>
</tr>
<tr class="even">
<td><code
id="ssmcontacts_create_rotation_override_:_NewContactIds">NewContactIds</code></td>
<td><p>[required] The Amazon Resource Names (ARNs) of the contacts to
replace those in the current on-call rotation with.</p>
<p>If you want to include any current team members in the override
shift, you must include their ARNs in the new contact ID list.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssmcontacts_create_rotation_override_:_StartTime">StartTime</code></td>
<td><p>[required] The date and time when the override goes into
effect.</p></td>
</tr>
<tr class="even">
<td><code
id="ssmcontacts_create_rotation_override_:_EndTime">EndTime</code></td>
<td><p>[required] The date and time when the override ends.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssmcontacts_create_rotation_override_:_IdempotencyToken">IdempotencyToken</code></td>
<td><p>A token that ensures that the operation is called only once with
the specified details.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RotationOverrideId = "string"
    )

### Request syntax

    svc$create_rotation_override(
      RotationId = "string",
      NewContactIds = list(
        "string"
      ),
      StartTime = as.POSIXct(
        "2015-01-01"
      ),
      EndTime = as.POSIXct(
        "2015-01-01"
      ),
      IdempotencyToken = "string"
    )
