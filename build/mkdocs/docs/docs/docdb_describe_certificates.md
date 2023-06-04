<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>docdb_describe_certificates</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of certificate authority (CA) certificates provided by Amazon DocumentDB for this Amazon Web Services account

### Description

Returns a list of certificate authority (CA) certificates provided by
Amazon DocumentDB for this Amazon Web Services account.

### Usage

    docdb_describe_certificates(CertificateIdentifier, Filters, MaxRecords,
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
id="docdb_describe_certificates_:_CertificateIdentifier">CertificateIdentifier</code></td>
<td><p>The user-supplied certificate identifier. If this parameter is
specified, information for only the specified certificate is returned.
If this parameter is omitted, a list of up to <code>MaxRecords</code>
certificates is returned. This parameter is not case sensitive.</p>
<p>Constraints</p>
<ul>
<li><p>Must match an existing
<code>CertificateIdentifier</code>.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code id="docdb_describe_certificates_:_Filters">Filters</code></td>
<td><p>This parameter is not currently supported.</p></td>
</tr>
<tr class="odd">
<td><code
id="docdb_describe_certificates_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of records to include in the response. If more
records exist than the specified <code>MaxRecords</code> value, a
pagination token called a marker is included in the response so that the
remaining results can be retrieved.</p>
<p>Default: 100</p>
<p>Constraints:</p>
<ul>
<li><p>Minimum: 20</p></li>
<li><p>Maximum: 100</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code id="docdb_describe_certificates_:_Marker">Marker</code></td>
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
          CertificateArn = "string"
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
