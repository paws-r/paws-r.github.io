<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appmesh_describe_mesh</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes an existing service mesh

### Description

Describes an existing service mesh.

### Usage

    appmesh_describe_mesh(meshName, meshOwner)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="appmesh_describe_mesh_:_meshName">meshName</code></td>
<td><p>[required] The name of the service mesh to describe.</p></td>
</tr>
<tr class="even">
<td><code id="appmesh_describe_mesh_:_meshOwner">meshOwner</code></td>
<td><p>The Amazon Web Services IAM account ID of the service mesh owner.
If the account ID is not your own, then it's the ID of the account that
shared the mesh with your account. For more information about mesh
sharing, see <a
href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working
with shared meshes</a>.</p></td>
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

    svc$describe_mesh(
      meshName = "string",
      meshOwner = "string"
    )
