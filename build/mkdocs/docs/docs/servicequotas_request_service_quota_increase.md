<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicequotas_request_service_quota_increase</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Submits a quota increase request for the specified quota

### Description

Submits a quota increase request for the specified quota.

### Usage

    servicequotas_request_service_quota_increase(ServiceCode, QuotaCode,
      DesiredValue)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicequotas_request_service_quota_increase_:_ServiceCode">ServiceCode</code></td>
<td><p>[required] The service identifier.</p></td>
</tr>
<tr class="even">
<td><code
id="servicequotas_request_service_quota_increase_:_QuotaCode">QuotaCode</code></td>
<td><p>[required] The quota identifier.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicequotas_request_service_quota_increase_:_DesiredValue">DesiredValue</code></td>
<td><p>[required] The new, increased value for the quota.</p></td>
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

    svc$request_service_quota_increase(
      ServiceCode = "string",
      QuotaCode = "string",
      DesiredValue = 123.0
    )
