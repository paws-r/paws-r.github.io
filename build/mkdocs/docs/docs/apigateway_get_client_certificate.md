<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_get_client_certificate</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about the current ClientCertificate resource

### Description

Gets information about the current ClientCertificate resource.

### Usage

    apigateway_get_client_certificate(clientCertificateId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigateway_get_client_certificate_:_clientCertificateId">clientCertificateId</code></td>
<td><p>[required] The identifier of the ClientCertificate resource to be
described.</p></td>
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

    svc$get_client_certificate(
      clientCertificateId = "string"
    )
