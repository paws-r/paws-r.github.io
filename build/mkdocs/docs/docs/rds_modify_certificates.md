<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_modify_certificates</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Override the system-default Secure Sockets Layer/Transport Layer Security (SSL/TLS) certificate for Amazon RDS for new DB instances, or remove the override

### Description

Override the system-default Secure Sockets Layer/Transport Layer
Security (SSL/TLS) certificate for Amazon RDS for new DB instances, or
remove the override.

By using this operation, you can specify an RDS-approved SSL/TLS
certificate for new DB instances that is different from the default
certificate provided by RDS. You can also use this operation to remove
the override, so that new DB instances use the default certificate
provided by RDS.

You might need to override the default certificate in the following
situations:

-   You already migrated your applications to support the latest
    certificate authority (CA) certificate, but the new CA certificate
    is not yet the RDS default CA certificate for the specified Amazon
    Web Services Region.

-   RDS has already moved to a new default CA certificate for the
    specified Amazon Web Services Region, but you are still in the
    process of supporting the new CA certificate. In this case, you
    temporarily need additional time to finish your application changes.

For more information about rotating your SSL/TLS certificate for RDS DB
engines, see [Rotating Your SSL/TLS
Certificate](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.SSL-certificate-rotation.html)
in the *Amazon RDS User Guide*.

For more information about rotating your SSL/TLS certificate for Aurora
DB engines, see [Rotating Your SSL/TLS
Certificate](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.SSL-certificate-rotation.html)
in the *Amazon Aurora User Guide*.

### Usage

    rds_modify_certificates(CertificateIdentifier, RemoveCustomerOverride)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_modify_certificates_:_CertificateIdentifier">CertificateIdentifier</code></td>
<td><p>The new default certificate identifier to override the current
one with.</p>
<p>To determine the valid values, use the
<code>describe-certificates</code> CLI command or the
<code>describe_certificates</code> API operation.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_modify_certificates_:_RemoveCustomerOverride">RemoveCustomerOverride</code></td>
<td><p>A value that indicates whether to remove the override for the
default certificate. If the override is removed, the default certificate
is the system default.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Certificate = list(
        CertificateIdentifier = "string",
        CertificateType = "string",
        Thumbprint = "string",
        ValidFrom = as.POSIXct(
          "2015-01-01"
        ),
        ValidTill = as.POSIXct(
          "2015-01-01"
        ),
        CertificateArn = "string",
        CustomerOverride = TRUE|FALSE,
        CustomerOverrideValidTill = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$modify_certificates(
      CertificateIdentifier = "string",
      RemoveCustomerOverride = TRUE|FALSE
    )
