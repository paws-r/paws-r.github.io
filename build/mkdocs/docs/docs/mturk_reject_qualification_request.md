<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>mturk_reject_qualification_request</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The RejectQualificationRequest operation rejects a user's request for a Qualification

### Description

The `reject_qualification_request` operation rejects a user's request
for a Qualification.

You can provide a text message explaining why the request was rejected.
The Worker who made the request can see this message.

### Usage

    mturk_reject_qualification_request(QualificationRequestId, Reason)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="mturk_reject_qualification_request_:_QualificationRequestId">QualificationRequestId</code></td>
<td><p>[required] The ID of the Qualification request, as returned by
the <code>list_qualification_requests</code> operation.</p></td>
</tr>
<tr class="even">
<td><code
id="mturk_reject_qualification_request_:_Reason">Reason</code></td>
<td><p>A text message explaining why the request was rejected, to be
shown to the Worker who made the request.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$reject_qualification_request(
      QualificationRequestId = "string",
      Reason = "string"
    )
