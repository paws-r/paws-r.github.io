<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lightsail_get_certificates</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about one or more Amazon Lightsail SSL/TLS certificates

### Description

Returns information about one or more Amazon Lightsail SSL/TLS
certificates.

To get a summary of a certificate, ommit `includeCertificateDetails`
from your request. The response will include only the certificate Amazon
Resource Name (ARN), certificate name, domain name, and tags.

### Usage

    lightsail_get_certificates(certificateStatuses,
      includeCertificateDetails, certificateName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lightsail_get_certificates_:_certificateStatuses">certificateStatuses</code></td>
<td><p>The status of the certificates for which to return
information.</p>
<p>For example, specify <code>ISSUED</code> to return only certificates
with an <code>ISSUED</code> status.</p>
<p>When omitted, the response includes all of your certificates in the
Amazon Web Services Region where the request is made, regardless of
their current status.</p></td>
</tr>
<tr class="even">
<td><code
id="lightsail_get_certificates_:_includeCertificateDetails">includeCertificateDetails</code></td>
<td><p>Indicates whether to include detailed information about the
certificates in the response.</p>
<p>When omitted, the response includes only the certificate names,
Amazon Resource Names (ARNs), domain names, and tags.</p></td>
</tr>
<tr class="odd">
<td><code
id="lightsail_get_certificates_:_certificateName">certificateName</code></td>
<td><p>The name for the certificate for which to return information.</p>
<p>When omitted, the response includes all of your certificates in the
Amazon Web Services Region where the request is made.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      certificates = list(
        list(
          certificateArn = "string",
          certificateName = "string",
          domainName = "string",
          certificateDetail = list(
            arn = "string",
            name = "string",
            domainName = "string",
            status = "PENDING_VALIDATION"|"ISSUED"|"INACTIVE"|"EXPIRED"|"VALIDATION_TIMED_OUT"|"REVOKED"|"FAILED",
            serialNumber = "string",
            subjectAlternativeNames = list(
              "string"
            ),
            domainValidationRecords = list(
              list(
                domainName = "string",
                resourceRecord = list(
                  name = "string",
                  type = "string",
                  value = "string"
                ),
                dnsRecordCreationState = list(
                  code = "SUCCEEDED"|"STARTED"|"FAILED",
                  message = "string"
                ),
                validationStatus = "PENDING_VALIDATION"|"FAILED"|"SUCCESS"
              )
            ),
            requestFailureReason = "string",
            inUseResourceCount = 123,
            keyAlgorithm = "string",
            createdAt = as.POSIXct(
              "2015-01-01"
            ),
            issuedAt = as.POSIXct(
              "2015-01-01"
            ),
            issuerCA = "string",
            notBefore = as.POSIXct(
              "2015-01-01"
            ),
            notAfter = as.POSIXct(
              "2015-01-01"
            ),
            eligibleToRenew = "string",
            renewalSummary = list(
              domainValidationRecords = list(
                list(
                  domainName = "string",
                  resourceRecord = list(
                    name = "string",
                    type = "string",
                    value = "string"
                  ),
                  dnsRecordCreationState = list(
                    code = "SUCCEEDED"|"STARTED"|"FAILED",
                    message = "string"
                  ),
                  validationStatus = "PENDING_VALIDATION"|"FAILED"|"SUCCESS"
                )
              ),
              renewalStatus = "PendingAutoRenewal"|"PendingValidation"|"Success"|"Failed",
              renewalStatusReason = "string",
              updatedAt = as.POSIXct(
                "2015-01-01"
              )
            ),
            revokedAt = as.POSIXct(
              "2015-01-01"
            ),
            revocationReason = "string",
            tags = list(
              list(
                key = "string",
                value = "string"
              )
            ),
            supportCode = "string"
          ),
          tags = list(
            list(
              key = "string",
              value = "string"
            )
          )
        )
      )
    )

### Request syntax

    svc$get_certificates(
      certificateStatuses = list(
        "PENDING_VALIDATION"|"ISSUED"|"INACTIVE"|"EXPIRED"|"VALIDATION_TIMED_OUT"|"REVOKED"|"FAILED"
      ),
      includeCertificateDetails = TRUE|FALSE,
      certificateName = "string"
    )
