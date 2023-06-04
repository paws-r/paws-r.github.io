<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appmesh_list_virtual_services</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of existing virtual services in a service mesh

### Description

Returns a list of existing virtual services in a service mesh.

### Usage

    appmesh_list_virtual_services(limit, meshName, meshOwner, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="appmesh_list_virtual_services_:_limit">limit</code></td>
<td><p>The maximum number of results returned by
<code>list_virtual_services</code> in paginated output. When you use
this parameter, <code>list_virtual_services</code> returns only
<code>limit</code> results in a single page along with a
<code>nextToken</code> response element. You can see the remaining
results of the initial request by sending another
<code>list_virtual_services</code> request with the returned
<code>nextToken</code> value. This value can be between 1 and 100. If
you don't use this parameter, <code>list_virtual_services</code> returns
up to 100 results and a <code>nextToken</code> value if
applicable.</p></td>
</tr>
<tr class="even">
<td><code
id="appmesh_list_virtual_services_:_meshName">meshName</code></td>
<td><p>[required] The name of the service mesh to list virtual services
in.</p></td>
</tr>
<tr class="odd">
<td><code
id="appmesh_list_virtual_services_:_meshOwner">meshOwner</code></td>
<td><p>The Amazon Web Services IAM account ID of the service mesh owner.
If the account ID is not your own, then it's the ID of the account that
shared the mesh with your account. For more information about mesh
sharing, see <a
href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working
with shared meshes</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="appmesh_list_virtual_services_:_nextToken">nextToken</code></td>
<td><p>The <code>nextToken</code> value returned from a previous
paginated <code>list_virtual_services</code> request where
<code>limit</code> was used and the results exceeded the value of that
parameter. Pagination continues from the end of the previous results
that returned the <code>nextToken</code> value.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextToken = "string",
      virtualServices = list(
        list(
          arn = "string",
          createdAt = as.POSIXct(
            "2015-01-01"
          ),
          lastUpdatedAt = as.POSIXct(
            "2015-01-01"
          ),
          meshName = "string",
          meshOwner = "string",
          resourceOwner = "string",
          version = 123,
          virtualServiceName = "string"
        )
      )
    )

### Request syntax

    svc$list_virtual_services(
      limit = 123,
      meshName = "string",
      meshOwner = "string",
      nextToken = "string"
    )
