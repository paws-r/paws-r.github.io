<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appmesh_describe_virtual_service</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes an existing virtual service

### Description

Describes an existing virtual service.

### Usage

    appmesh_describe_virtual_service(meshName, meshOwner,
      virtualServiceName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="appmesh_describe_virtual_service_:_meshName">meshName</code></td>
<td><p>[required] The name of the service mesh that the virtual service
resides in.</p></td>
</tr>
<tr class="even">
<td><code
id="appmesh_describe_virtual_service_:_meshOwner">meshOwner</code></td>
<td><p>The Amazon Web Services IAM account ID of the service mesh owner.
If the account ID is not your own, then it's the ID of the account that
shared the mesh with your account. For more information about mesh
sharing, see <a
href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working
with shared meshes</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="appmesh_describe_virtual_service_:_virtualServiceName">virtualServiceName</code></td>
<td><p>[required] The name of the virtual service to describe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      virtualService = list(
        meshName = "string",
        metadata = list(
          arn = "string",
          createdAt = as.POSIXct(
            "2015-01-01"
          ),
          lastUpdatedAt = as.POSIXct(
            "2015-01-01"
          ),
          meshOwner = "string",
          resourceOwner = "string",
          uid = "string",
          version = 123
        ),
        spec = list(
          provider = list(
            virtualNode = list(
              virtualNodeName = "string"
            ),
            virtualRouter = list(
              virtualRouterName = "string"
            )
          )
        ),
        status = list(
          status = "ACTIVE"|"INACTIVE"|"DELETED"
        ),
        virtualServiceName = "string"
      )
    )

### Request syntax

    svc$describe_virtual_service(
      meshName = "string",
      meshOwner = "string",
      virtualServiceName = "string"
    )
