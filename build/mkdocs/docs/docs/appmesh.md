<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appmesh</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS App Mesh

### Description

App Mesh is a service mesh based on the Envoy proxy that makes it easy
to monitor and control microservices. App Mesh standardizes how your
microservices communicate, giving you end-to-end visibility and helping
to ensure high availability for your applications.

App Mesh gives you consistent visibility and network traffic controls
for every microservice in an application. You can use App Mesh with
Amazon Web Services Fargate, Amazon ECS, Amazon EKS, Kubernetes on
Amazon Web Services, and Amazon EC2.

App Mesh supports microservice applications that use service discovery
naming for their components. For more information about service
discovery on Amazon ECS, see [Service
Discovery](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-discovery.html)
in the *Amazon Elastic Container Service Developer Guide*. Kubernetes
`kube-dns` and `coredns` are supported. For more information, see [DNS
for Services and
Pods](https://kubernetes.io/docs/concepts/services-networking/dns-pod-service/)
in the Kubernetes documentation.

### Usage

    appmesh(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="appmesh_:_config">config</code></td>
<td><p>Optional configuration of credentials, endpoint, and/or
region.</p>
<ul>
<li><p><strong>access_key_id</strong>: AWS access key ID</p></li>
<li><p><strong>secret_access_key</strong>: AWS secret access
key</p></li>
<li><p><strong>session_token</strong>: AWS temporary session
token</p></li>
<li><p><strong>profile</strong>: The name of a profile to use. If not
given, then the default profile is used.</p></li>
<li><p><strong>anonymous</strong>: Set anonymous credentials.</p></li>
<li><p><strong>endpoint</strong>: The complete URL to use for the
constructed client.</p></li>
<li><p><strong>region</strong>: The AWS Region used in instantiating the
client.</p></li>
<li><p><strong>close_connection</strong>: Immediately close all HTTP
connections.</p></li>
<li><p><strong>timeout</strong>: The time in seconds till a timeout
exception is thrown when attempting to make a connection. The default is
60 seconds.</p></li>
<li><p><strong>s3_force_path_style</strong>: Set this to
<code>true</code> to force the request to use path-style addressing,
i.e., <code
style="white-space: pre;">⁠http://s3.amazonaws.com/BUCKET/KEY⁠</code>.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A client for the service. You can call the service's operations using
syntax like `svc$operation(...)`, where `svc` is the name you've
assigned to the client. The available operations are listed in the
Operations section.

### Service syntax

    svc <- appmesh(
      config = list(
        credentials = list(
          creds = list(
            access_key_id = "string",
            secret_access_key = "string",
            session_token = "string"
          ),
          profile = "string",
          anonymous = "logical"
        ),
        endpoint = "string",
        region = "string",
        close_connection = "logical",
        timeout = "numeric",
        s3_force_path_style = "logical"
      )
    )

### Operations

<table>
<tbody>
<tr class="odd">
<td style="text-align: left;"><a href="../appmesh_create_gateway_route/"> create_gateway_route </a></td>
<td style="text-align: left;">Creates a gateway route</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../appmesh_create_mesh/"> create_mesh </a></td>
<td style="text-align: left;">Creates a service mesh</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../appmesh_create_route/"> create_route </a></td>
<td style="text-align: left;">Creates a route that is associated with a
virtual router</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../appmesh_create_virtual_gateway/"> create_virtual_gateway </a></td>
<td style="text-align: left;">Creates a virtual gateway</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../appmesh_create_virtual_node/"> create_virtual_node </a></td>
<td style="text-align: left;">Creates a virtual node within a service
mesh</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../appmesh_create_virtual_router/"> create_virtual_router </a></td>
<td style="text-align: left;">Creates a virtual router within a service
mesh</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../appmesh_create_virtual_service/"> create_virtual_service </a></td>
<td style="text-align: left;">Creates a virtual service within a service
mesh</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../appmesh_delete_gateway_route/"> delete_gateway_route </a></td>
<td style="text-align: left;">Deletes an existing gateway route</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../appmesh_delete_mesh/"> delete_mesh </a></td>
<td style="text-align: left;">Deletes an existing service mesh</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../appmesh_delete_route/"> delete_route </a></td>
<td style="text-align: left;">Deletes an existing route</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../appmesh_delete_virtual_gateway/"> delete_virtual_gateway </a></td>
<td style="text-align: left;">Deletes an existing virtual gateway</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../appmesh_delete_virtual_node/"> delete_virtual_node </a></td>
<td style="text-align: left;">Deletes an existing virtual node</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../appmesh_delete_virtual_router/"> delete_virtual_router </a></td>
<td style="text-align: left;">Deletes an existing virtual router</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../appmesh_delete_virtual_service/"> delete_virtual_service </a></td>
<td style="text-align: left;">Deletes an existing virtual service</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../appmesh_describe_gateway_route/"> describe_gateway_route </a></td>
<td style="text-align: left;">Describes an existing gateway route</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../appmesh_describe_mesh/"> describe_mesh </a></td>
<td style="text-align: left;">Describes an existing service mesh</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../appmesh_describe_route/"> describe_route </a></td>
<td style="text-align: left;">Describes an existing route</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../appmesh_describe_virtual_gateway/"> describe_virtual_gateway </a></td>
<td style="text-align: left;">Describes an existing virtual gateway</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../appmesh_describe_virtual_node/"> describe_virtual_node </a></td>
<td style="text-align: left;">Describes an existing virtual node</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../appmesh_describe_virtual_router/"> describe_virtual_router </a></td>
<td style="text-align: left;">Describes an existing virtual router</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../appmesh_describe_virtual_service/"> describe_virtual_service </a></td>
<td style="text-align: left;">Describes an existing virtual service</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../appmesh_list_gateway_routes/"> list_gateway_routes </a></td>
<td style="text-align: left;">Returns a list of existing gateway routes
that are associated to a virtual gateway</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../appmesh_list_meshes/"> list_meshes </a></td>
<td style="text-align: left;">Returns a list of existing service
meshes</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../appmesh_list_routes/"> list_routes </a></td>
<td style="text-align: left;">Returns a list of existing routes in a
service mesh</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../appmesh_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">List the tags for an App Mesh
resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../appmesh_list_virtual_gateways/"> list_virtual_gateways </a></td>
<td style="text-align: left;">Returns a list of existing virtual
gateways in a service mesh</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../appmesh_list_virtual_nodes/"> list_virtual_nodes </a></td>
<td style="text-align: left;">Returns a list of existing virtual
nodes</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../appmesh_list_virtual_routers/"> list_virtual_routers </a></td>
<td style="text-align: left;">Returns a list of existing virtual routers
in a service mesh</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../appmesh_list_virtual_services/"> list_virtual_services </a></td>
<td style="text-align: left;">Returns a list of existing virtual
services in a service mesh</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../appmesh_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Associates the specified tags to a
resource with the specified resourceArn</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../appmesh_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Deletes specified tags from a
resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../appmesh_update_gateway_route/"> update_gateway_route </a></td>
<td style="text-align: left;">Updates an existing gateway route that is
associated to a specified virtual gateway in a service mesh</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../appmesh_update_mesh/"> update_mesh </a></td>
<td style="text-align: left;">Updates an existing service mesh</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../appmesh_update_route/"> update_route </a></td>
<td style="text-align: left;">Updates an existing route for a specified
service mesh and virtual router</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../appmesh_update_virtual_gateway/"> update_virtual_gateway </a></td>
<td style="text-align: left;">Updates an existing virtual gateway in a
specified service mesh</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../appmesh_update_virtual_node/"> update_virtual_node </a></td>
<td style="text-align: left;">Updates an existing virtual node in a
specified service mesh</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../appmesh_update_virtual_router/"> update_virtual_router </a></td>
<td style="text-align: left;">Updates an existing virtual router in a
specified service mesh</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../appmesh_update_virtual_service/"> update_virtual_service </a></td>
<td style="text-align: left;">Updates an existing virtual service in a
specified service mesh</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- appmesh()
    svc$create_gateway_route(
      Foo = 123
    )

    ## End(Not run)
