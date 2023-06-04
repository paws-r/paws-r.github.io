<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appmesh_create_virtual_service</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a virtual service within a service mesh

### Description

Creates a virtual service within a service mesh.

A virtual service is an abstraction of a real service that is provided
by a virtual node directly or indirectly by means of a virtual router.
Dependent services call your virtual service by its
`virtualServiceName`, and those requests are routed to the virtual node
or virtual router that is specified as the provider for the virtual
service.

For more information about virtual services, see [Virtual
services](https://docs.aws.amazon.com/app-mesh/latest/userguide/virtual_services.html).

### Usage

    appmesh_create_virtual_service(clientToken, meshName, meshOwner, spec,
      tags, virtualServiceName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="appmesh_create_virtual_service_:_clientToken">clientToken</code></td>
<td><p>Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. Up to 36 letters, numbers, hyphens, and
underscores are allowed.</p></td>
</tr>
<tr class="even">
<td><code
id="appmesh_create_virtual_service_:_meshName">meshName</code></td>
<td><p>[required] The name of the service mesh to create the virtual
service in.</p></td>
</tr>
<tr class="odd">
<td><code
id="appmesh_create_virtual_service_:_meshOwner">meshOwner</code></td>
<td><p>The Amazon Web Services IAM account ID of the service mesh owner.
If the account ID is not your own, then the account that you specify
must share the mesh with your account before you can create the resource
in the service mesh. For more information about mesh sharing, see <a
href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working
with shared meshes</a>.</p></td>
</tr>
<tr class="even">
<td><code id="appmesh_create_virtual_service_:_spec">spec</code></td>
<td><p>[required] The virtual service specification to apply.</p></td>
</tr>
<tr class="odd">
<td><code id="appmesh_create_virtual_service_:_tags">tags</code></td>
<td><p>Optional metadata that you can apply to the virtual service to
assist with categorization and organization. Each tag consists of a key
and an optional value, both of which you define. Tag keys can have a
maximum character length of 128 characters, and tag values can have a
maximum length of 256 characters.</p></td>
</tr>
<tr class="even">
<td><code
id="appmesh_create_virtual_service_:_virtualServiceName">virtualServiceName</code></td>
<td><p>[required] The name to use for the virtual service.</p></td>
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

    svc$create_virtual_service(
      clientToken = "string",
      meshName = "string",
      meshOwner = "string",
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
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      ),
      virtualServiceName = "string"
    )
