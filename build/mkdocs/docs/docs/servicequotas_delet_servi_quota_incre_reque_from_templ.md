<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicequotas_delete_service_quota_increase_request_from_template</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the quota increase request for the specified quota from your quota request template

### Description

Deletes the quota increase request for the specified quota from your
quota request template.

### Usage

    servicequotas_delete_service_quota_increase_request_from_template(
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
id="servicequotas_delete_service_quota_increase_request_from_template_:_ServiceCode">ServiceCode</code></td>
<td><p>[required] The service identifier.</p></td>
</tr>
<tr class="even">
<td><code
id="servicequotas_delete_service_quota_increase_request_from_template_:_QuotaCode">QuotaCode</code></td>
<td><p>[required] The quota identifier.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicequotas_delete_service_quota_increase_request_from_template_:_AwsRegion">AwsRegion</code></td>
<td><p>[required] The AWS Region.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_service_quota_increase_request_from_template(
      ServiceCode = "string",
      QuotaCode = "string",
      AwsRegion = "string"
    )
