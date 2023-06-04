<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_get_domain_name</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Represents a domain name that is contained in a simpler, more intuitive URL that can be called

### Description

Represents a domain name that is contained in a simpler, more intuitive
URL that can be called.

### Usage

    apigateway_get_domain_name(domainName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigateway_get_domain_name_:_domainName">domainName</code></td>
<td><p>[required] The name of the DomainName resource.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      domainName = "string",
      certificateName = "string",
      certificateArn = "string",
      certificateUploadDate = as.POSIXct(
        "2015-01-01"
      ),
      regionalDomainName = "string",
      regionalHostedZoneId = "string",
      regionalCertificateName = "string",
      regionalCertificateArn = "string",
      distributionDomainName = "string",
      distributionHostedZoneId = "string",
      endpointConfiguration = list(
        types = list(
          "REGIONAL"|"EDGE"|"PRIVATE"
        ),
        vpcEndpointIds = list(
          "string"
        )
      ),
      domainNameStatus = "AVAILABLE"|"UPDATING"|"PENDING"|"PENDING_CERTIFICATE_REIMPORT"|"PENDING_OWNERSHIP_VERIFICATION",
      domainNameStatusMessage = "string",
      securityPolicy = "TLS_1_0"|"TLS_1_2",
      tags = list(
        "string"
      ),
      mutualTlsAuthentication = list(
        truststoreUri = "string",
        truststoreVersion = "string",
        truststoreWarnings = list(
          "string"
        )
      ),
      ownershipVerificationCertificateArn = "string"
    )

### Request syntax

    svc$get_domain_name(
      domainName = "string"
    )
