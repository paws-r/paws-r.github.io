<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appmesh_delete_mesh</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an existing service mesh

### Description

Deletes an existing service mesh.

You must delete all resources (virtual services, routes, virtual
routers, and virtual nodes) in the service mesh before you can delete
the mesh itself.

### Usage

    appmesh_delete_mesh(meshName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="appmesh_delete_mesh_:_meshName">meshName</code></td>
<td><p>[required] The name of the service mesh to delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      mesh = list(
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
          egressFilter = list(
            type = "ALLOW_ALL"|"DROP_ALL"
          ),
          serviceDiscovery = list(
            ipPreference = "IPv6_PREFERRED"|"IPv4_PREFERRED"|"IPv4_ONLY"|"IPv6_ONLY"
          )
        ),
        status = list(
          status = "ACTIVE"|"INACTIVE"|"DELETED"
        )
      )
    )

### Request syntax

    svc$delete_mesh(
      meshName = "string"
    )
