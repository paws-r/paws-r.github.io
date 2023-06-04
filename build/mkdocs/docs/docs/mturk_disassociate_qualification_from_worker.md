<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>mturk_disassociate_qualification_from_worker</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The DisassociateQualificationFromWorker revokes a previously granted Qualification from a user

### Description

The `disassociate_qualification_from_worker` revokes a previously
granted Qualification from a user.

You can provide a text message explaining why the Qualification was
revoked. The user who had the Qualification can see this message.

### Usage

    mturk_disassociate_qualification_from_worker(WorkerId,
      QualificationTypeId, Reason)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="mturk_disassociate_qualification_from_worker_:_WorkerId">WorkerId</code></td>
<td><p>[required] The ID of the Worker who possesses the Qualification
to be revoked.</p></td>
</tr>
<tr class="even">
<td><code
id="mturk_disassociate_qualification_from_worker_:_QualificationTypeId">QualificationTypeId</code></td>
<td><p>[required] The ID of the Qualification type of the Qualification
to be revoked.</p></td>
</tr>
<tr class="odd">
<td><code
id="mturk_disassociate_qualification_from_worker_:_Reason">Reason</code></td>
<td><p>A text message that explains why the Qualification was revoked.
The user who had the Qualification sees this message.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$disassociate_qualification_from_worker(
      WorkerId = "string",
      QualificationTypeId = "string",
      Reason = "string"
    )
