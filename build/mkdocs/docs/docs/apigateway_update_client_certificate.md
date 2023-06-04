<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_update_client_certificate</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Changes information about an ClientCertificate resource

### Description

Changes information about an ClientCertificate resource.

### Usage

    apigateway_update_client_certificate(clientCertificateId,
      patchOperations)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigateway_update_client_certificate_:_clientCertificateId">clientCertificateId</code></td>
<td><p>[required] The identifier of the ClientCertificate resource to be
updated.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_update_client_certificate_:_patchOperations">patchOperations</code></td>
<td><p>For more information about supported patch operations, see <a
href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch
Operations</a>.</p></td>
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

    svc$update_client_certificate(
      clientCertificateId = "string",
      patchOperations = list(
        list(
          op = "add"|"remove"|"replace"|"move"|"copy"|"test",
          path = "string",
          value = "string",
          from = "string"
        )
      )
    )
