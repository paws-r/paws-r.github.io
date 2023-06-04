<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspacesweb_disassociate_trust_store</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disassociates a trust store from a web portal

### Description

Disassociates a trust store from a web portal.

### Usage

    workspacesweb_disassociate_trust_store(portalArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspacesweb_disassociate_trust_store_:_portalArn">portalArn</code></td>
<td><p>[required] The ARN of the web portal.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$disassociate_trust_store(
      portalArn = "string"
    )
