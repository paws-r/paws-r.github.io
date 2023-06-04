<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_describe_certificates</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the set of CA certificates provided by Amazon RDS for this Amazon Web Services account

### Description

Lists the set of CA certificates provided by Amazon RDS for this Amazon
Web Services account.

For more information, see [Using SSL/TLS to encrypt a connection to a DB
instance](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.SSL.html)
in the *Amazon RDS User Guide* and [Using SSL/TLS to encrypt a
connection to a DB
cluster](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.SSL.html)
in the *Amazon Aurora User Guide*.

### Usage

    rds_describe_certificates(CertificateIdentifier, Filters, MaxRecords,
      Marker)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_describe_certificates_:_CertificateIdentifier">CertificateIdentifier</code></td>
<td><p>The user-supplied certificate identifier. If this parameter is
specified, information for only the identified certificate is returned.
This parameter isn't case-sensitive.</p>
<p>Constraints:</p>
<ul>
<li><p>Must match an existing CertificateIdentifier.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code id="rds_describe_certificates_:_Filters">Filters</code></td>
<td><p>This parameter isn't currently supported.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_describe_certificates_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of records to include in the response. If more
records exist than the specified <code>MaxRecords</code> value, a
pagination token called a marker is included in the response so you can
retrieve the remaining results.</p>
<p>Default: 100</p>
<p>Constraints: Minimum 20, maximum 100.</p></td>
</tr>
<tr class="even">
<td><code id="rds_describe_certificates_:_Marker">Marker</code></td>
<td><p>An optional pagination token provided by a previous
<code>describe_certificates</code> request. If this parameter is
specified, the response includes only records beyond the marker, up to
the value specified by <code>MaxRecords</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Certificates = list(
        list(
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
      ),
      Marker = "string"
    )

### Request syntax

    svc$describe_certificates(
      CertificateIdentifier = "string",
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      MaxRecords = 123,
      Marker = "string"
    )
