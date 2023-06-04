<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_create_domain_name</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new domain name

### Description

Creates a new domain name.

### Usage

    apigateway_create_domain_name(domainName, certificateName,
      certificateBody, certificatePrivateKey, certificateChain,
      certificateArn, regionalCertificateName, regionalCertificateArn,
      endpointConfiguration, tags, securityPolicy, mutualTlsAuthentication,
      ownershipVerificationCertificateArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigateway_create_domain_name_:_domainName">domainName</code></td>
<td><p>[required] The name of the DomainName resource.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_create_domain_name_:_certificateName">certificateName</code></td>
<td><p>The user-friendly name of the certificate that will be used by
edge-optimized endpoint for this domain name.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigateway_create_domain_name_:_certificateBody">certificateBody</code></td>
<td><p>[Deprecated] The body of the server certificate that will be used
by edge-optimized endpoint for this domain name provided by your
certificate authority.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_create_domain_name_:_certificatePrivateKey">certificatePrivateKey</code></td>
<td><p>[Deprecated] Your edge-optimized endpoint's domain name
certificate's private key.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigateway_create_domain_name_:_certificateChain">certificateChain</code></td>
<td><p>[Deprecated] The intermediate certificates and optionally the
root certificate, one after the other without any blank lines, used by
an edge-optimized endpoint for this domain name. If you include the root
certificate, your certificate chain must start with intermediate
certificates and end with the root certificate. Use the intermediate
certificates that were provided by your certificate authority. Do not
include any intermediaries that are not in the chain of trust
path.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_create_domain_name_:_certificateArn">certificateArn</code></td>
<td><p>The reference to an AWS-managed certificate that will be used by
edge-optimized endpoint for this domain name. AWS Certificate Manager is
the only supported source.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigateway_create_domain_name_:_regionalCertificateName">regionalCertificateName</code></td>
<td><p>The user-friendly name of the certificate that will be used by
regional endpoint for this domain name.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_create_domain_name_:_regionalCertificateArn">regionalCertificateArn</code></td>
<td><p>The reference to an AWS-managed certificate that will be used by
regional endpoint for this domain name. AWS Certificate Manager is the
only supported source.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigateway_create_domain_name_:_endpointConfiguration">endpointConfiguration</code></td>
<td><p>The endpoint configuration of this DomainName showing the
endpoint types of the domain name.</p></td>
</tr>
<tr class="even">
<td><code id="apigateway_create_domain_name_:_tags">tags</code></td>
<td><p>The key-value map of strings. The valid character set is
[a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not
start with <code style="white-space: pre;">⁠aws:⁠</code>. The tag value
can be up to 256 characters.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigateway_create_domain_name_:_securityPolicy">securityPolicy</code></td>
<td><p>The Transport Layer Security (TLS) version + cipher suite for
this DomainName. The valid values are <code>TLS_1_0</code> and
<code>TLS_1_2</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_create_domain_name_:_mutualTlsAuthentication">mutualTlsAuthentication</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="apigateway_create_domain_name_:_ownershipVerificationCertificateArn">ownershipVerificationCertificateArn</code></td>
<td><p>The ARN of the public certificate issued by ACM to validate
ownership of your custom domain. Only required when configuring mutual
TLS and using an ACM imported or private CA certificate ARN as the
regionalCertificateArn.</p></td>
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

    svc$create_domain_name(
      domainName = "string",
      certificateName = "string",
      certificateBody = "string",
      certificatePrivateKey = "string",
      certificateChain = "string",
      certificateArn = "string",
      regionalCertificateName = "string",
      regionalCertificateArn = "string",
      endpointConfiguration = list(
        types = list(
          "REGIONAL"|"EDGE"|"PRIVATE"
        ),
        vpcEndpointIds = list(
          "string"
        )
      ),
      tags = list(
        "string"
      ),
      securityPolicy = "TLS_1_0"|"TLS_1_2",
      mutualTlsAuthentication = list(
        truststoreUri = "string",
        truststoreVersion = "string"
      ),
      ownershipVerificationCertificateArn = "string"
    )
