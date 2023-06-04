<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appmesh_create_virtual_node</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a virtual node within a service mesh

### Description

Creates a virtual node within a service mesh.

A virtual node acts as a logical pointer to a particular task group,
such as an Amazon ECS service or a Kubernetes deployment. When you
create a virtual node, you can specify the service discovery information
for your task group, and whether the proxy running in a task group will
communicate with other proxies using Transport Layer Security (TLS).

You define a `listener` for any inbound traffic that your virtual node
expects. Any virtual service that your virtual node expects to
communicate to is specified as a `backend`.

The response metadata for your new virtual node contains the `arn` that
is associated with the virtual node. Set this value to the full ARN; for
example,
`arn:aws:appmesh:us-west-2:123456789012:myMesh/default/virtualNode/myApp`)
as the `APPMESH_RESOURCE_ARN` environment variable for your task group's
Envoy proxy container in your task definition or pod spec. This is then
mapped to the `node.id` and `node.cluster` Envoy parameters.

By default, App Mesh uses the name of the resource you specified in
`APPMESH_RESOURCE_ARN` when Envoy is referring to itself in metrics and
traces. You can override this behavior by setting the
`APPMESH_RESOURCE_CLUSTER` environment variable with your own name.

For more information about virtual nodes, see [Virtual
nodes](https://docs.aws.amazon.com/app-mesh/latest/userguide/virtual_nodes.html).
You must be using `⁠1.15.0⁠` or later of the Envoy image when setting
these variables. For more information aboutApp Mesh Envoy variables, see
[Envoy
image](https://docs.aws.amazon.com/app-mesh/latest/userguide/envoy.html)
in the App Mesh User Guide.

### Usage

    appmesh_create_virtual_node(clientToken, meshName, meshOwner, spec,
      tags, virtualNodeName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="appmesh_create_virtual_node_:_clientToken">clientToken</code></td>
<td><p>Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. Up to 36 letters, numbers, hyphens, and
underscores are allowed.</p></td>
</tr>
<tr class="even">
<td><code
id="appmesh_create_virtual_node_:_meshName">meshName</code></td>
<td><p>[required] The name of the service mesh to create the virtual
node in.</p></td>
</tr>
<tr class="odd">
<td><code
id="appmesh_create_virtual_node_:_meshOwner">meshOwner</code></td>
<td><p>The Amazon Web Services IAM account ID of the service mesh owner.
If the account ID is not your own, then the account that you specify
must share the mesh with your account before you can create the resource
in the service mesh. For more information about mesh sharing, see <a
href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working
with shared meshes</a>.</p></td>
</tr>
<tr class="even">
<td><code id="appmesh_create_virtual_node_:_spec">spec</code></td>
<td><p>[required] The virtual node specification to apply.</p></td>
</tr>
<tr class="odd">
<td><code id="appmesh_create_virtual_node_:_tags">tags</code></td>
<td><p>Optional metadata that you can apply to the virtual node to
assist with categorization and organization. Each tag consists of a key
and an optional value, both of which you define. Tag keys can have a
maximum character length of 128 characters, and tag values can have a
maximum length of 256 characters.</p></td>
</tr>
<tr class="even">
<td><code
id="appmesh_create_virtual_node_:_virtualNodeName">virtualNodeName</code></td>
<td><p>[required] The name to use for the virtual node.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      virtualNode = list(
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
          backends = list(
            list(
              virtualService = list(
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
                ),
                virtualServiceName = "string"
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
                ),
                tcp = list(
                  maxConnections = 123
                )
              ),
              healthCheck = list(
                healthyThreshold = 123,
                intervalMillis = 123,
                path = "string",
                port = 123,
                protocol = "http"|"tcp"|"http2"|"grpc",
                timeoutMillis = 123,
                unhealthyThreshold = 123
              ),
              outlierDetection = list(
                baseEjectionDuration = list(
                  unit = "s"|"ms",
                  value = 123
                ),
                interval = list(
                  unit = "s"|"ms",
                  value = 123
                ),
                maxEjectionPercent = 123,
                maxServerErrors = 123
              ),
              portMapping = list(
                port = 123,
                protocol = "http"|"tcp"|"http2"|"grpc"
              ),
              timeout = list(
                grpc = list(
                  idle = list(
                    unit = "s"|"ms",
                    value = 123
                  ),
                  perRequest = list(
                    unit = "s"|"ms",
                    value = 123
                  )
                ),
                http = list(
                  idle = list(
                    unit = "s"|"ms",
                    value = 123
                  ),
                  perRequest = list(
                    unit = "s"|"ms",
                    value = 123
                  )
                ),
                http2 = list(
                  idle = list(
                    unit = "s"|"ms",
                    value = 123
                  ),
                  perRequest = list(
                    unit = "s"|"ms",
                    value = 123
                  )
                ),
                tcp = list(
                  idle = list(
                    unit = "s"|"ms",
                    value = 123
                  )
                )
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
          ),
          serviceDiscovery = list(
            awsCloudMap = list(
              attributes = list(
                list(
                  key = "string",
                  value = "string"
                )
              ),
              ipPreference = "IPv6_PREFERRED"|"IPv4_PREFERRED"|"IPv4_ONLY"|"IPv6_ONLY",
              namespaceName = "string",
              serviceName = "string"
            ),
            dns = list(
              hostname = "string",
              ipPreference = "IPv6_PREFERRED"|"IPv4_PREFERRED"|"IPv4_ONLY"|"IPv6_ONLY",
              responseType = "LOADBALANCER"|"ENDPOINTS"
            )
          )
        ),
        status = list(
          status = "ACTIVE"|"INACTIVE"|"DELETED"
        ),
        virtualNodeName = "string"
      )
    )

### Request syntax

    svc$create_virtual_node(
      clientToken = "string",
      meshName = "string",
      meshOwner = "string",
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
        backends = list(
          list(
            virtualService = list(
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
              ),
              virtualServiceName = "string"
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
              ),
              tcp = list(
                maxConnections = 123
              )
            ),
            healthCheck = list(
              healthyThreshold = 123,
              intervalMillis = 123,
              path = "string",
              port = 123,
              protocol = "http"|"tcp"|"http2"|"grpc",
              timeoutMillis = 123,
              unhealthyThreshold = 123
            ),
            outlierDetection = list(
              baseEjectionDuration = list(
                unit = "s"|"ms",
                value = 123
              ),
              interval = list(
                unit = "s"|"ms",
                value = 123
              ),
              maxEjectionPercent = 123,
              maxServerErrors = 123
            ),
            portMapping = list(
              port = 123,
              protocol = "http"|"tcp"|"http2"|"grpc"
            ),
            timeout = list(
              grpc = list(
                idle = list(
                  unit = "s"|"ms",
                  value = 123
                ),
                perRequest = list(
                  unit = "s"|"ms",
                  value = 123
                )
              ),
              http = list(
                idle = list(
                  unit = "s"|"ms",
                  value = 123
                ),
                perRequest = list(
                  unit = "s"|"ms",
                  value = 123
                )
              ),
              http2 = list(
                idle = list(
                  unit = "s"|"ms",
                  value = 123
                ),
                perRequest = list(
                  unit = "s"|"ms",
                  value = 123
                )
              ),
              tcp = list(
                idle = list(
                  unit = "s"|"ms",
                  value = 123
                )
              )
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
        ),
        serviceDiscovery = list(
          awsCloudMap = list(
            attributes = list(
              list(
                key = "string",
                value = "string"
              )
            ),
            ipPreference = "IPv6_PREFERRED"|"IPv4_PREFERRED"|"IPv4_ONLY"|"IPv6_ONLY",
            namespaceName = "string",
            serviceName = "string"
          ),
          dns = list(
            hostname = "string",
            ipPreference = "IPv6_PREFERRED"|"IPv4_PREFERRED"|"IPv4_ONLY"|"IPv6_ONLY",
            responseType = "LOADBALANCER"|"ENDPOINTS"
          )
        )
      ),
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      ),
      virtualNodeName = "string"
    )
