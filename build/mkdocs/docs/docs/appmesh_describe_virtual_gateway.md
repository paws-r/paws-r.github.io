<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appmesh_describe_virtual_gateway</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes an existing virtual gateway

### Description

Describes an existing virtual gateway.

### Usage

    appmesh_describe_virtual_gateway(meshName, meshOwner,
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
id="appmesh_describe_virtual_gateway_:_meshName">meshName</code></td>
<td><p>[required] The name of the service mesh that the gateway route
resides in.</p></td>
</tr>
<tr class="even">
<td><code
id="appmesh_describe_virtual_gateway_:_meshOwner">meshOwner</code></td>
<td><p>The Amazon Web Services IAM account ID of the service mesh owner.
If the account ID is not your own, then it's the ID of the account that
shared the mesh with your account. For more information about mesh
sharing, see <a
href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working
with shared meshes</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="appmesh_describe_virtual_gateway_:_virtualGatewayName">virtualGatewayName</code></td>
<td><p>[required] The name of the virtual gateway to describe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      virtualGateway = list(
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
          backendDefaults = list(
            clientPolicy = list(
              tls = list(
                certificate = list(
                  file = list(
                    certificateChain = "string",
                    privateKey = "string"
                  ),
                  sds = list(
                    secretName = "string"
                  )
                ),
                enforce = TRUE|FALSE,
                ports = list(
                  123
                ),
                validation = list(
                  subjectAlternativeNames = list(
                    match = list(
                      exact = list(
                        "string"
                      )
                    )
                  ),
                  trust = list(
                    acm = list(
                      certificateAuthorityArns = list(
                        "string"
                      )
                    ),
                    file = list(
                      certificateChain = "string"
                    ),
                    sds = list(
                      secretName = "string"
                    )
                  )
                )
              )
            )
          ),
          listeners = list(
            list(
              connectionPool = list(
                grpc = list(
                  maxRequests = 123
                ),
                http = list(
                  maxConnections = 123,
                  maxPendingRequests = 123
                ),
                http2 = list(
                  maxRequests = 123
                )
              ),
              healthCheck = list(
                healthyThreshold = 123,
                intervalMillis = 123,
                path = "string",
                port = 123,
                protocol = "http"|"http2"|"grpc",
                timeoutMillis = 123,
                unhealthyThreshold = 123
              ),
              portMapping = list(
                port = 123,
                protocol = "http"|"http2"|"grpc"
              ),
              tls = list(
                certificate = list(
                  acm = list(
                    certificateArn = "string"
                  ),
                  file = list(
                    certificateChain = "string",
                    privateKey = "string"
                  ),
                  sds = list(
                    secretName = "string"
                  )
                ),
                mode = "STRICT"|"PERMISSIVE"|"DISABLED",
                validation = list(
                  subjectAlternativeNames = list(
                    match = list(
                      exact = list(
                        "string"
                      )
                    )
                  ),
                  trust = list(
                    file = list(
                      certificateChain = "string"
                    ),
                    sds = list(
                      secretName = "string"
                    )
                  )
                )
              )
            )
          ),
          logging = list(
            accessLog = list(
              file = list(
                format = list(
                  json = list(
                    list(
                      key = "string",
                      value = "string"
                    )
                  ),
                  text = "string"
                ),
                path = "string"
              )
            )
          )
        ),
        status = list(
          status = "ACTIVE"|"INACTIVE"|"DELETED"
        ),
        virtualGatewayName = "string"
      )
    )

### Request syntax

    svc$describe_virtual_gateway(
      meshName = "string",
      meshOwner = "string",
      virtualGatewayName = "string"
    )
