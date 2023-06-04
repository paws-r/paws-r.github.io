<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_generate_client_certificate</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Generates a ClientCertificate resource

### Description

Generates a ClientCertificate resource.

### Usage

    apigateway_generate_client_certificate(description, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigateway_generate_client_certificate_:_description">description</code></td>
<td><p>The description of the ClientCertificate.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_generate_client_certificate_:_tags">tags</code></td>
<td><p>The key-value map of strings. The valid character set is
[a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not
start with <code style="white-space: pre;">⁠aws:⁠</code>. The tag value
can be up to 256 characters.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      clientCertificateId = "string",
      description = "string",
      pemEncodedCertificate = "string",
      createdDate = as.POSIXct(
        "2015-01-01"
      ),
      expirationDate = as.POSIXct(
        "2015-01-01"
      ),
      tags = list(
        "string"
      )
    )

### Request syntax

    svc$generate_client_certificate(
      description = "string",
      tags = list(
        "string"
      )
    )
