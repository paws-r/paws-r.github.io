<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lightsail</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon Lightsail

### Description

Amazon Lightsail is the easiest way to get started with Amazon Web
Services (Amazon Web Services) for developers who need to build websites
or web applications. It includes everything you need to launch your
project quickly - instances (virtual private servers), container
services, storage buckets, managed databases, SSD-based block storage,
static IP addresses, load balancers, content delivery network (CDN)
distributions, DNS management of registered domains, and resource
snapshots (backups) - for a low, predictable monthly price.

You can manage your Lightsail resources using the Lightsail console,
Lightsail API, Command Line Interface (CLI), or SDKs. For more
information about Lightsail concepts and tasks, see the Amazon Lightsail
Developer Guide.

This API Reference provides detailed information about the actions, data
types, parameters, and errors of the Lightsail service. For more
information about the supported Amazon Web Services Regions, endpoints,
and service quotas of the Lightsail service, see [Amazon Lightsail
Endpoints and
Quotas](https://docs.aws.amazon.com/general/latest/gr/lightsail.html) in
the *Amazon Web Services General Reference*.

### Usage

    lightsail(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="lightsail_:_config">config</code></td>
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

    svc <- lightsail(
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
<td style="text-align: left;"><a href="../lightsail_allocate_static_ip/"> allocate_static_ip </a></td>
<td style="text-align: left;">Allocates a static IP address</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_attach_certificate_to_distribution/"> attach_certificate_to_distribution </a></td>
<td style="text-align: left;">Attaches an SSL/TLS certificate to your
Amazon Lightsail content delivery network (CDN) distribution</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_attach_disk/"> attach_disk </a></td>
<td style="text-align: left;">Attaches a block storage disk to a running
or stopped Lightsail instance and exposes it to the instance with the
specified disk name</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_attach_instances_to_load_balancer/"> attach_instances_to_load_balancer </a></td>
<td style="text-align: left;">Attaches one or more Lightsail instances
to a load balancer</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_attach_load_balancer_tls_certificate/"> attach_load_balancer_tls_certificate </a></td>
<td style="text-align: left;">Attaches a Transport Layer Security (TLS)
certificate to your load balancer</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_attach_static_ip/"> attach_static_ip </a></td>
<td style="text-align: left;">Attaches a static IP address to a specific
Amazon Lightsail instance</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_close_instance_public_ports/"> close_instance_public_ports </a></td>
<td style="text-align: left;">Closes ports for a specific Amazon
Lightsail instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_copy_snapshot/"> copy_snapshot </a></td>
<td style="text-align: left;">Copies a manual snapshot of an instance or
disk as another manual snapshot, or copies an automatic snapshot of an
instance or disk as a manual snapshot</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_create_bucket/"> create_bucket </a></td>
<td style="text-align: left;">Creates an Amazon Lightsail bucket</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_create_bucket_access_key/"> create_bucket_access_key </a></td>
<td style="text-align: left;">Creates a new access key for the specified
Amazon Lightsail bucket</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_create_certificate/"> create_certificate </a></td>
<td style="text-align: left;">Creates an SSL/TLS certificate for an
Amazon Lightsail content delivery network (CDN) distribution and a
container service</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_create_cloud_formation_stack/"> create_cloud_formation_stack </a></td>
<td style="text-align: left;">Creates an AWS CloudFormation stack, which
creates a new Amazon EC2 instance from an exported Amazon Lightsail
snapshot</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_create_contact_method/"> create_contact_method </a></td>
<td style="text-align: left;">Creates an email or SMS text message
contact method</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_create_container_service/"> create_container_service </a></td>
<td style="text-align: left;">Creates an Amazon Lightsail container
service</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_create_container_service_deployment/"> create_container_service_deployment </a></td>
<td style="text-align: left;">Creates a deployment for your Amazon
Lightsail container service</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../lightsail_create_container_service_registry_login/"> create_container_service_registry_login </a></td>
<td style="text-align: left;">Creates a temporary set of log in
credentials that you can use to log in to the Docker process on your
local machine</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_create_disk/"> create_disk </a></td>
<td style="text-align: left;">Creates a block storage disk that can be
attached to an Amazon Lightsail instance in the same Availability Zone
(e</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_create_disk_from_snapshot/"> create_disk_from_snapshot </a></td>
<td style="text-align: left;">Creates a block storage disk from a manual
or automatic snapshot of a disk</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_create_disk_snapshot/"> create_disk_snapshot </a></td>
<td style="text-align: left;">Creates a snapshot of a block storage
disk</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_create_distribution/"> create_distribution </a></td>
<td style="text-align: left;">Creates an Amazon Lightsail content
delivery network (CDN) distribution</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_create_domain/"> create_domain </a></td>
<td style="text-align: left;">Creates a domain resource for the
specified domain (e</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_create_domain_entry/"> create_domain_entry </a></td>
<td style="text-align: left;">Creates one of the following domain name
system (DNS) records in a domain DNS zone: Address (A), canonical name
(CNAME), mail exchanger (MX), name server (NS), start of authority
(SOA), service locator (SRV), or text (TXT)</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_create_gui_session_access_details/"> create_gui_session_access_details </a></td>
<td style="text-align: left;">Creates two URLs that are used to access a
virtual computer’s graphical user interface (GUI) session</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_create_instances/"> create_instances </a></td>
<td style="text-align: left;">Creates one or more Amazon Lightsail
instances</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_create_instances_from_snapshot/"> create_instances_from_snapshot </a></td>
<td style="text-align: left;">Creates one or more new instances from a
manual or automatic snapshot of an instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_create_instance_snapshot/"> create_instance_snapshot </a></td>
<td style="text-align: left;">Creates a snapshot of a specific virtual
private server, or instance</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_create_key_pair/"> create_key_pair </a></td>
<td style="text-align: left;">Creates a custom SSH key pair that you can
use with an Amazon Lightsail instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_create_load_balancer/"> create_load_balancer </a></td>
<td style="text-align: left;">Creates a Lightsail load balancer</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_create_load_balancer_tls_certificate/"> create_load_balancer_tls_certificate </a></td>
<td style="text-align: left;">Creates an SSL/TLS certificate for an
Amazon Lightsail load balancer</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_create_relational_database/"> create_relational_database </a></td>
<td style="text-align: left;">Creates a new database in Amazon
Lightsail</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../lightsail_create_relational_database_from_snapshot/"> create_relational_database_from_snapshot </a></td>
<td style="text-align: left;">Creates a new database from an existing
database snapshot in Amazon Lightsail</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_create_relational_database_snapshot/"> create_relational_database_snapshot </a></td>
<td style="text-align: left;">Creates a snapshot of your database in
Amazon Lightsail</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_delete_alarm/"> delete_alarm </a></td>
<td style="text-align: left;">Deletes an alarm</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_delete_auto_snapshot/"> delete_auto_snapshot </a></td>
<td style="text-align: left;">Deletes an automatic snapshot of an
instance or disk</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_delete_bucket/"> delete_bucket </a></td>
<td style="text-align: left;">Deletes a Amazon Lightsail bucket</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_delete_bucket_access_key/"> delete_bucket_access_key </a></td>
<td style="text-align: left;">Deletes an access key for the specified
Amazon Lightsail bucket</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_delete_certificate/"> delete_certificate </a></td>
<td style="text-align: left;">Deletes an SSL/TLS certificate for your
Amazon Lightsail content delivery network (CDN) distribution</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_delete_contact_method/"> delete_contact_method </a></td>
<td style="text-align: left;">Deletes a contact method</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_delete_container_image/"> delete_container_image </a></td>
<td style="text-align: left;">Deletes a container image that is
registered to your Amazon Lightsail container service</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_delete_container_service/"> delete_container_service </a></td>
<td style="text-align: left;">Deletes your Amazon Lightsail container
service</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_delete_disk/"> delete_disk </a></td>
<td style="text-align: left;">Deletes the specified block storage
disk</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_delete_disk_snapshot/"> delete_disk_snapshot </a></td>
<td style="text-align: left;">Deletes the specified disk snapshot</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_delete_distribution/"> delete_distribution </a></td>
<td style="text-align: left;">Deletes your Amazon Lightsail content
delivery network (CDN) distribution</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_delete_domain/"> delete_domain </a></td>
<td style="text-align: left;">Deletes the specified domain recordset and
all of its domain records</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_delete_domain_entry/"> delete_domain_entry </a></td>
<td style="text-align: left;">Deletes a specific domain entry</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_delete_instance/"> delete_instance </a></td>
<td style="text-align: left;">Deletes an Amazon Lightsail instance</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_delete_instance_snapshot/"> delete_instance_snapshot </a></td>
<td style="text-align: left;">Deletes a specific snapshot of a virtual
private server (or instance)</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_delete_key_pair/"> delete_key_pair </a></td>
<td style="text-align: left;">Deletes the specified key pair by removing
the public key from Amazon Lightsail</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_delete_known_host_keys/"> delete_known_host_keys </a></td>
<td style="text-align: left;">Deletes the known host key or certificate
used by the Amazon Lightsail browser-based SSH or RDP clients to
authenticate an instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_delete_load_balancer/"> delete_load_balancer </a></td>
<td style="text-align: left;">Deletes a Lightsail load balancer and all
its associated SSL/TLS certificates</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_delete_load_balancer_tls_certificate/"> delete_load_balancer_tls_certificate </a></td>
<td style="text-align: left;">Deletes an SSL/TLS certificate associated
with a Lightsail load balancer</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_delete_relational_database/"> delete_relational_database </a></td>
<td style="text-align: left;">Deletes a database in Amazon
Lightsail</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_delete_relational_database_snapshot/"> delete_relational_database_snapshot </a></td>
<td style="text-align: left;">Deletes a database snapshot in Amazon
Lightsail</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_detach_certificate_from_distribution/"> detach_certificate_from_distribution </a></td>
<td style="text-align: left;">Detaches an SSL/TLS certificate from your
Amazon Lightsail content delivery network (CDN) distribution</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_detach_disk/"> detach_disk </a></td>
<td style="text-align: left;">Detaches a stopped block storage disk from
a Lightsail instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_detach_instances_from_load_balancer/"> detach_instances_from_load_balancer </a></td>
<td style="text-align: left;">Detaches the specified instances from a
Lightsail load balancer</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_detach_static_ip/"> detach_static_ip </a></td>
<td style="text-align: left;">Detaches a static IP from the Amazon
Lightsail instance to which it is attached</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_disable_add_on/"> disable_add_on </a></td>
<td style="text-align: left;">Disables an add-on for an Amazon Lightsail
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_download_default_key_pair/"> download_default_key_pair </a></td>
<td style="text-align: left;">Downloads the regional Amazon Lightsail
default key pair</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_enable_add_on/"> enable_add_on </a></td>
<td style="text-align: left;">Enables or modifies an add-on for an
Amazon Lightsail resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_export_snapshot/"> export_snapshot </a></td>
<td style="text-align: left;">Exports an Amazon Lightsail instance or
block storage disk snapshot to Amazon Elastic Compute Cloud (Amazon
EC2)</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_get_active_names/"> get_active_names </a></td>
<td style="text-align: left;">Returns the names of all active (not
deleted) resources</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_get_alarms/"> get_alarms </a></td>
<td style="text-align: left;">Returns information about the configured
alarms</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_get_auto_snapshots/"> get_auto_snapshots </a></td>
<td style="text-align: left;">Returns the available automatic snapshots
for an instance or disk</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_get_blueprints/"> get_blueprints </a></td>
<td style="text-align: left;">Returns the list of available instance
images, or blueprints</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_get_bucket_access_keys/"> get_bucket_access_keys </a></td>
<td style="text-align: left;">Returns the existing access key IDs for
the specified Amazon Lightsail bucket</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_get_bucket_bundles/"> get_bucket_bundles </a></td>
<td style="text-align: left;">Returns the bundles that you can apply to
a Amazon Lightsail bucket</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_get_bucket_metric_data/"> get_bucket_metric_data </a></td>
<td style="text-align: left;">Returns the data points of a specific
metric for an Amazon Lightsail bucket</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_get_buckets/"> get_buckets </a></td>
<td style="text-align: left;">Returns information about one or more
Amazon Lightsail buckets</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_get_bundles/"> get_bundles </a></td>
<td style="text-align: left;">Returns the bundles that you can apply to
an Amazon Lightsail instance when you create it</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_get_certificates/"> get_certificates </a></td>
<td style="text-align: left;">Returns information about one or more
Amazon Lightsail SSL/TLS certificates</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_get_cloud_formation_stack_records/"> get_cloud_formation_stack_records </a></td>
<td style="text-align: left;">Returns the CloudFormation stack record
created as a result of the create cloud formation stack operation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_get_contact_methods/"> get_contact_methods </a></td>
<td style="text-align: left;">Returns information about the configured
contact methods</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_get_container_api_metadata/"> get_container_api_metadata </a></td>
<td style="text-align: left;">Returns information about Amazon Lightsail
containers, such as the current version of the Lightsail Control
(lightsailctl) plugin</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_get_container_images/"> get_container_images </a></td>
<td style="text-align: left;">Returns the container images that are
registered to your Amazon Lightsail container service</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_get_container_log/"> get_container_log </a></td>
<td style="text-align: left;">Returns the log events of a container of
your Amazon Lightsail container service</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_get_container_service_deployments/"> get_container_service_deployments </a></td>
<td style="text-align: left;">Returns the deployments for your Amazon
Lightsail container service</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_get_container_service_metric_data/"> get_container_service_metric_data </a></td>
<td style="text-align: left;">Returns the data points of a specific
metric of your Amazon Lightsail container service</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_get_container_service_powers/"> get_container_service_powers </a></td>
<td style="text-align: left;">Returns the list of powers that can be
specified for your Amazon Lightsail container services</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_get_container_services/"> get_container_services </a></td>
<td style="text-align: left;">Returns information about one or more of
your Amazon Lightsail container services</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_get_cost_estimate/"> get_cost_estimate </a></td>
<td style="text-align: left;">Retrieves information about the cost
estimate for a specified resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_get_disk/"> get_disk </a></td>
<td style="text-align: left;">Returns information about a specific block
storage disk</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_get_disks/"> get_disks </a></td>
<td style="text-align: left;">Returns information about all block
storage disks in your AWS account and region</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_get_disk_snapshot/"> get_disk_snapshot </a></td>
<td style="text-align: left;">Returns information about a specific block
storage disk snapshot</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_get_disk_snapshots/"> get_disk_snapshots </a></td>
<td style="text-align: left;">Returns information about all block
storage disk snapshots in your AWS account and region</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_get_distribution_bundles/"> get_distribution_bundles </a></td>
<td style="text-align: left;">Returns the bundles that can be applied to
your Amazon Lightsail content delivery network (CDN) distributions</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_get_distribution_latest_cache_reset/"> get_distribution_latest_cache_reset </a></td>
<td style="text-align: left;">Returns the timestamp and status of the
last cache reset of a specific Amazon Lightsail content delivery network
(CDN) distribution</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_get_distribution_metric_data/"> get_distribution_metric_data </a></td>
<td style="text-align: left;">Returns the data points of a specific
metric for an Amazon Lightsail content delivery network (CDN)
distribution</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_get_distributions/"> get_distributions </a></td>
<td style="text-align: left;">Returns information about one or more of
your Amazon Lightsail content delivery network (CDN) distributions</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_get_domain/"> get_domain </a></td>
<td style="text-align: left;">Returns information about a specific
domain recordset</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_get_domains/"> get_domains </a></td>
<td style="text-align: left;">Returns a list of all domains in the
user's account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_get_export_snapshot_records/"> get_export_snapshot_records </a></td>
<td style="text-align: left;">Returns all export snapshot records
created as a result of the export snapshot operation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_get_instance/"> get_instance </a></td>
<td style="text-align: left;">Returns information about a specific
Amazon Lightsail instance, which is a virtual private server</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_get_instance_access_details/"> get_instance_access_details </a></td>
<td style="text-align: left;">Returns temporary SSH keys you can use to
connect to a specific virtual private server, or instance</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_get_instance_metric_data/"> get_instance_metric_data </a></td>
<td style="text-align: left;">Returns the data points for the specified
Amazon Lightsail instance metric, given an instance name</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_get_instance_port_states/"> get_instance_port_states </a></td>
<td style="text-align: left;">Returns the firewall port states for a
specific Amazon Lightsail instance, the IP addresses allowed to connect
to the instance through the ports, and the protocol</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_get_instances/"> get_instances </a></td>
<td style="text-align: left;">Returns information about all Amazon
Lightsail virtual private servers, or instances</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_get_instance_snapshot/"> get_instance_snapshot </a></td>
<td style="text-align: left;">Returns information about a specific
instance snapshot</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_get_instance_snapshots/"> get_instance_snapshots </a></td>
<td style="text-align: left;">Returns all instance snapshots for the
user's account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_get_instance_state/"> get_instance_state </a></td>
<td style="text-align: left;">Returns the state of a specific
instance</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_get_key_pair/"> get_key_pair </a></td>
<td style="text-align: left;">Returns information about a specific key
pair</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_get_key_pairs/"> get_key_pairs </a></td>
<td style="text-align: left;">Returns information about all key pairs in
the user's account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_get_load_balancer/"> get_load_balancer </a></td>
<td style="text-align: left;">Returns information about the specified
Lightsail load balancer</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_get_load_balancer_metric_data/"> get_load_balancer_metric_data </a></td>
<td style="text-align: left;">Returns information about health metrics
for your Lightsail load balancer</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_get_load_balancers/"> get_load_balancers </a></td>
<td style="text-align: left;">Returns information about all load
balancers in an account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_get_load_balancer_tls_certificates/"> get_load_balancer_tls_certificates </a></td>
<td style="text-align: left;">Returns information about the TLS
certificates that are associated with the specified Lightsail load
balancer</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_get_load_balancer_tls_policies/"> get_load_balancer_tls_policies </a></td>
<td style="text-align: left;">Returns a list of TLS security policies
that you can apply to Lightsail load balancers</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_get_operation/"> get_operation </a></td>
<td style="text-align: left;">Returns information about a specific
operation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_get_operations/"> get_operations </a></td>
<td style="text-align: left;">Returns information about all
operations</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_get_operations_for_resource/"> get_operations_for_resource </a></td>
<td style="text-align: left;">Gets operations for a specific resource
(e</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_get_regions/"> get_regions </a></td>
<td style="text-align: left;">Returns a list of all valid regions for
Amazon Lightsail</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_get_relational_database/"> get_relational_database </a></td>
<td style="text-align: left;">Returns information about a specific
database in Amazon Lightsail</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_get_relational_database_blueprints/"> get_relational_database_blueprints </a></td>
<td style="text-align: left;">Returns a list of available database
blueprints in Amazon Lightsail</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_get_relational_database_bundles/"> get_relational_database_bundles </a></td>
<td style="text-align: left;">Returns the list of bundles that are
available in Amazon Lightsail</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_get_relational_database_events/"> get_relational_database_events </a></td>
<td style="text-align: left;">Returns a list of events for a specific
database in Amazon Lightsail</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_get_relational_database_log_events/"> get_relational_database_log_events </a></td>
<td style="text-align: left;">Returns a list of log events for a
database in Amazon Lightsail</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_get_relational_database_log_streams/"> get_relational_database_log_streams </a></td>
<td style="text-align: left;">Returns a list of available log streams
for a specific database in Amazon Lightsail</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../lightsail_get_relational_database_master_user_password/"> get_relational_database_master_user_password </a></td>
<td style="text-align: left;">Returns the current, previous, or pending
versions of the master user password for a Lightsail database</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_get_relational_database_metric_data/"> get_relational_database_metric_data </a></td>
<td style="text-align: left;">Returns the data points of the specified
metric for a database in Amazon Lightsail</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_get_relational_database_parameters/"> get_relational_database_parameters </a></td>
<td style="text-align: left;">Returns all of the runtime parameters
offered by the underlying database software, or engine, for a specific
database in Amazon Lightsail</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_get_relational_databases/"> get_relational_databases </a></td>
<td style="text-align: left;">Returns information about all of your
databases in Amazon Lightsail</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_get_relational_database_snapshot/"> get_relational_database_snapshot </a></td>
<td style="text-align: left;">Returns information about a specific
database snapshot in Amazon Lightsail</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_get_relational_database_snapshots/"> get_relational_database_snapshots </a></td>
<td style="text-align: left;">Returns information about all of your
database snapshots in Amazon Lightsail</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_get_static_ip/"> get_static_ip </a></td>
<td style="text-align: left;">Returns information about an Amazon
Lightsail static IP</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_get_static_ips/"> get_static_ips </a></td>
<td style="text-align: left;">Returns information about all static IPs
in the user's account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_import_key_pair/"> import_key_pair </a></td>
<td style="text-align: left;">Imports a public SSH key from a specific
key pair</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_is_vpc_peered/"> is_vpc_peered </a></td>
<td style="text-align: left;">Returns a Boolean value indicating whether
your Lightsail VPC is peered</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_open_instance_public_ports/"> open_instance_public_ports </a></td>
<td style="text-align: left;">Opens ports for a specific Amazon
Lightsail instance, and specifies the IP addresses allowed to connect to
the instance through the ports, and the protocol</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_peer_vpc/"> peer_vpc </a></td>
<td style="text-align: left;">Peers the Lightsail VPC with the user's
default VPC</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_put_alarm/"> put_alarm </a></td>
<td style="text-align: left;">Creates or updates an alarm, and
associates it with the specified metric</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_put_instance_public_ports/"> put_instance_public_ports </a></td>
<td style="text-align: left;">Opens ports for a specific Amazon
Lightsail instance, and specifies the IP addresses allowed to connect to
the instance through the ports, and the protocol</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_reboot_instance/"> reboot_instance </a></td>
<td style="text-align: left;">Restarts a specific instance</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_reboot_relational_database/"> reboot_relational_database </a></td>
<td style="text-align: left;">Restarts a specific database in Amazon
Lightsail</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_register_container_image/"> register_container_image </a></td>
<td style="text-align: left;">Registers a container image to your Amazon
Lightsail container service</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_release_static_ip/"> release_static_ip </a></td>
<td style="text-align: left;">Deletes a specific static IP from your
account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_reset_distribution_cache/"> reset_distribution_cache </a></td>
<td style="text-align: left;">Deletes currently cached content from your
Amazon Lightsail content delivery network (CDN) distribution</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_send_contact_method_verification/"> send_contact_method_verification </a></td>
<td style="text-align: left;">Sends a verification request to an email
contact method to ensure it's owned by the requester</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_set_ip_address_type/"> set_ip_address_type </a></td>
<td style="text-align: left;">Sets the IP address type for an Amazon
Lightsail resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_set_resource_access_for_bucket/"> set_resource_access_for_bucket </a></td>
<td style="text-align: left;">Sets the Amazon Lightsail resources that
can access the specified Lightsail bucket</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_start_gui_session/"> start_gui_session </a></td>
<td style="text-align: left;">Initiates a graphical user interface (GUI)
session that’s used to access a virtual computer’s operating system and
application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_start_instance/"> start_instance </a></td>
<td style="text-align: left;">Starts a specific Amazon Lightsail
instance from a stopped state</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_start_relational_database/"> start_relational_database </a></td>
<td style="text-align: left;">Starts a specific database from a stopped
state in Amazon Lightsail</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_stop_gui_session/"> stop_gui_session </a></td>
<td style="text-align: left;">Terminates a web-based NICE DCV session
that’s used to access a virtual computer’s operating system or
application</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_stop_instance/"> stop_instance </a></td>
<td style="text-align: left;">Stops a specific Amazon Lightsail instance
that is currently running</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_stop_relational_database/"> stop_relational_database </a></td>
<td style="text-align: left;">Stops a specific database that is
currently running in Amazon Lightsail</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Adds one or more tags to the specified
Amazon Lightsail resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_test_alarm/"> test_alarm </a></td>
<td style="text-align: left;">Tests an alarm by displaying a banner on
the Amazon Lightsail console</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_unpeer_vpc/"> unpeer_vpc </a></td>
<td style="text-align: left;">Unpeers the Lightsail VPC from the user's
default VPC</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Deletes the specified set of tag keys and
their values from the specified Amazon Lightsail resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_update_bucket/"> update_bucket </a></td>
<td style="text-align: left;">Updates an existing Amazon Lightsail
bucket</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_update_bucket_bundle/"> update_bucket_bundle </a></td>
<td style="text-align: left;">Updates the bundle, or storage plan, of an
existing Amazon Lightsail bucket</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_update_container_service/"> update_container_service </a></td>
<td style="text-align: left;">Updates the configuration of your Amazon
Lightsail container service, such as its power, scale, and public domain
names</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_update_distribution/"> update_distribution </a></td>
<td style="text-align: left;">Updates an existing Amazon Lightsail
content delivery network (CDN) distribution</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_update_distribution_bundle/"> update_distribution_bundle </a></td>
<td style="text-align: left;">Updates the bundle of your Amazon
Lightsail content delivery network (CDN) distribution</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_update_domain_entry/"> update_domain_entry </a></td>
<td style="text-align: left;">Updates a domain recordset after it is
created</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_update_instance_metadata_options/"> update_instance_metadata_options </a></td>
<td style="text-align: left;">Modifies the Amazon Lightsail instance
metadata parameters on a running or stopped instance</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_update_load_balancer_attribute/"> update_load_balancer_attribute </a></td>
<td style="text-align: left;">Updates the specified attribute for a load
balancer</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lightsail_update_relational_database/"> update_relational_database </a></td>
<td style="text-align: left;">Allows the update of one or more
attributes of a database in Amazon Lightsail</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lightsail_update_relational_database_parameters/"> update_relational_database_parameters </a></td>
<td style="text-align: left;">Allows the update of one or more
parameters of a database in Amazon Lightsail</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- lightsail()
    svc$allocate_static_ip(
      Foo = 123
    )

    ## End(Not run)
