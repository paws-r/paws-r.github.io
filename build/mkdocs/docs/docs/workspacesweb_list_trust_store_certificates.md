<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspacesweb_list_trust_store_certificates</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a list of trust store certificates

### Description

Retrieves a list of trust store certificates.

### Usage

    workspacesweb_list_trust_store_certificates(maxResults, nextToken,
      trustStoreArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspacesweb_list_trust_store_certificates_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results to be included in the next
page.</p></td>
</tr>
<tr class="even">
<td><code
id="workspacesweb_list_trust_store_certificates_:_nextToken">nextToken</code></td>
<td><p>The pagination token used to retrieve the next page of results
for this operation.</p></td>
</tr>
<tr class="odd">
<td><code
id="workspacesweb_list_trust_store_certificates_:_trustStoreArn">trustStoreArn</code></td>
<td><p>[required] The ARN of the trust store</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      certificateList = list(
        list(
          issuer = "string",
          notValidAfter = as.POSIXct(
            "2015-01-01"
          ),
          notValidBefore = as.POSIXct(
            "2015-01-01"
          ),
          subject = "string",
          thumbprint = "string"
        )
      ),
      nextToken = "string",
      trustStoreArn = "string"
    )

### Request syntax

    svc$list_trust_store_certificates(
      maxResults = 123,
      nextToken = "string",
      trustStoreArn = "string"
    )
