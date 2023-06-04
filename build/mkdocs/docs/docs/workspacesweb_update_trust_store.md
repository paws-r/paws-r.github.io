<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspacesweb_update_trust_store</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the trust store

### Description

Updates the trust store.

### Usage

    workspacesweb_update_trust_store(certificatesToAdd,
      certificatesToDelete, clientToken, trustStoreArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspacesweb_update_trust_store_:_certificatesToAdd">certificatesToAdd</code></td>
<td><p>A list of CA certificates to add to the trust store.</p></td>
</tr>
<tr class="even">
<td><code
id="workspacesweb_update_trust_store_:_certificatesToDelete">certificatesToDelete</code></td>
<td><p>A list of CA certificates to delete from a trust store.</p></td>
</tr>
<tr class="odd">
<td><code
id="workspacesweb_update_trust_store_:_clientToken">clientToken</code></td>
<td><p>A unique, case-sensitive identifier that you provide to ensure
the idempotency of the request. Idempotency ensures that an API request
completes only once. With an idempotent request, if the original request
completes successfully, subsequent retries with the same client token
return the result from the original successful request.</p>
<p>If you do not specify a client token, one is automatically generated
by the AWS SDK.</p></td>
</tr>
<tr class="even">
<td><code
id="workspacesweb_update_trust_store_:_trustStoreArn">trustStoreArn</code></td>
<td><p>[required] The ARN of the trust store.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      trustStoreArn = "string"
    )

### Request syntax

    svc$update_trust_store(
      certificatesToAdd = list(
        raw
      ),
      certificatesToDelete = list(
        "string"
      ),
      clientToken = "string",
      trustStoreArn = "string"
    )
