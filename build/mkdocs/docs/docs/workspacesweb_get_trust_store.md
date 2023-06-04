<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspacesweb_get_trust_store</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the trust store

### Description

Gets the trust store.

### Usage

    workspacesweb_get_trust_store(trustStoreArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspacesweb_get_trust_store_:_trustStoreArn">trustStoreArn</code></td>
<td><p>[required] The ARN of the trust store.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      trustStore = list(
        associatedPortalArns = list(
          "string"
        ),
        trustStoreArn = "string"
      )
    )

### Request syntax

    svc$get_trust_store(
      trustStoreArn = "string"
    )
