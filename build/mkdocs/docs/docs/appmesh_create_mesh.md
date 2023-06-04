<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appmesh_create_mesh</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a service mesh

### Description

Creates a service mesh.

A service mesh is a logical boundary for network traffic between
services that are represented by resources within the mesh. After you
create your service mesh, you can create virtual services, virtual
nodes, virtual routers, and routes to distribute traffic between the
applications in your mesh.

For more information about service meshes, see [Service
meshes](https://docs.aws.amazon.com/app-mesh/latest/userguide/meshes.html).

### Usage

    appmesh_create_mesh(clientToken, meshName, spec, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="appmesh_create_mesh_:_clientToken">clientToken</code></td>
<td><p>Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. Up to 36 letters, numbers, hyphens, and
underscores are allowed.</p></td>
</tr>
<tr class="even">
<td><code id="appmesh_create_mesh_:_meshName">meshName</code></td>
<td><p>[required] The name to use for the service mesh.</p></td>
</tr>
<tr class="odd">
<td><code id="appmesh_create_mesh_:_spec">spec</code></td>
<td><p>The service mesh specification to apply.</p></td>
</tr>
<tr class="even">
<td><code id="appmesh_create_mesh_:_tags">tags</code></td>
<td><p>Optional metadata that you can apply to the service mesh to
assist with categorization and organization. Each tag consists of a key
and an optional value, both of which you define. Tag keys can have a
maximum character length of 128 characters, and tag values can have a
maximum length of 256 characters.</p></td>
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

    svc$create_mesh(
      clientToken = "string",
      meshName = "string",
      spec = list(
        egressFilter = list(
          type = "ALLOW_ALL"|"DROP_ALL"
        ),
        serviceDiscovery = list(
          ipPreference = "IPv6_PREFERRED"|"IPv4_PREFERRED"|"IPv4_ONLY"|"IPv6_ONLY"
        )
      ),
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      )
    )
