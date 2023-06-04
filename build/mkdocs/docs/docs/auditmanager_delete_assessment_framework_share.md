<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>auditmanager_delete_assessment_framework_share</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a share request for a custom framework in Audit Manager

### Description

Deletes a share request for a custom framework in Audit Manager.

### Usage

    auditmanager_delete_assessment_framework_share(requestId, requestType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="auditmanager_delete_assessment_framework_share_:_requestId">requestId</code></td>
<td><p>[required] The unique identifier for the share request to be
deleted.</p></td>
</tr>
<tr class="even">
<td><code
id="auditmanager_delete_assessment_framework_share_:_requestType">requestType</code></td>
<td><p>[required] Specifies whether the share request is a sent request
or a received request.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_assessment_framework_share(
      requestId = "string",
      requestType = "SENT"|"RECEIVED"
    )
