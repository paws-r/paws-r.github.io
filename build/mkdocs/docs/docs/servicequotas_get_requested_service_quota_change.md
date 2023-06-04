<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicequotas_get_requested_service_quota_change</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves information about the specified quota increase request

### Description

Retrieves information about the specified quota increase request.

### Usage

    servicequotas_get_requested_service_quota_change(RequestId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicequotas_get_requested_service_quota_change_:_RequestId">RequestId</code></td>
<td><p>[required] The ID of the quota increase request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RequestedQuota = list(
        Id = "string",
        CaseId = "string",
        ServiceCode = "string",
        ServiceName = "string",
        QuotaCode = "string",
        QuotaName = "string",
        DesiredValue = 123.0,
        Status = "PENDING"|"CASE_OPENED"|"APPROVED"|"DENIED"|"CASE_CLOSED",
        Created = as.POSIXct(
          "2015-01-01"
        ),
        LastUpdated = as.POSIXct(
          "2015-01-01"
        ),
        Requester = "string",
        QuotaArn = "string",
        GlobalQuota = TRUE|FALSE,
        Unit = "string"
      )
    )

### Request syntax

    svc$get_requested_service_quota_change(
      RequestId = "string"
    )
