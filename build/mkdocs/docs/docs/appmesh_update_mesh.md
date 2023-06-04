<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appmesh_update_mesh</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates an existing service mesh

### Description

Updates an existing service mesh.

### Usage

    appmesh_update_mesh(clientToken, meshName, spec)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="appmesh_update_mesh_:_clientToken">clientToken</code></td>
<td><p>Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. Up to 36 letters, numbers, hyphens, and
underscores are allowed.</p></td>
</tr>
<tr class="even">
<td><code id="appmesh_update_mesh_:_meshName">meshName</code></td>
<td><p>[required] The name of the service mesh to update.</p></td>
</tr>
<tr class="odd">
<td><code id="appmesh_update_mesh_:_spec">spec</code></td>
<td><p>The service mesh specification to apply.</p></td>
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

    svc$update_mesh(
      clientToken = "string",
      meshName = "string",
      spec = list(
        egressFilter = list(
          type = "ALLOW_ALL"|"DROP_ALL"
        ),
        serviceDiscovery = list(
          ipPreference = "IPv6_PREFERRED"|"IPv4_PREFERRED"|"IPv4_ONLY"|"IPv6_ONLY"
        )
      )
    )
