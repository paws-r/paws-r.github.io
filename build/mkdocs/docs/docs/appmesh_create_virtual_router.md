<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appmesh_create_virtual_router</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a virtual router within a service mesh

### Description

Creates a virtual router within a service mesh.

Specify a `listener` for any inbound traffic that your virtual router
receives. Create a virtual router for each protocol and port that you
need to route. Virtual routers handle traffic for one or more virtual
services within your mesh. After you create your virtual router, create
and associate routes for your virtual router that direct incoming
requests to different virtual nodes.

For more information about virtual routers, see [Virtual
routers](https://docs.aws.amazon.com/app-mesh/latest/userguide/virtual_routers.html).

### Usage

    appmesh_create_virtual_router(clientToken, meshName, meshOwner, spec,
      tags, virtualRouterName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="appmesh_create_virtual_router_:_clientToken">clientToken</code></td>
<td><p>Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. Up to 36 letters, numbers, hyphens, and
underscores are allowed.</p></td>
</tr>
<tr class="even">
<td><code
id="appmesh_create_virtual_router_:_meshName">meshName</code></td>
<td><p>[required] The name of the service mesh to create the virtual
router in.</p></td>
</tr>
<tr class="odd">
<td><code
id="appmesh_create_virtual_router_:_meshOwner">meshOwner</code></td>
<td><p>The Amazon Web Services IAM account ID of the service mesh owner.
If the account ID is not your own, then the account that you specify
must share the mesh with your account before you can create the resource
in the service mesh. For more information about mesh sharing, see <a
href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working
with shared meshes</a>.</p></td>
</tr>
<tr class="even">
<td><code id="appmesh_create_virtual_router_:_spec">spec</code></td>
<td><p>[required] The virtual router specification to apply.</p></td>
</tr>
<tr class="odd">
<td><code id="appmesh_create_virtual_router_:_tags">tags</code></td>
<td><p>Optional metadata that you can apply to the virtual router to
assist with categorization and organization. Each tag consists of a key
and an optional value, both of which you define. Tag keys can have a
maximum character length of 128 characters, and tag values can have a
maximum length of 256 characters.</p></td>
</tr>
<tr class="even">
<td><code
id="appmesh_create_virtual_router_:_virtualRouterName">virtualRouterName</code></td>
<td><p>[required] The name to use for the virtual router.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      virtualRouter = list(
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
          listeners = list(
            list(
              portMapping = list(
                port = 123,
                protocol = "http"|"tcp"|"http2"|"grpc"
              )
            )
          )
        ),
        status = list(
          status = "ACTIVE"|"INACTIVE"|"DELETED"
        ),
        virtualRouterName = "string"
      )
    )

### Request syntax

    svc$create_virtual_router(
      clientToken = "string",
      meshName = "string",
      meshOwner = "string",
      spec = list(
        listeners = list(
          list(
            portMapping = list(
              port = 123,
              protocol = "http"|"tcp"|"http2"|"grpc"
            )
          )
        )
      ),
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      ),
      virtualRouterName = "string"
    )
