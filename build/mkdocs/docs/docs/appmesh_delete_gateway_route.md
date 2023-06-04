<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appmesh_delete_gateway_route</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an existing gateway route

### Description

Deletes an existing gateway route.

### Usage

    appmesh_delete_gateway_route(gatewayRouteName, meshName, meshOwner,
      virtualGatewayName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="appmesh_delete_gateway_route_:_gatewayRouteName">gatewayRouteName</code></td>
<td><p>[required] The name of the gateway route to delete.</p></td>
</tr>
<tr class="even">
<td><code
id="appmesh_delete_gateway_route_:_meshName">meshName</code></td>
<td><p>[required] The name of the service mesh to delete the gateway
route from.</p></td>
</tr>
<tr class="odd">
<td><code
id="appmesh_delete_gateway_route_:_meshOwner">meshOwner</code></td>
<td><p>The Amazon Web Services IAM account ID of the service mesh owner.
If the account ID is not your own, then it's the ID of the account that
shared the mesh with your account. For more information about mesh
sharing, see <a
href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working
with shared meshes</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="appmesh_delete_gateway_route_:_virtualGatewayName">virtualGatewayName</code></td>
<td><p>[required] The name of the virtual gateway to delete the route
from.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      gatewayRoute = list(
        gatewayRouteName = "string",
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
          grpcRoute = list(
            action = list(
              rewrite = list(
                hostname = list(
                  defaultTargetHostname = "ENABLED"|"DISABLED"
                )
              ),
              target = list(
                port = 123,
                virtualService = list(
                  virtualServiceName = "string"
                )
              )
            ),
            match = list(
              hostname = list(
                exact = "string",
                suffix = "string"
              ),
              metadata = list(
                list(
                  invert = TRUE|FALSE,
                  match = list(
                    exact = "string",
                    prefix = "string",
                    range = list(
                      end = 123,
                      start = 123
                    ),
                    regex = "string",
                    suffix = "string"
                  ),
                  name = "string"
                )
              ),
              port = 123,
              serviceName = "string"
            )
          ),
          http2Route = list(
            action = list(
              rewrite = list(
                hostname = list(
                  defaultTargetHostname = "ENABLED"|"DISABLED"
                ),
                path = list(
                  exact = "string"
                ),
                prefix = list(
                  defaultPrefix = "ENABLED"|"DISABLED",
                  value = "string"
                )
              ),
              target = list(
                port = 123,
                virtualService = list(
                  virtualServiceName = "string"
                )
              )
            ),
            match = list(
              headers = list(
                list(
                  invert = TRUE|FALSE,
                  match = list(
                    exact = "string",
                    prefix = "string",
                    range = list(
                      end = 123,
                      start = 123
                    ),
                    regex = "string",
                    suffix = "string"
                  ),
                  name = "string"
                )
              ),
              hostname = list(
                exact = "string",
                suffix = "string"
              ),
              method = "GET"|"HEAD"|"POST"|"PUT"|"DELETE"|"CONNECT"|"OPTIONS"|"TRACE"|"PATCH",
              path = list(
                exact = "string",
                regex = "string"
              ),
              port = 123,
              prefix = "string",
              queryParameters = list(
                list(
                  match = list(
                    exact = "string"
                  ),
                  name = "string"
                )
              )
            )
          ),
          httpRoute = list(
            action = list(
              rewrite = list(
                hostname = list(
                  defaultTargetHostname = "ENABLED"|"DISABLED"
                ),
                path = list(
                  exact = "string"
                ),
                prefix = list(
                  defaultPrefix = "ENABLED"|"DISABLED",
                  value = "string"
                )
              ),
              target = list(
                port = 123,
                virtualService = list(
                  virtualServiceName = "string"
                )
              )
            ),
            match = list(
              headers = list(
                list(
                  invert = TRUE|FALSE,
                  match = list(
                    exact = "string",
                    prefix = "string",
                    range = list(
                      end = 123,
                      start = 123
                    ),
                    regex = "string",
                    suffix = "string"
                  ),
                  name = "string"
                )
              ),
              hostname = list(
                exact = "string",
                suffix = "string"
              ),
              method = "GET"|"HEAD"|"POST"|"PUT"|"DELETE"|"CONNECT"|"OPTIONS"|"TRACE"|"PATCH",
              path = list(
                exact = "string",
                regex = "string"
              ),
              port = 123,
              prefix = "string",
              queryParameters = list(
                list(
                  match = list(
                    exact = "string"
                  ),
                  name = "string"
                )
              )
            )
          ),
          priority = 123
        ),
        status = list(
          status = "ACTIVE"|"INACTIVE"|"DELETED"
        ),
        virtualGatewayName = "string"
      )
    )

### Request syntax

    svc$delete_gateway_route(
      gatewayRouteName = "string",
      meshName = "string",
      meshOwner = "string",
      virtualGatewayName = "string"
    )
