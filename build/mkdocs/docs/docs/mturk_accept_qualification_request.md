<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>mturk_accept_qualification_request</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The AcceptQualificationRequest operation approves a Worker's request for a Qualification

### Description

The `accept_qualification_request` operation approves a Worker's request
for a Qualification.

Only the owner of the Qualification type can grant a Qualification
request for that type.

A successful request for the `accept_qualification_request` operation
returns with no errors and an empty body.

### Usage

    mturk_accept_qualification_request(QualificationRequestId, IntegerValue)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="mturk_accept_qualification_request_:_QualificationRequestId">QualificationRequestId</code></td>
<td><p>[required] The ID of the Qualification request, as returned by
the <code>GetQualificationRequests</code> operation.</p></td>
</tr>
<tr class="even">
<td><code
id="mturk_accept_qualification_request_:_IntegerValue">IntegerValue</code></td>
<td><p>The value of the Qualification. You can omit this value if you
are using the presence or absence of the Qualification as the basis for
a HIT requirement.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$accept_qualification_request(
      QualificationRequestId = "string",
      IntegerValue = 123
    )
