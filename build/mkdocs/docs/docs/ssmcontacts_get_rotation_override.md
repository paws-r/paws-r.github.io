<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssmcontacts_get_rotation_override</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves information about an override to an on-call rotation

### Description

Retrieves information about an override to an on-call rotation.

### Usage

    ssmcontacts_get_rotation_override(RotationId, RotationOverrideId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssmcontacts_get_rotation_override_:_RotationId">RotationId</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the overridden
rotation to retrieve information about.</p></td>
</tr>
<tr class="even">
<td><code
id="ssmcontacts_get_rotation_override_:_RotationOverrideId">RotationOverrideId</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the on-call rotation
override to retrieve information about.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RotationOverrideId = "string",
      RotationArn = "string",
      NewContactIds = list(
        "string"
      ),
      StartTime = as.POSIXct(
        "2015-01-01"
      ),
      EndTime = as.POSIXct(
        "2015-01-01"
      ),
      CreateTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$get_rotation_override(
      RotationId = "string",
      RotationOverrideId = "string"
    )
