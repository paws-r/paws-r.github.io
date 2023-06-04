<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>acm_list_certificates</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a list of certificate ARNs and domain names

### Description

Retrieves a list of certificate ARNs and domain names. You can request
that only certificates that match a specific status be listed. You can
also filter by specific attributes of the certificate. Default filtering
returns only `RSA_2048` certificates. For more information, see Filters.

### Usage

    acm_list_certificates(CertificateStatuses, Includes, NextToken,
      MaxItems, SortBy, SortOrder)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="acm_list_certificates_:_CertificateStatuses">CertificateStatuses</code></td>
<td><p>Filter the certificate list by status value.</p></td>
</tr>
<tr class="even">
<td><code id="acm_list_certificates_:_Includes">Includes</code></td>
<td><p>Filter the certificate list. For more information, see the
Filters structure.</p></td>
</tr>
<tr class="odd">
<td><code id="acm_list_certificates_:_NextToken">NextToken</code></td>
<td><p>Use this parameter only when paginating results and only in a
subsequent request after you receive a response with truncated results.
Set it to the value of <code>NextToken</code> from the response you just
received.</p></td>
</tr>
<tr class="even">
<td><code id="acm_list_certificates_:_MaxItems">MaxItems</code></td>
<td><p>Use this parameter when paginating results to specify the maximum
number of items to return in the response. If additional items exist
beyond the number you specify, the <code>NextToken</code> element is
sent in the response. Use this <code>NextToken</code> value in a
subsequent request to retrieve additional items.</p></td>
</tr>
<tr class="odd">
<td><code id="acm_list_certificates_:_SortBy">SortBy</code></td>
<td><p>Specifies the field to sort results by. If you specify
<code>SortBy</code>, you must also specify
<code>SortOrder</code>.</p></td>
</tr>
<tr class="even">
<td><code id="acm_list_certificates_:_SortOrder">SortOrder</code></td>
<td><p>Specifies the order of sorted results. If you specify
<code>SortOrder</code>, you must also specify
<code>SortBy</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      CertificateSummaryList = list(
        list(
          CertificateArn = "string",
          DomainName = "string",
          SubjectAlternativeNameSummaries = list(
            "string"
          ),
          HasAdditionalSubjectAlternativeNames = TRUE|FALSE,
          Status = "PENDING_VALIDATION"|"ISSUED"|"INACTIVE"|"EXPIRED"|"VALIDATION_TIMED_OUT"|"REVOKED"|"FAILED",
          Type = "IMPORTED"|"AMAZON_ISSUED"|"PRIVATE",
          KeyAlgorithm = "RSA_1024"|"RSA_2048"|"RSA_3072"|"RSA_4096"|"EC_prime256v1"|"EC_secp384r1"|"EC_secp521r1",
          KeyUsages = list(
            "DIGITAL_SIGNATURE"|"NON_REPUDIATION"|"KEY_ENCIPHERMENT"|"DATA_ENCIPHERMENT"|"KEY_AGREEMENT"|"CERTIFICATE_SIGNING"|"CRL_SIGNING"|"ENCIPHER_ONLY"|"DECIPHER_ONLY"|"ANY"|"CUSTOM"
          ),
          ExtendedKeyUsages = list(
            "TLS_WEB_SERVER_AUTHENTICATION"|"TLS_WEB_CLIENT_AUTHENTICATION"|"CODE_SIGNING"|"EMAIL_PROTECTION"|"TIME_STAMPING"|"OCSP_SIGNING"|"IPSEC_END_SYSTEM"|"IPSEC_TUNNEL"|"IPSEC_USER"|"ANY"|"NONE"|"CUSTOM"
          ),
          InUse = TRUE|FALSE,
          Exported = TRUE|FALSE,
          RenewalEligibility = "ELIGIBLE"|"INELIGIBLE",
          NotBefore = as.POSIXct(
            "2015-01-01"
          ),
          NotAfter = as.POSIXct(
            "2015-01-01"
          ),
          CreatedAt = as.POSIXct(
            "2015-01-01"
          ),
          IssuedAt = as.POSIXct(
            "2015-01-01"
          ),
          ImportedAt = as.POSIXct(
            "2015-01-01"
          ),
          RevokedAt = as.POSIXct(
            "2015-01-01"
          )
        )
      )
    )

### Request syntax

    svc$list_certificates(
      CertificateStatuses = list(
        "PENDING_VALIDATION"|"ISSUED"|"INACTIVE"|"EXPIRED"|"VALIDATION_TIMED_OUT"|"REVOKED"|"FAILED"
      ),
      Includes = list(
        extendedKeyUsage = list(
          "TLS_WEB_SERVER_AUTHENTICATION"|"TLS_WEB_CLIENT_AUTHENTICATION"|"CODE_SIGNING"|"EMAIL_PROTECTION"|"TIME_STAMPING"|"OCSP_SIGNING"|"IPSEC_END_SYSTEM"|"IPSEC_TUNNEL"|"IPSEC_USER"|"ANY"|"NONE"|"CUSTOM"
        ),
        keyUsage = list(
          "DIGITAL_SIGNATURE"|"NON_REPUDIATION"|"KEY_ENCIPHERMENT"|"DATA_ENCIPHERMENT"|"KEY_AGREEMENT"|"CERTIFICATE_SIGNING"|"CRL_SIGNING"|"ENCIPHER_ONLY"|"DECIPHER_ONLY"|"ANY"|"CUSTOM"
        ),
        keyTypes = list(
          "RSA_1024"|"RSA_2048"|"RSA_3072"|"RSA_4096"|"EC_prime256v1"|"EC_secp384r1"|"EC_secp521r1"
        )
      ),
      NextToken = "string",
      MaxItems = 123,
      SortBy = "CREATED_AT",
      SortOrder = "ASCENDING"|"DESCENDING"
    )
