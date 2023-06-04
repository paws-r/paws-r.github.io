<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigatewayv2_get_domain_names</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the domain names for an AWS account

### Description

Gets the domain names for an AWS account.

### Usage

    apigatewayv2_get_domain_names(MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigatewayv2_get_domain_names_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of elements to be returned for this
resource.</p></td>
</tr>
<tr class="even">
<td><code
id="apigatewayv2_get_domain_names_:_NextToken">NextToken</code></td>
<td><p>The next page of elements from this collection. Not valid for the
last element of the collection.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Items = list(
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
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_domain_names(
      MaxResults = "string",
      NextToken = "string"
    )
