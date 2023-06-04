<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicequotas_list_service_quota_increase_requests_in_template</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the quota increase requests in the specified quota request template

### Description

Lists the quota increase requests in the specified quota request
template.

### Usage

    servicequotas_list_service_quota_increase_requests_in_template(
      ServiceCode, AwsRegion, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicequotas_list_service_quota_increase_requests_in_template_:_ServiceCode">ServiceCode</code></td>
<td><p>The service identifier.</p></td>
</tr>
<tr class="even">
<td><code
id="servicequotas_list_service_quota_increase_requests_in_template_:_AwsRegion">AwsRegion</code></td>
<td><p>The AWS Region.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicequotas_list_service_quota_increase_requests_in_template_:_NextToken">NextToken</code></td>
<td><p>The token for the next page of results.</p></td>
</tr>
<tr class="even">
<td><code
id="servicequotas_list_service_quota_increase_requests_in_template_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return with a single call. To
retrieve the remaining results, if any, make another call with the token
returned from this call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ServiceQuotaIncreaseRequestInTemplateList = list(
        list(
          ServiceCode = "string",
          ServiceName = "string",
          QuotaCode = "string",
          QuotaName = "string",
          DesiredValue = 123.0,
          AwsRegion = "string",
          Unit = "string",
          GlobalQuota = TRUE|FALSE
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_service_quota_increase_requests_in_template(
      ServiceCode = "string",
      AwsRegion = "string",
      NextToken = "string",
      MaxResults = 123
    )
