<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apprunner_disassociate_custom_domain</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disassociate a custom domain name from an App Runner service

### Description

Disassociate a custom domain name from an App Runner service.

Certificates tracking domain validity are associated with a custom
domain and are stored in [AWS Certificate Manager
(ACM)](https://docs.aws.amazon.com/acm/latest/userguide/). These
certificates aren't deleted as part of this action. App Runner delays
certificate deletion for 30 days after a domain is disassociated from
your service.

### Usage

    apprunner_disassociate_custom_domain(ServiceArn, DomainName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apprunner_disassociate_custom_domain_:_ServiceArn">ServiceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the App Runner
service that you want to disassociate a custom domain name
from.</p></td>
</tr>
<tr class="even">
<td><code
id="apprunner_disassociate_custom_domain_:_DomainName">DomainName</code></td>
<td><p>[required] The domain name that you want to disassociate from the
App Runner service.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DNSTarget = "string",
      ServiceArn = "string",
      CustomDomain = list(
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
      ),
      VpcDNSTargets = list(
        list(
          VpcIngressConnectionArn = "string",
          VpcId = "string",
          DomainName = "string"
        )
      )
    )

### Request syntax

    svc$disassociate_custom_domain(
      ServiceArn = "string",
      DomainName = "string"
    )
