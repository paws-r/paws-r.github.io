<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>mturk_delete_qualification_type</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The DeleteQualificationType deletes a Qualification type and deletes any HIT types that are associated with the Qualification type

### Description

The `delete_qualification_type` deletes a Qualification type and deletes
any HIT types that are associated with the Qualification type.

This operation does not revoke Qualifications already assigned to
Workers because the Qualifications might be needed for active HITs. If
there are any pending requests for the Qualification type, Amazon
Mechanical Turk rejects those requests. After you delete a Qualification
type, you can no longer use it to create HITs or HIT types.

DeleteQualificationType must wait for all the HITs that use the deleted
Qualification type to be deleted before completing. It may take up to 48
hours before DeleteQualificationType completes and the unique name of
the Qualification type is available for reuse with
CreateQualificationType.

### Usage

    mturk_delete_qualification_type(QualificationTypeId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="mturk_delete_qualification_type_:_QualificationTypeId">QualificationTypeId</code></td>
<td><p>[required] The ID of the QualificationType to dispose.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_qualification_type(
      QualificationTypeId = "string"
    )
