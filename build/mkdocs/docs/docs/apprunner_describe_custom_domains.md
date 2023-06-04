<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apprunner_describe_custom_domains</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Return a description of custom domain names that are associated with an App Runner service

### Description

Return a description of custom domain names that are associated with an
App Runner service.

### Usage

    apprunner_describe_custom_domains(ServiceArn, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apprunner_describe_custom_domains_:_ServiceArn">ServiceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the App Runner
service that you want associated custom domain names to be described
for.</p></td>
</tr>
<tr class="even">
<td><code
id="apprunner_describe_custom_domains_:_NextToken">NextToken</code></td>
<td><p>A token from a previous result page. It's used for a paginated
request. The request retrieves the next result page. All other parameter
values must be identical to the ones that are specified in the initial
request.</p>
<p>If you don't specify <code>NextToken</code>, the request retrieves
the first result page.</p></td>
</tr>
<tr class="odd">
<td><code
id="apprunner_describe_custom_domains_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results that each response (result page)
can include. It's used for a paginated request.</p>
<p>If you don't specify <code>MaxResults</code>, the request retrieves
all available results in a single response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DNSTarget = "string",
      ServiceArn = "string",
      CustomDomains = list(
        list(
          DomainName = "string",
          EnableWWWSubdomain = TRUE|FALSE,
          CertificateValidationRecords = list(
            list(
              Name = "string",
              Type = "string",
              Value = "string",
              Status = "PENDING_VALIDATION"|"SUCCESS"|"FAILED"
            )
          ),
          Status = "CREATING"|"CREATE_FAILED"|"ACTIVE"|"DELETING"|"DELETE_FAILED"|"PENDING_CERTIFICATE_DNS_VALIDATION"|"BINDING_CERTIFICATE"
        )
      ),
      VpcDNSTargets = list(
        list(
          VpcIngressConnectionArn = "string",
          VpcId = "string",
          DomainName = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_custom_domains(
      ServiceArn = "string",
      NextToken = "string",
      MaxResults = 123
    )
