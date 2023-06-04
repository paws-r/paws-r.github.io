<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directconnect</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS Direct Connect

### Description

Direct Connect links your internal network to an Direct Connect location
over a standard Ethernet fiber-optic cable. One end of the cable is
connected to your router, the other to an Direct Connect router. With
this connection in place, you can create virtual interfaces directly to
the Amazon Web Services Cloud (for example, to Amazon EC2 and Amazon S3)
and to Amazon VPC, bypassing Internet service providers in your network
path. A connection provides access to all Amazon Web Services Regions
except the China (Beijing) and (China) Ningxia Regions. Amazon Web
Services resources in the China Regions can only be accessed through
locations associated with those Regions.

### Usage

    directconnect(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="directconnect_:_config">config</code></td>
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

    svc <- directconnect(
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
<td
style="text-align: left;"><a href="../directconnect_accept_direct_connect_gateway_association_proposal/"> accept_direct_connect_gateway_association_proposal </a></td>
<td style="text-align: left;">Accepts a proposal request to attach a
virtual private gateway or transit gateway to a Direct Connect
gateway</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../directconnect_allocate_connection_on_interconnect/"> allocate_connection_on_interconnect </a></td>
<td style="text-align: left;">Deprecated</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../directconnect_allocate_hosted_connection/"> allocate_hosted_connection </a></td>
<td style="text-align: left;">Creates a hosted connection on the
specified interconnect or a link aggregation group (LAG) of
interconnects</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../directconnect_allocate_private_virtual_interface/"> allocate_private_virtual_interface </a></td>
<td style="text-align: left;">Provisions a private virtual interface to
be owned by the specified Amazon Web Services account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../directconnect_allocate_public_virtual_interface/"> allocate_public_virtual_interface </a></td>
<td style="text-align: left;">Provisions a public virtual interface to
be owned by the specified Amazon Web Services account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../directconnect_allocate_transit_virtual_interface/"> allocate_transit_virtual_interface </a></td>
<td style="text-align: left;">Provisions a transit virtual interface to
be owned by the specified Amazon Web Services account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../directconnect_associate_connection_with_lag/"> associate_connection_with_lag </a></td>
<td style="text-align: left;">Associates an existing connection with a
link aggregation group (LAG)</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../directconnect_associate_hosted_connection/"> associate_hosted_connection </a></td>
<td style="text-align: left;">Associates a hosted connection and its
virtual interfaces with a link aggregation group (LAG) or
interconnect</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../directconnect_associate_mac_sec_key/"> associate_mac_sec_key </a></td>
<td style="text-align: left;">Associates a MAC Security (MACsec)
Connection Key Name (CKN)/ Connectivity Association Key (CAK) pair with
an Direct Connect dedicated connection</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../directconnect_associate_virtual_interface/"> associate_virtual_interface </a></td>
<td style="text-align: left;">Associates a virtual interface with a
specified link aggregation group (LAG) or connection</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../directconnect_confirm_connection/"> confirm_connection </a></td>
<td style="text-align: left;">Confirms the creation of the specified
hosted connection on an interconnect</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../directconnect_confirm_customer_agreement/"> confirm_customer_agreement </a></td>
<td style="text-align: left;">The confirmation of the terms of agreement
when creating the connection/link aggregation group (LAG)</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../directconnect_confirm_private_virtual_interface/"> confirm_private_virtual_interface </a></td>
<td style="text-align: left;">Accepts ownership of a private virtual
interface created by another Amazon Web Services account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../directconnect_confirm_public_virtual_interface/"> confirm_public_virtual_interface </a></td>
<td style="text-align: left;">Accepts ownership of a public virtual
interface created by another Amazon Web Services account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../directconnect_confirm_transit_virtual_interface/"> confirm_transit_virtual_interface </a></td>
<td style="text-align: left;">Accepts ownership of a transit virtual
interface created by another Amazon Web Services account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../directconnect_create_bgp_peer/"> create_bgp_peer </a></td>
<td style="text-align: left;">Creates a BGP peer on the specified
virtual interface</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../directconnect_create_connection/"> create_connection </a></td>
<td style="text-align: left;">Creates a connection between a customer
network and a specific Direct Connect location</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../directconnect_create_direct_connect_gateway/"> create_direct_connect_gateway </a></td>
<td style="text-align: left;">Creates a Direct Connect gateway, which is
an intermediate object that enables you to connect a set of virtual
interfaces and virtual private gateways</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../directconnect_create_direct_connect_gateway_association/"> create_direct_connect_gateway_association </a></td>
<td style="text-align: left;">Creates an association between a Direct
Connect gateway and a virtual private gateway</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../directconnect_create_direct_connect_gateway_association_proposal/"> create_direct_connect_gateway_association_proposal </a></td>
<td style="text-align: left;">Creates a proposal to associate the
specified virtual private gateway or transit gateway with the specified
Direct Connect gateway</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../directconnect_create_interconnect/"> create_interconnect </a></td>
<td style="text-align: left;">Creates an interconnect between an Direct
Connect Partner's network and a specific Direct Connect location</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../directconnect_create_lag/"> create_lag </a></td>
<td style="text-align: left;">Creates a link aggregation group (LAG)
with the specified number of bundled physical dedicated connections
between the customer network and a specific Direct Connect location</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../directconnect_create_private_virtual_interface/"> create_private_virtual_interface </a></td>
<td style="text-align: left;">Creates a private virtual interface</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../directconnect_create_public_virtual_interface/"> create_public_virtual_interface </a></td>
<td style="text-align: left;">Creates a public virtual interface</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../directconnect_create_transit_virtual_interface/"> create_transit_virtual_interface </a></td>
<td style="text-align: left;">Creates a transit virtual interface</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../directconnect_delete_bgp_peer/"> delete_bgp_peer </a></td>
<td style="text-align: left;">Deletes the specified BGP peer on the
specified virtual interface with the specified customer address and
ASN</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../directconnect_delete_connection/"> delete_connection </a></td>
<td style="text-align: left;">Deletes the specified connection</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../directconnect_delete_direct_connect_gateway/"> delete_direct_connect_gateway </a></td>
<td style="text-align: left;">Deletes the specified Direct Connect
gateway</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../directconnect_delete_direct_connect_gateway_association/"> delete_direct_connect_gateway_association </a></td>
<td style="text-align: left;">Deletes the association between the
specified Direct Connect gateway and virtual private gateway</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../directconnect_delete_direct_connect_gateway_association_proposal/"> delete_direct_connect_gateway_association_proposal </a></td>
<td style="text-align: left;">Deletes the association proposal request
between the specified Direct Connect gateway and virtual private gateway
or transit gateway</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../directconnect_delete_interconnect/"> delete_interconnect </a></td>
<td style="text-align: left;">Deletes the specified interconnect</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../directconnect_delete_lag/"> delete_lag </a></td>
<td style="text-align: left;">Deletes the specified link aggregation
group (LAG)</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../directconnect_delete_virtual_interface/"> delete_virtual_interface </a></td>
<td style="text-align: left;">Deletes a virtual interface</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../directconnect_describe_connection_loa/"> describe_connection_loa </a></td>
<td style="text-align: left;">Deprecated</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../directconnect_describe_connections/"> describe_connections </a></td>
<td style="text-align: left;">Displays the specified connection or all
connections in this Region</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../directconnect_describe_connections_on_interconnect/"> describe_connections_on_interconnect </a></td>
<td style="text-align: left;">Deprecated</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../directconnect_describe_customer_metadata/"> describe_customer_metadata </a></td>
<td style="text-align: left;">Get and view a list of customer
agreements, along with their signed status and whether the customer is
an NNIPartner, NNIPartnerV2, or a nonPartner</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../directconnect_describe_direct_connect_gateway_association_proposals/"> describe_direct_connect_gateway_association_proposals </a></td>
<td style="text-align: left;">Describes one or more association
proposals for connection between a virtual private gateway or transit
gateway and a Direct Connect gateway</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../directconnect_describe_direct_connect_gateway_associations/"> describe_direct_connect_gateway_associations </a></td>
<td style="text-align: left;">Lists the associations between your Direct
Connect gateways and virtual private gateways and transit gateways</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../directconnect_describe_direct_connect_gateway_attachments/"> describe_direct_connect_gateway_attachments </a></td>
<td style="text-align: left;">Lists the attachments between your Direct
Connect gateways and virtual interfaces</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../directconnect_describe_direct_connect_gateways/"> describe_direct_connect_gateways </a></td>
<td style="text-align: left;">Lists all your Direct Connect gateways or
only the specified Direct Connect gateway</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../directconnect_describe_hosted_connections/"> describe_hosted_connections </a></td>
<td style="text-align: left;">Lists the hosted connections that have
been provisioned on the specified interconnect or link aggregation group
(LAG)</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../directconnect_describe_interconnect_loa/"> describe_interconnect_loa </a></td>
<td style="text-align: left;">Deprecated</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../directconnect_describe_interconnects/"> describe_interconnects </a></td>
<td style="text-align: left;">Lists the interconnects owned by the
Amazon Web Services account or only the specified interconnect</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../directconnect_describe_lags/"> describe_lags </a></td>
<td style="text-align: left;">Describes all your link aggregation groups
(LAG) or the specified LAG</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../directconnect_describe_loa/"> describe_loa </a></td>
<td style="text-align: left;">Gets the LOA-CFA for a connection,
interconnect, or link aggregation group (LAG)</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../directconnect_describe_locations/"> describe_locations </a></td>
<td style="text-align: left;">Lists the Direct Connect locations in the
current Amazon Web Services Region</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../directconnect_describe_router_configuration/"> describe_router_configuration </a></td>
<td style="text-align: left;">Details about the router</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../directconnect_describe_tags/"> describe_tags </a></td>
<td style="text-align: left;">Describes the tags associated with the
specified Direct Connect resources</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../directconnect_describe_virtual_gateways/"> describe_virtual_gateways </a></td>
<td style="text-align: left;">Lists the virtual private gateways owned
by the Amazon Web Services account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../directconnect_describe_virtual_interfaces/"> describe_virtual_interfaces </a></td>
<td style="text-align: left;">Displays all virtual interfaces for an
Amazon Web Services account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../directconnect_disassociate_connection_from_lag/"> disassociate_connection_from_lag </a></td>
<td style="text-align: left;">Disassociates a connection from a link
aggregation group (LAG)</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../directconnect_disassociate_mac_sec_key/"> disassociate_mac_sec_key </a></td>
<td style="text-align: left;">Removes the association between a MAC
Security (MACsec) security key and an Direct Connect dedicated
connection</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../directconnect_list_virtual_interface_test_history/"> list_virtual_interface_test_history </a></td>
<td style="text-align: left;">Lists the virtual interface failover test
history</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../directconnect_start_bgp_failover_test/"> start_bgp_failover_test </a></td>
<td style="text-align: left;">Starts the virtual interface failover test
that verifies your configuration meets your resiliency requirements by
placing the BGP peering session in the DOWN state</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../directconnect_stop_bgp_failover_test/"> stop_bgp_failover_test </a></td>
<td style="text-align: left;">Stops the virtual interface failover
test</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../directconnect_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Adds the specified tags to the specified
Direct Connect resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../directconnect_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes one or more tags from the
specified Direct Connect resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../directconnect_update_connection/"> update_connection </a></td>
<td style="text-align: left;">Updates the Direct Connect dedicated
connection configuration</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../directconnect_update_direct_connect_gateway/"> update_direct_connect_gateway </a></td>
<td style="text-align: left;">Updates the name of a current Direct
Connect gateway</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../directconnect_update_direct_connect_gateway_association/"> update_direct_connect_gateway_association </a></td>
<td style="text-align: left;">Updates the specified attributes of the
Direct Connect gateway association</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../directconnect_update_lag/"> update_lag </a></td>
<td style="text-align: left;">Updates the attributes of the specified
link aggregation group (LAG)</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../directconnect_update_virtual_interface_attributes/"> update_virtual_interface_attributes </a></td>
<td style="text-align: left;">Updates the specified attributes of the
specified virtual private interface</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- directconnect()
    svc$accept_direct_connect_gateway_association_proposal(
      Foo = 123
    )

    ## End(Not run)
