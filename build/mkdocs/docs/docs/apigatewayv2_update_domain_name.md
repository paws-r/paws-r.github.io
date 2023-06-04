<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigatewayv2_update_domain_name</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a domain name

### Description

Updates a domain name.

### Usage

    apigatewayv2_update_domain_name(DomainName, DomainNameConfigurations,
      MutualTlsAuthentication)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigatewayv2_update_domain_name_:_DomainName">DomainName</code></td>
<td><p>[required] The domain name.</p></td>
</tr>
<tr class="even">
<td><code
id="apigatewayv2_update_domain_name_:_DomainNameConfigurations">DomainNameConfigurations</code></td>
<td><p>The domain name configurations.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigatewayv2_update_domain_name_:_MutualTlsAuthentication">MutualTlsAuthentication</code></td>
<td><p>The mutual TLS authentication configuration for a custom domain
name.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ApiMappingSelectionExpression = "string",
      DomainName = "string",
      DomainNameConfigurations = list(
        list(
          ApiGatewayDomainName = "string",
          CertificateArn = "string",
          CertificateName = "string",
          CertificateUploadDate = as.POSIXct(
            "2015-01-01"
          ),
          DomainNameStatus = "AVAILABLE"|"UPDATING"|"PENDING_CERTIFICATE_REIMPORT"|"PENDING_OWNERSHIP_VERIFICATION",
          DomainNameStatusMessage = "string",
          EndpointType = "REGIONAL"|"EDGE",
          HostedZoneId = "string",
          SecurityPolicy = "TLS_1_0"|"TLS_1_2",
          OwnershipVerificationCertificateArn = "string"
        )
      ),
      MutualTlsAuthentication = list(
        TruststoreUri = "string",
        TruststoreVersion = "string",
        TruststoreWarnings = list(
          "string"
        )
      ),
      Tags = list(
        "string"
      )
    )

### Request syntax

    svc$update_domain_name(
      DomainName = "string",
      DomainNameConfigurations = list(
        list(
          ApiGatewayDomainName = "string",
          CertificateArn = "string",
          CertificateName = "string",
          CertificateUploadDate = as.POSIXct(
            "2015-01-01"
          ),
          DomainNameStatus = "AVAILABLE"|"UPDATING"|"PENDING_CERTIFICATE_REIMPORT"|"PENDING_OWNERSHIP_VERIFICATION",
          DomainNameStatusMessage = "string",
          EndpointType = "REGIONAL"|"EDGE",
          HostedZoneId = "string",
          SecurityPolicy = "TLS_1_0"|"TLS_1_2",
          OwnershipVerificationCertificateArn = "string"
        )
      ),
      MutualTlsAuthentication = list(
        TruststoreUri = "string",
        TruststoreVersion = "string"
      )
    )
