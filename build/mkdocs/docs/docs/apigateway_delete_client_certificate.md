<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_delete_client_certificate</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the ClientCertificate resource

### Description

Deletes the ClientCertificate resource.

### Usage

    apigateway_delete_client_certificate(clientCertificateId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigateway_delete_client_certificate_:_clientCertificateId">clientCertificateId</code></td>
<td><p>[required] The identifier of the ClientCertificate resource to be
deleted.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_client_certificate(
      clientCertificateId = "string"
    )
