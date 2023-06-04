<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicequotas_put_service_quota_increase_request_into_template</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds a quota increase request to your quota request template

### Description

Adds a quota increase request to your quota request template.

### Usage

    servicequotas_put_service_quota_increase_request_into_template(
      QuotaCode, ServiceCode, AwsRegion, DesiredValue)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicequotas_put_service_quota_increase_request_into_template_:_QuotaCode">QuotaCode</code></td>
<td><p>[required] The quota identifier.</p></td>
</tr>
<tr class="even">
<td><code
id="servicequotas_put_service_quota_increase_request_into_template_:_ServiceCode">ServiceCode</code></td>
<td><p>[required] The service identifier.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicequotas_put_service_quota_increase_request_into_template_:_AwsRegion">AwsRegion</code></td>
<td><p>[required] The AWS Region.</p></td>
</tr>
<tr class="even">
<td><code
id="servicequotas_put_service_quota_increase_request_into_template_:_DesiredValue">DesiredValue</code></td>
<td><p>[required] The new, increased value for the quota.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ServiceQuotaIncreaseRequestInTemplate = list(
        ServiceCode = "string",
        ServiceName = "string",
        QuotaCode = "string",
        QuotaName = "string",
        DesiredValue = 123.0,
        AwsRegion = "string",
        Unit = "string",
        GlobalQuota = TRUE|FALSE
      )
    )

### Request syntax

    svc$put_service_quota_increase_request_into_template(
      QuotaCode = "string",
      ServiceCode = "string",
      AwsRegion = "string",
      DesiredValue = 123.0
    )
