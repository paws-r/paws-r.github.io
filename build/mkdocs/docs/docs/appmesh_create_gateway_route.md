<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appmesh_create_gateway_route</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a gateway route

### Description

Creates a gateway route.

A gateway route is attached to a virtual gateway and routes traffic to
an existing virtual service. If a route matches a request, it can
distribute traffic to a target virtual service.

For more information about gateway routes, see [Gateway
routes](https://docs.aws.amazon.com/app-mesh/latest/userguide/gateway-routes.html).

### Usage

    appmesh_create_gateway_route(clientToken, gatewayRouteName, meshName,
      meshOwner, spec, tags, virtualGatewayName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="appmesh_create_gateway_route_:_clientToken">clientToken</code></td>
<td><p>Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. Up to 36 letters, numbers, hyphens, and
underscores are allowed.</p></td>
</tr>
<tr class="even">
<td><code
id="appmesh_create_gateway_route_:_gatewayRouteName">gatewayRouteName</code></td>
<td><p>[required] The name to use for the gateway route.</p></td>
</tr>
<tr class="odd">
<td><code
id="appmesh_create_gateway_route_:_meshName">meshName</code></td>
<td><p>[required] The name of the service mesh to create the gateway
route in.</p></td>
</tr>
<tr class="even">
<td><code
id="appmesh_create_gateway_route_:_meshOwner">meshOwner</code></td>
<td><p>The Amazon Web Services IAM account ID of the service mesh owner.
If the account ID is not your own, then the account that you specify
must share the mesh with your account before you can create the resource
in the service mesh. For more information about mesh sharing, see <a
href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working
with shared meshes</a>.</p></td>
</tr>
<tr class="odd">
<td><code id="appmesh_create_gateway_route_:_spec">spec</code></td>
<td><p>[required] The gateway route specification to apply.</p></td>
</tr>
<tr class="even">
<td><code id="appmesh_create_gateway_route_:_tags">tags</code></td>
<td><p>Optional metadata that you can apply to the gateway route to
assist with categorization and organization. Each tag consists of a key
and an optional value, both of which you define. Tag keys can have a
maximum character length of 128 characters, and tag values can have a
maximum length of 256 characters.</p></td>
</tr>
<tr class="odd">
<td><code
id="appmesh_create_gateway_route_:_virtualGatewayName">virtualGatewayName</code></td>
<td><p>[required] The name of the virtual gateway to associate the
gateway route with. If the virtual gateway is in a shared mesh, then you
must be the owner of the virtual gateway resource.</p></td>
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

    svc$create_gateway_route(
      clientToken = "string",
      gatewayRouteName = "string",
      meshName = "string",
      meshOwner = "string",
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
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      ),
      virtualGatewayName = "string"
    )
