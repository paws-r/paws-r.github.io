<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspacesweb_associate_trust_store</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates a trust store with a web portal

### Description

Associates a trust store with a web portal.

### Usage

    workspacesweb_associate_trust_store(portalArn, trustStoreArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspacesweb_associate_trust_store_:_portalArn">portalArn</code></td>
<td><p>[required] The ARN of the web portal.</p></td>
</tr>
<tr class="even">
<td><code
id="workspacesweb_associate_trust_store_:_trustStoreArn">trustStoreArn</code></td>
<td><p>[required] The ARN of the trust store.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      portalArn = "string",
      trustStoreArn = "string"
    )

### Request syntax

    svc$associate_trust_store(
      portalArn = "string",
      trustStoreArn = "string"
    )
