<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appmesh_update_route</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates an existing route for a specified service mesh and virtual router

### Description

Updates an existing route for a specified service mesh and virtual
router.

### Usage

    appmesh_update_route(clientToken, meshName, meshOwner, routeName, spec,
      virtualRouterName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="appmesh_update_route_:_clientToken">clientToken</code></td>
<td><p>Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. Up to 36 letters, numbers, hyphens, and
underscores are allowed.</p></td>
</tr>
<tr class="even">
<td><code id="appmesh_update_route_:_meshName">meshName</code></td>
<td><p>[required] The name of the service mesh that the route resides
in.</p></td>
</tr>
<tr class="odd">
<td><code id="appmesh_update_route_:_meshOwner">meshOwner</code></td>
<td><p>The Amazon Web Services IAM account ID of the service mesh owner.
If the account ID is not your own, then it's the ID of the account that
shared the mesh with your account. For more information about mesh
sharing, see <a
href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working
with shared meshes</a>.</p></td>
</tr>
<tr class="even">
<td><code id="appmesh_update_route_:_routeName">routeName</code></td>
<td><p>[required] The name of the route to update.</p></td>
</tr>
<tr class="odd">
<td><code id="appmesh_update_route_:_spec">spec</code></td>
<td><p>[required] The new route specification to apply. This overwrites
the existing data.</p></td>
</tr>
<tr class="even">
<td><code
id="appmesh_update_route_:_virtualRouterName">virtualRouterName</code></td>
<td><p>[required] The name of the virtual router that the route is
associated with.</p></td>
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

    svc$update_route(
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
      virtualRouterName = "string"
    )
