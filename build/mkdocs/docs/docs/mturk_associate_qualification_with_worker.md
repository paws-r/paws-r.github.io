<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>mturk_associate_qualification_with_worker</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The AssociateQualificationWithWorker operation gives a Worker a Qualification

### Description

The `associate_qualification_with_worker` operation gives a Worker a
Qualification. `associate_qualification_with_worker` does not require
that the Worker submit a Qualification request. It gives the
Qualification directly to the Worker.

You can only assign a Qualification of a Qualification type that you
created (using the `create_qualification_type` operation).

Note: `associate_qualification_with_worker` does not affect any pending
Qualification requests for the Qualification by the Worker. If you
assign a Qualification to a Worker, then later grant a Qualification
request made by the Worker, the granting of the request may modify the
Qualification score. To resolve a pending Qualification request without
affecting the Qualification the Worker already has, reject the request
with the `reject_qualification_request` operation.

### Usage

    mturk_associate_qualification_with_worker(QualificationTypeId, WorkerId,
      IntegerValue, SendNotification)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="mturk_associate_qualification_with_worker_:_QualificationTypeId">QualificationTypeId</code></td>
<td><p>[required] The ID of the Qualification type to use for the
assigned Qualification.</p></td>
</tr>
<tr class="even">
<td><code
id="mturk_associate_qualification_with_worker_:_WorkerId">WorkerId</code></td>
<td><p>[required] The ID of the Worker to whom the Qualification is
being assigned. Worker IDs are included with submitted HIT assignments
and Qualification requests.</p></td>
</tr>
<tr class="odd">
<td><code
id="mturk_associate_qualification_with_worker_:_IntegerValue">IntegerValue</code></td>
<td><p>The value of the Qualification to assign.</p></td>
</tr>
<tr class="even">
<td><code
id="mturk_associate_qualification_with_worker_:_SendNotification">SendNotification</code></td>
<td><p>Specifies whether to send a notification email message to the
Worker saying that the qualification was assigned to the Worker. Note:
this is true by default.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$associate_qualification_with_worker(
      QualificationTypeId = "string",
      WorkerId = "string",
      IntegerValue = 123,
      SendNotification = TRUE|FALSE
    )
