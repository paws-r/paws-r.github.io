<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>auditmanager_update_assessment_framework_share</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a share request for a custom framework in Audit Manager

### Description

Updates a share request for a custom framework in Audit Manager.

### Usage

    auditmanager_update_assessment_framework_share(requestId, requestType,
      action)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="auditmanager_update_assessment_framework_share_:_requestId">requestId</code></td>
<td><p>[required] The unique identifier for the share request.</p></td>
</tr>
<tr class="even">
<td><code
id="auditmanager_update_assessment_framework_share_:_requestType">requestType</code></td>
<td><p>[required] Specifies whether the share request is a sent request
or a received request.</p></td>
</tr>
<tr class="odd">
<td><code
id="auditmanager_update_assessment_framework_share_:_action">action</code></td>
<td><p>[required] Specifies the update action for the share
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      assessmentFrameworkShareRequest = list(
        id = "string",
        frameworkId = "string",
        frameworkName = "string",
        frameworkDescription = "string",
        status = "ACTIVE"|"REPLICATING"|"SHARED"|"EXPIRING"|"FAILED"|"EXPIRED"|"DECLINED"|"REVOKED",
        sourceAccount = "string",
        destinationAccount = "string",
        destinationRegion = "string",
        expirationTime = as.POSIXct(
          "2015-01-01"
        ),
        creationTime = as.POSIXct(
          "2015-01-01"
        ),
        lastUpdated = as.POSIXct(
          "2015-01-01"
        ),
        comment = "string",
        standardControlsCount = 123,
        customControlsCount = 123,
        complianceType = "string"
      )
    )

### Request syntax

    svc$update_assessment_framework_share(
      requestId = "string",
      requestType = "SENT"|"RECEIVED",
      action = "ACCEPT"|"DECLINE"|"REVOKE"
    )
