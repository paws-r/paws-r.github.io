<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspacesweb_create_trust_store</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a trust store that can be associated with a web portal

### Description

Creates a trust store that can be associated with a web portal. A trust
store contains certificate authority (CA) certificates. Once associated
with a web portal, the browser in a streaming session will recognize
certificates that have been issued using any of the CAs in the trust
store. If your organization has internal websites that use certificates
issued by private CAs, you should add the private CA certificate to the
trust store.

### Usage

    workspacesweb_create_trust_store(certificateList, clientToken, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspacesweb_create_trust_store_:_certificateList">certificateList</code></td>
<td><p>[required] A list of CA certificates to be added to the trust
store.</p></td>
</tr>
<tr class="even">
<td><code
id="workspacesweb_create_trust_store_:_clientToken">clientToken</code></td>
<td><p>A unique, case-sensitive identifier that you provide to ensure
the idempotency of the request. Idempotency ensures that an API request
completes only once. With an idempotent request, if the original request
completes successfully, subsequent retries with the same client token
returns the result from the original successful request.</p>
<p>If you do not specify a client token, one is automatically generated
by the AWS SDK.</p></td>
</tr>
<tr class="odd">
<td><code id="workspacesweb_create_trust_store_:_tags">tags</code></td>
<td><p>The tags to add to the trust store. A tag is a key-value
pair.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      trustStoreArn = "string"
    )

### Request syntax

    svc$create_trust_store(
      certificateList = list(
        raw
      ),
      clientToken = "string",
      tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
