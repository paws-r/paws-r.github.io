<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicequotas_get_service_quota_increase_request_from_template</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves information about the specified quota increase request in your quota request template

### Description

Retrieves information about the specified quota increase request in your
quota request template.

### Usage

    servicequotas_get_service_quota_increase_request_from_template(
      ServiceCode, QuotaCode, AwsRegion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicequotas_get_service_quota_increase_request_from_template_:_ServiceCode">ServiceCode</code></td>
<td><p>[required] The service identifier.</p></td>
</tr>
<tr class="even">
<td><code
id="servicequotas_get_service_quota_increase_request_from_template_:_QuotaCode">QuotaCode</code></td>
<td><p>[required] The quota identifier.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicequotas_get_service_quota_increase_request_from_template_:_AwsRegion">AwsRegion</code></td>
<td><p>[required] The AWS Region.</p></td>
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

    svc$get_service_quota_increase_request_from_template(
      ServiceCode = "string",
      QuotaCode = "string",
      AwsRegion = "string"
    )
