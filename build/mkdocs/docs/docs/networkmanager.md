<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkmanager</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS Network Manager

### Description

Amazon Web Services enables you to centrally manage your Amazon Web
Services Cloud WAN core network and your Transit Gateway network across
Amazon Web Services accounts, Regions, and on-premises locations.

### Usage

    networkmanager(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="networkmanager_:_config">config</code></td>
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

    svc <- networkmanager(
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
<td style="text-align: left;"><a href="../networkmanager_accept_attachment/"> accept_attachment </a></td>
<td style="text-align: left;">Accepts a core network attachment
request</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../networkmanager_associate_connect_peer/"> associate_connect_peer </a></td>
<td style="text-align: left;">Associates a core network Connect peer
with a device and optionally, with a link</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../networkmanager_associate_customer_gateway/"> associate_customer_gateway </a></td>
<td style="text-align: left;">Associates a customer gateway with a
device and optionally, with a link</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../networkmanager_associate_link/"> associate_link </a></td>
<td style="text-align: left;">Associates a link to a device</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../networkmanager_associate_transit_gateway_connect_peer/"> associate_transit_gateway_connect_peer </a></td>
<td style="text-align: left;">Associates a transit gateway Connect peer
with a device, and optionally, with a link</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../networkmanager_create_connect_attachment/"> create_connect_attachment </a></td>
<td style="text-align: left;">Creates a core network Connect attachment
from a specified core network attachment</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../networkmanager_create_connection/"> create_connection </a></td>
<td style="text-align: left;">Creates a connection between two
devices</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../networkmanager_create_connect_peer/"> create_connect_peer </a></td>
<td style="text-align: left;">Creates a core network Connect peer for a
specified core network connect attachment between a core network and an
appliance</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../networkmanager_create_core_network/"> create_core_network </a></td>
<td style="text-align: left;">Creates a core network as part of your
global network, and optionally, with a core network policy</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../networkmanager_create_device/"> create_device </a></td>
<td style="text-align: left;">Creates a new device in a global
network</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../networkmanager_create_global_network/"> create_global_network </a></td>
<td style="text-align: left;">Creates a new, empty global network</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../networkmanager_create_link/"> create_link </a></td>
<td style="text-align: left;">Creates a new link for a specified
site</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../networkmanager_create_site/"> create_site </a></td>
<td style="text-align: left;">Creates a new site in a global
network</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../networkmanager_create_site_to_site_vpn_attachment/"> create_site_to_site_vpn_attachment </a></td>
<td style="text-align: left;">Creates an Amazon Web Services
site-to-site VPN attachment on an edge location of a core network</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../networkmanager_create_transit_gateway_peering/"> create_transit_gateway_peering </a></td>
<td style="text-align: left;">Creates a transit gateway peering
connection</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../networkmanager_create_transit_gateway_route_table_attachment/"> create_transit_gateway_route_table_attachment </a></td>
<td style="text-align: left;">Creates a transit gateway route table
attachment</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../networkmanager_create_vpc_attachment/"> create_vpc_attachment </a></td>
<td style="text-align: left;">Creates a VPC attachment on an edge
location of a core network</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../networkmanager_delete_attachment/"> delete_attachment </a></td>
<td style="text-align: left;">Deletes an attachment</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../networkmanager_delete_connection/"> delete_connection </a></td>
<td style="text-align: left;">Deletes the specified connection in your
global network</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../networkmanager_delete_connect_peer/"> delete_connect_peer </a></td>
<td style="text-align: left;">Deletes a Connect peer</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../networkmanager_delete_core_network/"> delete_core_network </a></td>
<td style="text-align: left;">Deletes a core network along with all core
network policies</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../networkmanager_delete_core_network_policy_version/"> delete_core_network_policy_version </a></td>
<td style="text-align: left;">Deletes a policy version from a core
network</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../networkmanager_delete_device/"> delete_device </a></td>
<td style="text-align: left;">Deletes an existing device</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../networkmanager_delete_global_network/"> delete_global_network </a></td>
<td style="text-align: left;">Deletes an existing global network</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../networkmanager_delete_link/"> delete_link </a></td>
<td style="text-align: left;">Deletes an existing link</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../networkmanager_delete_peering/"> delete_peering </a></td>
<td style="text-align: left;">Deletes an existing peering
connection</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../networkmanager_delete_resource_policy/"> delete_resource_policy </a></td>
<td style="text-align: left;">Deletes a resource policy for the
specified resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../networkmanager_delete_site/"> delete_site </a></td>
<td style="text-align: left;">Deletes an existing site</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../networkmanager_deregister_transit_gateway/"> deregister_transit_gateway </a></td>
<td style="text-align: left;">Deregisters a transit gateway from your
global network</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../networkmanager_describe_global_networks/"> describe_global_networks </a></td>
<td style="text-align: left;">Describes one or more global networks</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../networkmanager_disassociate_connect_peer/"> disassociate_connect_peer </a></td>
<td style="text-align: left;">Disassociates a core network Connect peer
from a device and a link</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../networkmanager_disassociate_customer_gateway/"> disassociate_customer_gateway </a></td>
<td style="text-align: left;">Disassociates a customer gateway from a
device and a link</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../networkmanager_disassociate_link/"> disassociate_link </a></td>
<td style="text-align: left;">Disassociates an existing device from a
link</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../networkmanager_disassociate_transit_gateway_connect_peer/"> disassociate_transit_gateway_connect_peer </a></td>
<td style="text-align: left;">Disassociates a transit gateway Connect
peer from a device and link</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../networkmanager_execute_core_network_change_set/"> execute_core_network_change_set </a></td>
<td style="text-align: left;">Executes a change set on your core
network</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../networkmanager_get_connect_attachment/"> get_connect_attachment </a></td>
<td style="text-align: left;">Returns information about a core network
Connect attachment</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../networkmanager_get_connections/"> get_connections </a></td>
<td style="text-align: left;">Gets information about one or more of your
connections in a global network</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../networkmanager_get_connect_peer/"> get_connect_peer </a></td>
<td style="text-align: left;">Returns information about a core network
Connect peer</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../networkmanager_get_connect_peer_associations/"> get_connect_peer_associations </a></td>
<td style="text-align: left;">Returns information about a core network
Connect peer associations</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../networkmanager_get_core_network/"> get_core_network </a></td>
<td style="text-align: left;">Returns information about the LIVE policy
for a core network</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../networkmanager_get_core_network_change_events/"> get_core_network_change_events </a></td>
<td style="text-align: left;">Returns information about a core network
change event</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../networkmanager_get_core_network_change_set/"> get_core_network_change_set </a></td>
<td style="text-align: left;">Returns a change set between the LIVE core
network policy and a submitted policy</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../networkmanager_get_core_network_policy/"> get_core_network_policy </a></td>
<td style="text-align: left;">Returns details about a core network
policy</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../networkmanager_get_customer_gateway_associations/"> get_customer_gateway_associations </a></td>
<td style="text-align: left;">Gets the association information for
customer gateways that are associated with devices and links in your
global network</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../networkmanager_get_devices/"> get_devices </a></td>
<td style="text-align: left;">Gets information about one or more of your
devices in a global network</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../networkmanager_get_link_associations/"> get_link_associations </a></td>
<td style="text-align: left;">Gets the link associations for a device or
a link</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../networkmanager_get_links/"> get_links </a></td>
<td style="text-align: left;">Gets information about one or more links
in a specified global network</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../networkmanager_get_network_resource_counts/"> get_network_resource_counts </a></td>
<td style="text-align: left;">Gets the count of network resources, by
resource type, for the specified global network</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../networkmanager_get_network_resource_relationships/"> get_network_resource_relationships </a></td>
<td style="text-align: left;">Gets the network resource relationships
for the specified global network</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../networkmanager_get_network_resources/"> get_network_resources </a></td>
<td style="text-align: left;">Describes the network resources for the
specified global network</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../networkmanager_get_network_routes/"> get_network_routes </a></td>
<td style="text-align: left;">Gets the network routes of the specified
global network</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../networkmanager_get_network_telemetry/"> get_network_telemetry </a></td>
<td style="text-align: left;">Gets the network telemetry of the
specified global network</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../networkmanager_get_resource_policy/"> get_resource_policy </a></td>
<td style="text-align: left;">Returns information about a resource
policy</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../networkmanager_get_route_analysis/"> get_route_analysis </a></td>
<td style="text-align: left;">Gets information about the specified route
analysis</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../networkmanager_get_sites/"> get_sites </a></td>
<td style="text-align: left;">Gets information about one or more of your
sites in a global network</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../networkmanager_get_site_to_site_vpn_attachment/"> get_site_to_site_vpn_attachment </a></td>
<td style="text-align: left;">Returns information about a site-to-site
VPN attachment</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../networkmanager_get_transit_gateway_connect_peer_associations/"> get_transit_gateway_connect_peer_associations </a></td>
<td style="text-align: left;">Gets information about one or more of your
transit gateway Connect peer associations in a global network</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../networkmanager_get_transit_gateway_peering/"> get_transit_gateway_peering </a></td>
<td style="text-align: left;">Returns information about a transit
gateway peer</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../networkmanager_get_transit_gateway_registrations/"> get_transit_gateway_registrations </a></td>
<td style="text-align: left;">Gets information about the transit gateway
registrations in a specified global network</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../networkmanager_get_transit_gateway_route_table_attachment/"> get_transit_gateway_route_table_attachment </a></td>
<td style="text-align: left;">Returns information about a transit
gateway route table attachment</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../networkmanager_get_vpc_attachment/"> get_vpc_attachment </a></td>
<td style="text-align: left;">Returns information about a VPC
attachment</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../networkmanager_list_attachments/"> list_attachments </a></td>
<td style="text-align: left;">Returns a list of core network
attachments</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../networkmanager_list_connect_peers/"> list_connect_peers </a></td>
<td style="text-align: left;">Returns a list of core network Connect
peers</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../networkmanager_list_core_network_policy_versions/"> list_core_network_policy_versions </a></td>
<td style="text-align: left;">Returns a list of core network policy
versions</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../networkmanager_list_core_networks/"> list_core_networks </a></td>
<td style="text-align: left;">Returns a list of owned and shared core
networks</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../networkmanager_list_organization_service_access_status/"> list_organization_service_access_status </a></td>
<td style="text-align: left;">Gets the status of the Service Linked Role
(SLR) deployment for the accounts in a given Amazon Web Services
Organization</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../networkmanager_list_peerings/"> list_peerings </a></td>
<td style="text-align: left;">Lists the peerings for a core network</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../networkmanager_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Lists the tags for a specified
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../networkmanager_put_core_network_policy/"> put_core_network_policy </a></td>
<td style="text-align: left;">Creates a new, immutable version of a core
network policy</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../networkmanager_put_resource_policy/"> put_resource_policy </a></td>
<td style="text-align: left;">Creates or updates a resource policy</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../networkmanager_register_transit_gateway/"> register_transit_gateway </a></td>
<td style="text-align: left;">Registers a transit gateway in your global
network</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../networkmanager_reject_attachment/"> reject_attachment </a></td>
<td style="text-align: left;">Rejects a core network attachment
request</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../networkmanager_restore_core_network_policy_version/"> restore_core_network_policy_version </a></td>
<td style="text-align: left;">Restores a previous policy version as a
new, immutable version of a core network policy</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../networkmanager_start_organization_service_access_update/"> start_organization_service_access_update </a></td>
<td style="text-align: left;">Enables the Network Manager service for an
Amazon Web Services Organization</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../networkmanager_start_route_analysis/"> start_route_analysis </a></td>
<td style="text-align: left;">Starts analyzing the routing path between
the specified source and destination</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../networkmanager_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Tags a specified resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../networkmanager_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes tags from a specified
resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../networkmanager_update_connection/"> update_connection </a></td>
<td style="text-align: left;">Updates the information for an existing
connection</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../networkmanager_update_core_network/"> update_core_network </a></td>
<td style="text-align: left;">Updates the description of a core
network</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../networkmanager_update_device/"> update_device </a></td>
<td style="text-align: left;">Updates the details for an existing
device</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../networkmanager_update_global_network/"> update_global_network </a></td>
<td style="text-align: left;">Updates an existing global network</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../networkmanager_update_link/"> update_link </a></td>
<td style="text-align: left;">Updates the details for an existing
link</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../networkmanager_update_network_resource_metadata/"> update_network_resource_metadata </a></td>
<td style="text-align: left;">Updates the resource metadata for the
specified global network</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../networkmanager_update_site/"> update_site </a></td>
<td style="text-align: left;">Updates the information for an existing
site</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../networkmanager_update_vpc_attachment/"> update_vpc_attachment </a></td>
<td style="text-align: left;">Updates a VPC attachment</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- networkmanager()
    svc$accept_attachment(
      Foo = 123
    )

    ## End(Not run)
