<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_get_client_certificates</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a collection of ClientCertificate resources

### Description

Gets a collection of ClientCertificate resources.

### Usage

    apigateway_get_client_certificates(position, limit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigateway_get_client_certificates_:_position">position</code></td>
<td><p>The current pagination position in the paged result set.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_get_client_certificates_:_limit">limit</code></td>
<td><p>The maximum number of returned results per page. The default
value is 25 and the maximum value is 500.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      position = "string",
      items = list(
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
      )
    )

### Request syntax

    svc$get_client_certificates(
      position = "string",
      limit = 123
    )
