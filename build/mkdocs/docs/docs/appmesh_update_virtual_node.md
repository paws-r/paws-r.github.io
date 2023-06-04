<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appmesh_update_virtual_node</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates an existing virtual node in a specified service mesh

### Description

Updates an existing virtual node in a specified service mesh.

### Usage

    appmesh_update_virtual_node(clientToken, meshName, meshOwner, spec,
      virtualNodeName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="appmesh_update_virtual_node_:_clientToken">clientToken</code></td>
<td><p>Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. Up to 36 letters, numbers, hyphens, and
underscores are allowed.</p></td>
</tr>
<tr class="even">
<td><code
id="appmesh_update_virtual_node_:_meshName">meshName</code></td>
<td><p>[required] The name of the service mesh that the virtual node
resides in.</p></td>
</tr>
<tr class="odd">
<td><code
id="appmesh_update_virtual_node_:_meshOwner">meshOwner</code></td>
<td><p>The Amazon Web Services IAM account ID of the service mesh owner.
If the account ID is not your own, then it's the ID of the account that
shared the mesh with your account. For more information about mesh
sharing, see <a
href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working
with shared meshes</a>.</p></td>
</tr>
<tr class="even">
<td><code id="appmesh_update_virtual_node_:_spec">spec</code></td>
<td><p>[required] The new virtual node specification to apply. This
overwrites the existing data.</p></td>
</tr>
<tr class="odd">
<td><code
id="appmesh_update_virtual_node_:_virtualNodeName">virtualNodeName</code></td>
<td><p>[required] The name of the virtual node to update.</p></td>
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

    svc$update_virtual_node(
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
      virtualNodeName = "string"
    )
