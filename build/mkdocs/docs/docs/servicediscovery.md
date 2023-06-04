<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicediscovery</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS Cloud Map

### Description

Cloud Map

With Cloud Map, you can configure public DNS, private DNS, or HTTP
namespaces that your microservice applications run in. When an instance
becomes available, you can call the Cloud Map API to register the
instance with Cloud Map. For public or private DNS namespaces, Cloud Map
automatically creates DNS records and an optional health check. Clients
that submit public or private DNS queries, or HTTP requests, for the
service receive an answer that contains up to eight healthy records.

### Usage

    servicediscovery(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="servicediscovery_:_config">config</code></td>
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

    svc <- servicediscovery(
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
<td style="text-align: left;"><a href="../servicediscovery_create_http_namespace/"> create_http_namespace </a></td>
<td style="text-align: left;">Creates an HTTP namespace</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../servicediscovery_create_private_dns_namespace/"> create_private_dns_namespace </a></td>
<td style="text-align: left;">Creates a private namespace based on DNS,
which is visible only inside a specified Amazon VPC</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../servicediscovery_create_public_dns_namespace/"> create_public_dns_namespace </a></td>
<td style="text-align: left;">Creates a public namespace based on DNS,
which is visible on the internet</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../servicediscovery_create_service/"> create_service </a></td>
<td style="text-align: left;">Creates a service</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../servicediscovery_delete_namespace/"> delete_namespace </a></td>
<td style="text-align: left;">Deletes a namespace from the current
account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../servicediscovery_delete_service/"> delete_service </a></td>
<td style="text-align: left;">Deletes a specified service</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../servicediscovery_deregister_instance/"> deregister_instance </a></td>
<td style="text-align: left;">Deletes the Amazon Route 53 DNS records
and health check, if any, that Cloud Map created for the specified
instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../servicediscovery_discover_instances/"> discover_instances </a></td>
<td style="text-align: left;">Discovers registered instances for a
specified namespace and service</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../servicediscovery_get_instance/"> get_instance </a></td>
<td style="text-align: left;">Gets information about a specified
instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../servicediscovery_get_instances_health_status/"> get_instances_health_status </a></td>
<td style="text-align: left;">Gets the current health status (Healthy,
Unhealthy, or Unknown) of one or more instances that are associated with
a specified service</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../servicediscovery_get_namespace/"> get_namespace </a></td>
<td style="text-align: left;">Gets information about a namespace</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../servicediscovery_get_operation/"> get_operation </a></td>
<td style="text-align: left;">Gets information about any operation that
returns an operation ID in the response, such as a CreateService
request</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../servicediscovery_get_service/"> get_service </a></td>
<td style="text-align: left;">Gets the settings for a specified
service</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../servicediscovery_list_instances/"> list_instances </a></td>
<td style="text-align: left;">Lists summary information about the
instances that you registered by using a specified service</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../servicediscovery_list_namespaces/"> list_namespaces </a></td>
<td style="text-align: left;">Lists summary information about the
namespaces that were created by the current Amazon Web Services
account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../servicediscovery_list_operations/"> list_operations </a></td>
<td style="text-align: left;">Lists operations that match the criteria
that you specify</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../servicediscovery_list_services/"> list_services </a></td>
<td style="text-align: left;">Lists summary information for all the
services that are associated with one or more specified namespaces</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../servicediscovery_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Lists tags for the specified resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../servicediscovery_register_instance/"> register_instance </a></td>
<td style="text-align: left;">Creates or updates one or more records
and, optionally, creates a health check based on the settings in a
specified service</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../servicediscovery_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Adds one or more tags to the specified
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../servicediscovery_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes one or more tags from the
specified resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../servicediscovery_update_http_namespace/"> update_http_namespace </a></td>
<td style="text-align: left;">Updates an HTTP namespace</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../servicediscovery_update_instance_custom_health_status/"> update_instance_custom_health_status </a></td>
<td style="text-align: left;">Submits a request to change the health
status of a custom health check to healthy or unhealthy</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../servicediscovery_update_private_dns_namespace/"> update_private_dns_namespace </a></td>
<td style="text-align: left;">Updates a private DNS namespace</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../servicediscovery_update_public_dns_namespace/"> update_public_dns_namespace </a></td>
<td style="text-align: left;">Updates a public DNS namespace</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../servicediscovery_update_service/"> update_service </a></td>
<td style="text-align: left;">Submits a request to perform the following
operations:</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- servicediscovery()
    # This example creates an HTTP namespace.
    svc$create_http_namespace(
      CreatorRequestId = "example-creator-request-id-0001",
      Description = "Example.com AWS Cloud Map HTTP Namespace",
      Name = "example-http.com"
    )

    ## End(Not run)
