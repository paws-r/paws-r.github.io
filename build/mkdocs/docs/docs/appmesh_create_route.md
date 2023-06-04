<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appmesh_create_route</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a route that is associated with a virtual router

### Description

Creates a route that is associated with a virtual router.

You can route several different protocols and define a retry policy for
a route. Traffic can be routed to one or more virtual nodes.

For more information about routes, see
[Routes](https://docs.aws.amazon.com/app-mesh/latest/userguide/routes.html).

### Usage

    appmesh_create_route(clientToken, meshName, meshOwner, routeName, spec,
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
id="appmesh_create_route_:_clientToken">clientToken</code></td>
<td><p>Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. Up to 36 letters, numbers, hyphens, and
underscores are allowed.</p></td>
</tr>
<tr class="even">
<td><code id="appmesh_create_route_:_meshName">meshName</code></td>
<td><p>[required] The name of the service mesh to create the route
in.</p></td>
</tr>
<tr class="odd">
<td><code id="appmesh_create_route_:_meshOwner">meshOwner</code></td>
<td><p>The Amazon Web Services IAM account ID of the service mesh owner.
If the account ID is not your own, then the account that you specify
must share the mesh with your account before you can create the resource
in the service mesh. For more information about mesh sharing, see <a
href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working
with shared meshes</a>.</p></td>
</tr>
<tr class="even">
<td><code id="appmesh_create_route_:_routeName">routeName</code></td>
<td><p>[required] The name to use for the route.</p></td>
</tr>
<tr class="odd">
<td><code id="appmesh_create_route_:_spec">spec</code></td>
<td><p>[required] The route specification to apply.</p></td>
</tr>
<tr class="even">
<td><code id="appmesh_create_route_:_tags">tags</code></td>
<td><p>Optional metadata that you can apply to the route to assist with
categorization and organization. Each tag consists of a key and an
optional value, both of which you define. Tag keys can have a maximum
character length of 128 characters, and tag values can have a maximum
length of 256 characters.</p></td>
</tr>
<tr class="odd">
<td><code
id="appmesh_create_route_:_virtualRouterName">virtualRouterName</code></td>
<td><p>[required] The name of the virtual router in which to create the
route. If the virtual router is in a shared mesh, then you must be the
owner of the virtual router resource.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      route = list(
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
        routeName = "string",
        spec = list(
          grpcRoute = list(
            action = list(
              weightedTargets = list(
                list(
                  port = 123,
                  virtualNode = "string",
                  weight = 123
                )
              )
            ),
            match = list(
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
              methodName = "string",
              port = 123,
              serviceName = "string"
            ),
            retryPolicy = list(
              grpcRetryEvents = list(
                "cancelled"|"deadline-exceeded"|"internal"|"resource-exhausted"|"unavailable"
              ),
              httpRetryEvents = list(
                "string"
              ),
              maxRetries = 123,
              perRetryTimeout = list(
                unit = "s"|"ms",
                value = 123
              ),
              tcpRetryEvents = list(
                "connection-error"
              )
            ),
            timeout = list(
              idle = list(
                unit = "s"|"ms",
                value = 123
              ),
              perRequest = list(
                unit = "s"|"ms",
                value = 123
              )
            )
          ),
          http2Route = list(
            action = list(
              weightedTargets = list(
                list(
                  port = 123,
                  virtualNode = "string",
                  weight = 123
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
              ),
              scheme = "http"|"https"
            ),
            retryPolicy = list(
              httpRetryEvents = list(
                "string"
              ),
              maxRetries = 123,
              perRetryTimeout = list(
                unit = "s"|"ms",
                value = 123
              ),
              tcpRetryEvents = list(
                "connection-error"
              )
            ),
            timeout = list(
              idle = list(
                unit = "s"|"ms",
                value = 123
              ),
              perRequest = list(
                unit = "s"|"ms",
                value = 123
              )
            )
          ),
          httpRoute = list(
            action = list(
              weightedTargets = list(
                list(
                  port = 123,
                  virtualNode = "string",
                  weight = 123
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
              ),
              scheme = "http"|"https"
            ),
            retryPolicy = list(
              httpRetryEvents = list(
                "string"
              ),
              maxRetries = 123,
              perRetryTimeout = list(
                unit = "s"|"ms",
                value = 123
              ),
              tcpRetryEvents = list(
                "connection-error"
              )
            ),
            timeout = list(
              idle = list(
                unit = "s"|"ms",
                value = 123
              ),
              perRequest = list(
                unit = "s"|"ms",
                value = 123
              )
            )
          ),
          priority = 123,
          tcpRoute = list(
            action = list(
              weightedTargets = list(
                list(
                  port = 123,
                  virtualNode = "string",
                  weight = 123
                )
              )
            ),
            match = list(
              port = 123
            ),
            timeout = list(
              idle = list(
                unit = "s"|"ms",
                value = 123
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

    svc$create_route(
      clientToken = "string",
      meshName = "string",
      meshOwner = "string",
      routeName = "string",
      spec = list(
        grpcRoute = list(
          action = list(
            weightedTargets = list(
              list(
                port = 123,
                virtualNode = "string",
                weight = 123
              )
            )
          ),
          match = list(
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
            methodName = "string",
            port = 123,
            serviceName = "string"
          ),
          retryPolicy = list(
            grpcRetryEvents = list(
              "cancelled"|"deadline-exceeded"|"internal"|"resource-exhausted"|"unavailable"
            ),
            httpRetryEvents = list(
              "string"
            ),
            maxRetries = 123,
            perRetryTimeout = list(
              unit = "s"|"ms",
              value = 123
            ),
            tcpRetryEvents = list(
              "connection-error"
            )
          ),
          timeout = list(
            idle = list(
              unit = "s"|"ms",
              value = 123
            ),
            perRequest = list(
              unit = "s"|"ms",
              value = 123
            )
          )
        ),
        http2Route = list(
          action = list(
            weightedTargets = list(
              list(
                port = 123,
                virtualNode = "string",
                weight = 123
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
            ),
            scheme = "http"|"https"
          ),
          retryPolicy = list(
            httpRetryEvents = list(
              "string"
            ),
            maxRetries = 123,
            perRetryTimeout = list(
              unit = "s"|"ms",
              value = 123
            ),
            tcpRetryEvents = list(
              "connection-error"
            )
          ),
          timeout = list(
            idle = list(
              unit = "s"|"ms",
              value = 123
            ),
            perRequest = list(
              unit = "s"|"ms",
              value = 123
            )
          )
        ),
        httpRoute = list(
          action = list(
            weightedTargets = list(
              list(
                port = 123,
                virtualNode = "string",
                weight = 123
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
            ),
            scheme = "http"|"https"
          ),
          retryPolicy = list(
            httpRetryEvents = list(
              "string"
            ),
            maxRetries = 123,
            perRetryTimeout = list(
              unit = "s"|"ms",
              value = 123
            ),
            tcpRetryEvents = list(
              "connection-error"
            )
          ),
          timeout = list(
            idle = list(
              unit = "s"|"ms",
              value = 123
            ),
            perRequest = list(
              unit = "s"|"ms",
              value = 123
            )
          )
        ),
        priority = 123,
        tcpRoute = list(
          action = list(
            weightedTargets = list(
              list(
                port = 123,
                virtualNode = "string",
                weight = 123
              )
            )
          ),
          match = list(
            port = 123
          ),
          timeout = list(
            idle = list(
              unit = "s"|"ms",
              value = 123
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
