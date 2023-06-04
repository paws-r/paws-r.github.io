<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_update_vpc_link</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates an existing VpcLink of a specified identifier

### Description

Updates an existing VpcLink of a specified identifier.

### Usage

    apigateway_update_vpc_link(vpcLinkId, patchOperations)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigateway_update_vpc_link_:_vpcLinkId">vpcLinkId</code></td>
<td><p>[required] The identifier of the VpcLink. It is used in an
Integration to reference this VpcLink.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_update_vpc_link_:_patchOperations">patchOperations</code></td>
<td><p>For more information about supported patch operations, see <a
href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch
Operations</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      id = "string",
      name = "string",
      description = "string",
      targetArns = list(
        "string"
      ),
      status = "AVAILABLE"|"PENDING"|"DELETING"|"FAILED",
      statusMessage = "string",
      tags = list(
        "string"
      )
    )

### Request syntax

    svc$update_vpc_link(
      vpcLinkId = "string",
      patchOperations = list(
        list(
          op = "add"|"remove"|"replace"|"move"|"copy"|"test",
          path = "string",
          value = "string",
          from = "string"
        )
      )
    )
