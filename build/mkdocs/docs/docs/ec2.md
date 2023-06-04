<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon Elastic Compute Cloud

### Description

Amazon Elastic Compute Cloud (Amazon EC2) provides secure and resizable
computing capacity in the Amazon Web Services Cloud. Using Amazon EC2
eliminates the need to invest in hardware up front, so you can develop
and deploy applications faster. Amazon Virtual Private Cloud (Amazon
VPC) enables you to provision a logically isolated section of the Amazon
Web Services Cloud where you can launch Amazon Web Services resources in
a virtual network that you've defined. Amazon Elastic Block Store
(Amazon EBS) provides block level storage volumes for use with EC2
instances. EBS volumes are highly available and reliable storage volumes
that can be attached to any running instance and used like a hard drive.

To learn more, see the following resources:

-   Amazon EC2: [Amazon EC2 product page](https://aws.amazon.com/ec2/),
    [Amazon EC2
    documentation](https://docs.aws.amazon.com/ec2/index.html)

-   Amazon EBS: [Amazon EBS product page](https://aws.amazon.com/ebs/),
    [Amazon EBS
    documentation](https://docs.aws.amazon.com/ebs/index.html)

-   Amazon VPC: [Amazon VPC product page](https://aws.amazon.com/vpc/),
    [Amazon VPC
    documentation](https://docs.aws.amazon.com/vpc/index.html)

-   VPN: [VPN product page](https://aws.amazon.com/vpn/), [VPN
    documentation](https://docs.aws.amazon.com/vpn/index.html)

### Usage

    ec2(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_:_config">config</code></td>
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

    svc <- ec2(
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
<td style="text-align: left;"><a href="../ec2_accept_address_transfer/"> accept_address_transfer </a></td>
<td style="text-align: left;">Accepts an Elastic IP address
transfer</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ec2_accept_reserved_instances_exchange_quote/"> accept_reserved_instances_exchange_quote </a></td>
<td style="text-align: left;">Accepts the Convertible Reserved Instance
exchange quote described in the GetReservedInstancesExchangeQuote
call</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ec2_accept_transit_gateway_multicast_domain_associations/"> accept_transit_gateway_multicast_domain_associations </a></td>
<td style="text-align: left;">Accepts a request to associate subnets
with a transit gateway multicast domain</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ec2_accept_transit_gateway_peering_attachment/"> accept_transit_gateway_peering_attachment </a></td>
<td style="text-align: left;">Accepts a transit gateway peering
attachment request</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_accept_transit_gateway_vpc_attachment/"> accept_transit_gateway_vpc_attachment </a></td>
<td style="text-align: left;">Accepts a request to attach a VPC to a
transit gateway</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_accept_vpc_endpoint_connections/"> accept_vpc_endpoint_connections </a></td>
<td style="text-align: left;">Accepts connection requests to your VPC
endpoint service</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_accept_vpc_peering_connection/"> accept_vpc_peering_connection </a></td>
<td style="text-align: left;">Accept a VPC peering connection
request</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_advertise_byoip_cidr/"> advertise_byoip_cidr </a></td>
<td style="text-align: left;">Advertises an IPv4 or IPv6 address range
that is provisioned for use with your Amazon Web Services resources
through bring your own IP addresses (BYOIP)</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_allocate_address/"> allocate_address </a></td>
<td style="text-align: left;">Allocates an Elastic IP address to your
Amazon Web Services account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_allocate_hosts/"> allocate_hosts </a></td>
<td style="text-align: left;">Allocates a Dedicated Host to your
account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_allocate_ipam_pool_cidr/"> allocate_ipam_pool_cidr </a></td>
<td style="text-align: left;">Allocate a CIDR from an IPAM pool</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ec2_apply_security_groups_to_client_vpn_target_network/"> apply_security_groups_to_client_vpn_target_network </a></td>
<td style="text-align: left;">Applies a security group to the
association between the target network and the Client VPN endpoint</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_assign_ipv_6_addresses/"> assign_ipv_6_addresses </a></td>
<td style="text-align: left;">Assigns one or more IPv6 addresses to the
specified network interface</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_assign_private_ip_addresses/"> assign_private_ip_addresses </a></td>
<td style="text-align: left;">Assigns one or more secondary private IP
addresses to the specified network interface</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_assign_private_nat_gateway_address/"> assign_private_nat_gateway_address </a></td>
<td style="text-align: left;">Assigns one or more private IPv4 addresses
to a private NAT gateway</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_associate_address/"> associate_address </a></td>
<td style="text-align: left;">Associates an Elastic IP address, or
carrier IP address (for instances that are in subnets in Wavelength
Zones) with an instance or a network interface</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_associate_client_vpn_target_network/"> associate_client_vpn_target_network </a></td>
<td style="text-align: left;">Associates a target network with a Client
VPN endpoint</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_associate_dhcp_options/"> associate_dhcp_options </a></td>
<td style="text-align: left;">Associates a set of DHCP options (that
you've previously created) with the specified VPC, or associates no DHCP
options with the VPC</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ec2_associate_enclave_certificate_iam_role/"> associate_enclave_certificate_iam_role </a></td>
<td style="text-align: left;">Associates an Identity and Access
Management (IAM) role with an Certificate Manager (ACM) certificate</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_associate_iam_instance_profile/"> associate_iam_instance_profile </a></td>
<td style="text-align: left;">Associates an IAM instance profile with a
running or stopped instance</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_associate_instance_event_window/"> associate_instance_event_window </a></td>
<td style="text-align: left;">Associates one or more targets with an
event window</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_associate_ipam_resource_discovery/"> associate_ipam_resource_discovery </a></td>
<td style="text-align: left;">Associates an IPAM resource discovery with
an Amazon VPC IPAM</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_associate_nat_gateway_address/"> associate_nat_gateway_address </a></td>
<td style="text-align: left;">Associates Elastic IP addresses (EIPs) and
private IPv4 addresses with a public NAT gateway</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_associate_route_table/"> associate_route_table </a></td>
<td style="text-align: left;">Associates a subnet in your VPC or an
internet gateway or virtual private gateway attached to your VPC with a
route table in your VPC</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_associate_subnet_cidr_block/"> associate_subnet_cidr_block </a></td>
<td style="text-align: left;">Associates a CIDR block with your
subnet</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ec2_associate_transit_gateway_multicast_domain/"> associate_transit_gateway_multicast_domain </a></td>
<td style="text-align: left;">Associates the specified subnets and
transit gateway attachments with the specified transit gateway multicast
domain</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ec2_associate_transit_gateway_policy_table/"> associate_transit_gateway_policy_table </a></td>
<td style="text-align: left;">Associates the specified transit gateway
attachment with a transit gateway policy table</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_associate_transit_gateway_route_table/"> associate_transit_gateway_route_table </a></td>
<td style="text-align: left;">Associates the specified attachment with
the specified transit gateway route table</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_associate_trunk_interface/"> associate_trunk_interface </a></td>
<td style="text-align: left;">This API action is currently in limited
preview only</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_associate_vpc_cidr_block/"> associate_vpc_cidr_block </a></td>
<td style="text-align: left;">Associates a CIDR block with your VPC</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_attach_classic_link_vpc/"> attach_classic_link_vpc </a></td>
<td style="text-align: left;">We are retiring EC2-Classic</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_attach_internet_gateway/"> attach_internet_gateway </a></td>
<td style="text-align: left;">Attaches an internet gateway or a virtual
private gateway to a VPC, enabling connectivity between the internet and
the VPC</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_attach_network_interface/"> attach_network_interface </a></td>
<td style="text-align: left;">Attaches a network interface to an
instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_attach_verified_access_trust_provider/"> attach_verified_access_trust_provider </a></td>
<td style="text-align: left;">Attaches the specified Amazon Web Services
Verified Access trust provider to the specified Amazon Web Services
Verified Access instance</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_attach_volume/"> attach_volume </a></td>
<td style="text-align: left;">Attaches an EBS volume to a running or
stopped instance and exposes it to the instance with the specified
device name</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_attach_vpn_gateway/"> attach_vpn_gateway </a></td>
<td style="text-align: left;">Attaches a virtual private gateway to a
VPC</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_authorize_client_vpn_ingress/"> authorize_client_vpn_ingress </a></td>
<td style="text-align: left;">Adds an ingress authorization rule to a
Client VPN endpoint</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_authorize_security_group_egress/"> authorize_security_group_egress </a></td>
<td style="text-align: left;">[VPC only] Adds the specified outbound
(egress) rules to a security group for use with a VPC</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_authorize_security_group_ingress/"> authorize_security_group_ingress </a></td>
<td style="text-align: left;">Adds the specified inbound (ingress) rules
to a security group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_bundle_instance/"> bundle_instance </a></td>
<td style="text-align: left;">Bundles an Amazon instance store-backed
Windows instance</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_cancel_bundle_task/"> cancel_bundle_task </a></td>
<td style="text-align: left;">Cancels a bundling operation for an
instance store-backed Windows instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_cancel_capacity_reservation/"> cancel_capacity_reservation </a></td>
<td style="text-align: left;">Cancels the specified Capacity
Reservation, releases the reserved capacity, and changes the Capacity
Reservation's state to cancelled</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_cancel_capacity_reservation_fleets/"> cancel_capacity_reservation_fleets </a></td>
<td style="text-align: left;">Cancels one or more Capacity Reservation
Fleets</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_cancel_conversion_task/"> cancel_conversion_task </a></td>
<td style="text-align: left;">Cancels an active conversion task</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_cancel_export_task/"> cancel_export_task </a></td>
<td style="text-align: left;">Cancels an active export task</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_cancel_image_launch_permission/"> cancel_image_launch_permission </a></td>
<td style="text-align: left;">Removes your Amazon Web Services account
from the launch permissions for the specified AMI</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_cancel_import_task/"> cancel_import_task </a></td>
<td style="text-align: left;">Cancels an in-process import virtual
machine or import snapshot task</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_cancel_reserved_instances_listing/"> cancel_reserved_instances_listing </a></td>
<td style="text-align: left;">Cancels the specified Reserved Instance
listing in the Reserved Instance Marketplace</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_cancel_spot_fleet_requests/"> cancel_spot_fleet_requests </a></td>
<td style="text-align: left;">Cancels the specified Spot Fleet
requests</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_cancel_spot_instance_requests/"> cancel_spot_instance_requests </a></td>
<td style="text-align: left;">Cancels one or more Spot Instance
requests</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_confirm_product_instance/"> confirm_product_instance </a></td>
<td style="text-align: left;">Determines whether a product code is
associated with an instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_copy_fpga_image/"> copy_fpga_image </a></td>
<td style="text-align: left;">Copies the specified Amazon FPGA Image
(AFI) to the current Region</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_copy_image/"> copy_image </a></td>
<td style="text-align: left;">Initiates the copy of an AMI</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_copy_snapshot/"> copy_snapshot </a></td>
<td style="text-align: left;">Copies a point-in-time snapshot of an EBS
volume and stores it in Amazon S3</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_create_capacity_reservation/"> create_capacity_reservation </a></td>
<td style="text-align: left;">Creates a new Capacity Reservation with
the specified attributes</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_create_capacity_reservation_fleet/"> create_capacity_reservation_fleet </a></td>
<td style="text-align: left;">Creates a Capacity Reservation Fleet</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_create_carrier_gateway/"> create_carrier_gateway </a></td>
<td style="text-align: left;">Creates a carrier gateway</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_create_client_vpn_endpoint/"> create_client_vpn_endpoint </a></td>
<td style="text-align: left;">Creates a Client VPN endpoint</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_create_client_vpn_route/"> create_client_vpn_route </a></td>
<td style="text-align: left;">Adds a route to a network to a Client VPN
endpoint</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_create_coip_cidr/"> create_coip_cidr </a></td>
<td style="text-align: left;">Creates a range of customer-owned IP
addresses</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_create_coip_pool/"> create_coip_pool </a></td>
<td style="text-align: left;">Creates a pool of customer-owned IP (CoIP)
addresses</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_create_customer_gateway/"> create_customer_gateway </a></td>
<td style="text-align: left;">Provides information to Amazon Web
Services about your customer gateway device</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_create_default_subnet/"> create_default_subnet </a></td>
<td style="text-align: left;">Creates a default subnet with a size /20
IPv4 CIDR block in the specified Availability Zone in your default
VPC</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_create_default_vpc/"> create_default_vpc </a></td>
<td style="text-align: left;">Creates a default VPC with a size /16 IPv4
CIDR block and a default subnet in each Availability Zone</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_create_dhcp_options/"> create_dhcp_options </a></td>
<td style="text-align: left;">Creates a set of DHCP options for your
VPC</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_create_egress_only_internet_gateway/"> create_egress_only_internet_gateway </a></td>
<td style="text-align: left;">[IPv6 only] Creates an egress-only
internet gateway for your VPC</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_create_fleet/"> create_fleet </a></td>
<td style="text-align: left;">Launches an EC2 Fleet</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_create_flow_logs/"> create_flow_logs </a></td>
<td style="text-align: left;">Creates one or more flow logs to capture
information about IP traffic for a specific network interface, subnet,
or VPC</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_create_fpga_image/"> create_fpga_image </a></td>
<td style="text-align: left;">Creates an Amazon FPGA Image (AFI) from
the specified design checkpoint (DCP)</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_create_image/"> create_image </a></td>
<td style="text-align: left;">Creates an Amazon EBS-backed AMI from an
Amazon EBS-backed instance that is either running or stopped</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_create_instance_event_window/"> create_instance_event_window </a></td>
<td style="text-align: left;">Creates an event window in which scheduled
events for the associated Amazon EC2 instances can run</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_create_instance_export_task/"> create_instance_export_task </a></td>
<td style="text-align: left;">Exports a running or stopped instance to
an Amazon S3 bucket</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_create_internet_gateway/"> create_internet_gateway </a></td>
<td style="text-align: left;">Creates an internet gateway for use with a
VPC</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_create_ipam/"> create_ipam </a></td>
<td style="text-align: left;">Create an IPAM</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_create_ipam_pool/"> create_ipam_pool </a></td>
<td style="text-align: left;">Create an IP address pool for Amazon VPC
IP Address Manager (IPAM)</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_create_ipam_resource_discovery/"> create_ipam_resource_discovery </a></td>
<td style="text-align: left;">Creates an IPAM resource discovery</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_create_ipam_scope/"> create_ipam_scope </a></td>
<td style="text-align: left;">Create an IPAM scope</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_create_key_pair/"> create_key_pair </a></td>
<td style="text-align: left;">Creates an ED25519 or 2048-bit RSA key
pair with the specified name and in the specified PEM or PPK format</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_create_launch_template/"> create_launch_template </a></td>
<td style="text-align: left;">Creates a launch template</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_create_launch_template_version/"> create_launch_template_version </a></td>
<td style="text-align: left;">Creates a new version of a launch
template</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_create_local_gateway_route/"> create_local_gateway_route </a></td>
<td style="text-align: left;">Creates a static route for the specified
local gateway route table</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_create_local_gateway_route_table/"> create_local_gateway_route_table </a></td>
<td style="text-align: left;">Creates a local gateway route table</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ec2_create_local_gateway_route_table_virtual_interface_group_association/"> create_local_gateway_route_table_virtual_interface_group_association </a></td>
<td style="text-align: left;">Creates a local gateway route table
virtual interface group association</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ec2_create_local_gateway_route_table_vpc_association/"> create_local_gateway_route_table_vpc_association </a></td>
<td style="text-align: left;">Associates the specified VPC with the
specified local gateway route table</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_create_managed_prefix_list/"> create_managed_prefix_list </a></td>
<td style="text-align: left;">Creates a managed prefix list</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_create_nat_gateway/"> create_nat_gateway </a></td>
<td style="text-align: left;">Creates a NAT gateway in the specified
subnet</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_create_network_acl/"> create_network_acl </a></td>
<td style="text-align: left;">Creates a network ACL in a VPC</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_create_network_acl_entry/"> create_network_acl_entry </a></td>
<td style="text-align: left;">Creates an entry (a rule) in a network ACL
with the specified rule number</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_create_network_insights_access_scope/"> create_network_insights_access_scope </a></td>
<td style="text-align: left;">Creates a Network Access Scope</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_create_network_insights_path/"> create_network_insights_path </a></td>
<td style="text-align: left;">Creates a path to analyze for
reachability</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_create_network_interface/"> create_network_interface </a></td>
<td style="text-align: left;">Creates a network interface in the
specified subnet</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_create_network_interface_permission/"> create_network_interface_permission </a></td>
<td style="text-align: left;">Grants an Amazon Web Services-authorized
account permission to attach the specified network interface to an
instance in their account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_create_placement_group/"> create_placement_group </a></td>
<td style="text-align: left;">Creates a placement group in which to
launch instances</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_create_public_ipv_4_pool/"> create_public_ipv_4_pool </a></td>
<td style="text-align: left;">Creates a public IPv4 address pool</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_create_replace_root_volume_task/"> create_replace_root_volume_task </a></td>
<td style="text-align: left;">Replaces the EBS-backed root volume for a
running instance with a new volume that is restored to the original root
volume's launch state, that is restored to a specific snapshot taken
from the original root volume, or that is restored from an AMI that has
the same key characteristics as that of the instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_create_reserved_instances_listing/"> create_reserved_instances_listing </a></td>
<td style="text-align: left;">Creates a listing for Amazon EC2 Standard
Reserved Instances to be sold in the Reserved Instance Marketplace</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_create_restore_image_task/"> create_restore_image_task </a></td>
<td style="text-align: left;">Starts a task that restores an AMI from an
Amazon S3 object that was previously created by using
CreateStoreImageTask</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_create_route/"> create_route </a></td>
<td style="text-align: left;">Creates a route in a route table within a
VPC</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_create_route_table/"> create_route_table </a></td>
<td style="text-align: left;">Creates a route table for the specified
VPC</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_create_security_group/"> create_security_group </a></td>
<td style="text-align: left;">Creates a security group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_create_snapshot/"> create_snapshot </a></td>
<td style="text-align: left;">Creates a snapshot of an EBS volume and
stores it in Amazon S3</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_create_snapshots/"> create_snapshots </a></td>
<td style="text-align: left;">Creates crash-consistent snapshots of
multiple EBS volumes and stores the data in S3</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_create_spot_datafeed_subscription/"> create_spot_datafeed_subscription </a></td>
<td style="text-align: left;">Creates a data feed for Spot Instances,
enabling you to view Spot Instance usage logs</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_create_store_image_task/"> create_store_image_task </a></td>
<td style="text-align: left;">Stores an AMI as a single object in an
Amazon S3 bucket</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_create_subnet/"> create_subnet </a></td>
<td style="text-align: left;">Creates a subnet in the specified VPC</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_create_subnet_cidr_reservation/"> create_subnet_cidr_reservation </a></td>
<td style="text-align: left;">Creates a subnet CIDR reservation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_create_tags/"> create_tags </a></td>
<td style="text-align: left;">Adds or overwrites only the specified tags
for the specified Amazon EC2 resource or resources</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_create_traffic_mirror_filter/"> create_traffic_mirror_filter </a></td>
<td style="text-align: left;">Creates a Traffic Mirror filter</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_create_traffic_mirror_filter_rule/"> create_traffic_mirror_filter_rule </a></td>
<td style="text-align: left;">Creates a Traffic Mirror filter rule</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_create_traffic_mirror_session/"> create_traffic_mirror_session </a></td>
<td style="text-align: left;">Creates a Traffic Mirror session</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_create_traffic_mirror_target/"> create_traffic_mirror_target </a></td>
<td style="text-align: left;">Creates a target for your Traffic Mirror
session</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_create_transit_gateway/"> create_transit_gateway </a></td>
<td style="text-align: left;">Creates a transit gateway</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_create_transit_gateway_connect/"> create_transit_gateway_connect </a></td>
<td style="text-align: left;">Creates a Connect attachment from a
specified transit gateway attachment</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_create_transit_gateway_connect_peer/"> create_transit_gateway_connect_peer </a></td>
<td style="text-align: left;">Creates a Connect peer for a specified
transit gateway Connect attachment between a transit gateway and an
appliance</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ec2_create_transit_gateway_multicast_domain/"> create_transit_gateway_multicast_domain </a></td>
<td style="text-align: left;">Creates a multicast domain using the
specified transit gateway</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ec2_create_transit_gateway_peering_attachment/"> create_transit_gateway_peering_attachment </a></td>
<td style="text-align: left;">Requests a transit gateway peering
attachment between the specified transit gateway (requester) and a peer
transit gateway (accepter)</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_create_transit_gateway_policy_table/"> create_transit_gateway_policy_table </a></td>
<td style="text-align: left;">Creates a transit gateway policy
table</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ec2_create_transit_gateway_prefix_list_reference/"> create_transit_gateway_prefix_list_reference </a></td>
<td style="text-align: left;">Creates a reference (route) to a prefix
list in a specified transit gateway route table</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_create_transit_gateway_route/"> create_transit_gateway_route </a></td>
<td style="text-align: left;">Creates a static route for the specified
transit gateway route table</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_create_transit_gateway_route_table/"> create_transit_gateway_route_table </a></td>
<td style="text-align: left;">Creates a route table for the specified
transit gateway</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ec2_create_transit_gateway_route_table_announcement/"> create_transit_gateway_route_table_announcement </a></td>
<td style="text-align: left;">Advertises a new transit gateway route
table</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_create_transit_gateway_vpc_attachment/"> create_transit_gateway_vpc_attachment </a></td>
<td style="text-align: left;">Attaches the specified VPC to the
specified transit gateway</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_create_verified_access_endpoint/"> create_verified_access_endpoint </a></td>
<td style="text-align: left;">An Amazon Web Services Verified Access
endpoint is where you define your application along with an optional
endpoint-level access policy</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_create_verified_access_group/"> create_verified_access_group </a></td>
<td style="text-align: left;">An Amazon Web Services Verified Access
group is a collection of Amazon Web Services Verified Access endpoints
who's associated applications have similar security requirements</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_create_verified_access_instance/"> create_verified_access_instance </a></td>
<td style="text-align: left;">An Amazon Web Services Verified Access
instance is a regional entity that evaluates application requests and
grants access only when your security requirements are met</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_create_verified_access_trust_provider/"> create_verified_access_trust_provider </a></td>
<td style="text-align: left;">A trust provider is a third-party entity
that creates, maintains, and manages identity information for users and
devices</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_create_volume/"> create_volume </a></td>
<td style="text-align: left;">Creates an EBS volume that can be attached
to an instance in the same Availability Zone</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_create_vpc/"> create_vpc </a></td>
<td style="text-align: left;">Creates a VPC with the specified CIDR
blocks</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_create_vpc_endpoint/"> create_vpc_endpoint </a></td>
<td style="text-align: left;">Creates a VPC endpoint for a specified
service</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ec2_create_vpc_endpoint_connection_notification/"> create_vpc_endpoint_connection_notification </a></td>
<td style="text-align: left;">Creates a connection notification for a
specified VPC endpoint or VPC endpoint service</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ec2_create_vpc_endpoint_service_configuration/"> create_vpc_endpoint_service_configuration </a></td>
<td style="text-align: left;">Creates a VPC endpoint service to which
service consumers (Amazon Web Services accounts, users, and IAM roles)
can connect</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_create_vpc_peering_connection/"> create_vpc_peering_connection </a></td>
<td style="text-align: left;">Requests a VPC peering connection between
two VPCs: a requester VPC that you own and an accepter VPC with which to
create the connection</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_create_vpn_connection/"> create_vpn_connection </a></td>
<td style="text-align: left;">Creates a VPN connection between an
existing virtual private gateway or transit gateway and a customer
gateway</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_create_vpn_connection_route/"> create_vpn_connection_route </a></td>
<td style="text-align: left;">Creates a static route associated with a
VPN connection between an existing virtual private gateway and a VPN
customer gateway</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_create_vpn_gateway/"> create_vpn_gateway </a></td>
<td style="text-align: left;">Creates a virtual private gateway</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_delete_carrier_gateway/"> delete_carrier_gateway </a></td>
<td style="text-align: left;">Deletes a carrier gateway</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_delete_client_vpn_endpoint/"> delete_client_vpn_endpoint </a></td>
<td style="text-align: left;">Deletes the specified Client VPN
endpoint</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_delete_client_vpn_route/"> delete_client_vpn_route </a></td>
<td style="text-align: left;">Deletes a route from a Client VPN
endpoint</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_delete_coip_cidr/"> delete_coip_cidr </a></td>
<td style="text-align: left;">Deletes a range of customer-owned IP
addresses</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_delete_coip_pool/"> delete_coip_pool </a></td>
<td style="text-align: left;">Deletes a pool of customer-owned IP (CoIP)
addresses</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_delete_customer_gateway/"> delete_customer_gateway </a></td>
<td style="text-align: left;">Deletes the specified customer
gateway</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_delete_dhcp_options/"> delete_dhcp_options </a></td>
<td style="text-align: left;">Deletes the specified set of DHCP
options</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_delete_egress_only_internet_gateway/"> delete_egress_only_internet_gateway </a></td>
<td style="text-align: left;">Deletes an egress-only internet
gateway</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_delete_fleets/"> delete_fleets </a></td>
<td style="text-align: left;">Deletes the specified EC2 Fleets</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_delete_flow_logs/"> delete_flow_logs </a></td>
<td style="text-align: left;">Deletes one or more flow logs</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_delete_fpga_image/"> delete_fpga_image </a></td>
<td style="text-align: left;">Deletes the specified Amazon FPGA Image
(AFI)</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_delete_instance_event_window/"> delete_instance_event_window </a></td>
<td style="text-align: left;">Deletes the specified event window</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_delete_internet_gateway/"> delete_internet_gateway </a></td>
<td style="text-align: left;">Deletes the specified internet
gateway</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_delete_ipam/"> delete_ipam </a></td>
<td style="text-align: left;">Delete an IPAM</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_delete_ipam_pool/"> delete_ipam_pool </a></td>
<td style="text-align: left;">Delete an IPAM pool</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_delete_ipam_resource_discovery/"> delete_ipam_resource_discovery </a></td>
<td style="text-align: left;">Deletes an IPAM resource discovery</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_delete_ipam_scope/"> delete_ipam_scope </a></td>
<td style="text-align: left;">Delete the scope for an IPAM</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_delete_key_pair/"> delete_key_pair </a></td>
<td style="text-align: left;">Deletes the specified key pair, by
removing the public key from Amazon EC2</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_delete_launch_template/"> delete_launch_template </a></td>
<td style="text-align: left;">Deletes a launch template</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_delete_launch_template_versions/"> delete_launch_template_versions </a></td>
<td style="text-align: left;">Deletes one or more versions of a launch
template</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_delete_local_gateway_route/"> delete_local_gateway_route </a></td>
<td style="text-align: left;">Deletes the specified route from the
specified local gateway route table</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_delete_local_gateway_route_table/"> delete_local_gateway_route_table </a></td>
<td style="text-align: left;">Deletes a local gateway route table</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ec2_delete_local_gateway_route_table_virtual_interface_group_association/"> delete_local_gateway_route_table_virtual_interface_group_association </a></td>
<td style="text-align: left;">Deletes a local gateway route table
virtual interface group association</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ec2_delete_local_gateway_route_table_vpc_association/"> delete_local_gateway_route_table_vpc_association </a></td>
<td style="text-align: left;">Deletes the specified association between
a VPC and local gateway route table</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_delete_managed_prefix_list/"> delete_managed_prefix_list </a></td>
<td style="text-align: left;">Deletes the specified managed prefix
list</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_delete_nat_gateway/"> delete_nat_gateway </a></td>
<td style="text-align: left;">Deletes the specified NAT gateway</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_delete_network_acl/"> delete_network_acl </a></td>
<td style="text-align: left;">Deletes the specified network ACL</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_delete_network_acl_entry/"> delete_network_acl_entry </a></td>
<td style="text-align: left;">Deletes the specified ingress or egress
entry (rule) from the specified network ACL</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_delete_network_insights_access_scope/"> delete_network_insights_access_scope </a></td>
<td style="text-align: left;">Deletes the specified Network Access
Scope</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ec2_delete_network_insights_access_scope_analysis/"> delete_network_insights_access_scope_analysis </a></td>
<td style="text-align: left;">Deletes the specified Network Access Scope
analysis</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_delete_network_insights_analysis/"> delete_network_insights_analysis </a></td>
<td style="text-align: left;">Deletes the specified network insights
analysis</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_delete_network_insights_path/"> delete_network_insights_path </a></td>
<td style="text-align: left;">Deletes the specified path</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_delete_network_interface/"> delete_network_interface </a></td>
<td style="text-align: left;">Deletes the specified network
interface</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_delete_network_interface_permission/"> delete_network_interface_permission </a></td>
<td style="text-align: left;">Deletes a permission for a network
interface</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_delete_placement_group/"> delete_placement_group </a></td>
<td style="text-align: left;">Deletes the specified placement group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_delete_public_ipv_4_pool/"> delete_public_ipv_4_pool </a></td>
<td style="text-align: left;">Delete a public IPv4 pool</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_delete_queued_reserved_instances/"> delete_queued_reserved_instances </a></td>
<td style="text-align: left;">Deletes the queued purchases for the
specified Reserved Instances</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_delete_route/"> delete_route </a></td>
<td style="text-align: left;">Deletes the specified route from the
specified route table</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_delete_route_table/"> delete_route_table </a></td>
<td style="text-align: left;">Deletes the specified route table</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_delete_security_group/"> delete_security_group </a></td>
<td style="text-align: left;">Deletes a security group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_delete_snapshot/"> delete_snapshot </a></td>
<td style="text-align: left;">Deletes the specified snapshot</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_delete_spot_datafeed_subscription/"> delete_spot_datafeed_subscription </a></td>
<td style="text-align: left;">Deletes the data feed for Spot
Instances</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_delete_subnet/"> delete_subnet </a></td>
<td style="text-align: left;">Deletes the specified subnet</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_delete_subnet_cidr_reservation/"> delete_subnet_cidr_reservation </a></td>
<td style="text-align: left;">Deletes a subnet CIDR reservation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_delete_tags/"> delete_tags </a></td>
<td style="text-align: left;">Deletes the specified set of tags from the
specified set of resources</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_delete_traffic_mirror_filter/"> delete_traffic_mirror_filter </a></td>
<td style="text-align: left;">Deletes the specified Traffic Mirror
filter</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_delete_traffic_mirror_filter_rule/"> delete_traffic_mirror_filter_rule </a></td>
<td style="text-align: left;">Deletes the specified Traffic Mirror
rule</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_delete_traffic_mirror_session/"> delete_traffic_mirror_session </a></td>
<td style="text-align: left;">Deletes the specified Traffic Mirror
session</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_delete_traffic_mirror_target/"> delete_traffic_mirror_target </a></td>
<td style="text-align: left;">Deletes the specified Traffic Mirror
target</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_delete_transit_gateway/"> delete_transit_gateway </a></td>
<td style="text-align: left;">Deletes the specified transit gateway</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_delete_transit_gateway_connect/"> delete_transit_gateway_connect </a></td>
<td style="text-align: left;">Deletes the specified Connect
attachment</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_delete_transit_gateway_connect_peer/"> delete_transit_gateway_connect_peer </a></td>
<td style="text-align: left;">Deletes the specified Connect peer</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ec2_delete_transit_gateway_multicast_domain/"> delete_transit_gateway_multicast_domain </a></td>
<td style="text-align: left;">Deletes the specified transit gateway
multicast domain</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ec2_delete_transit_gateway_peering_attachment/"> delete_transit_gateway_peering_attachment </a></td>
<td style="text-align: left;">Deletes a transit gateway peering
attachment</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_delete_transit_gateway_policy_table/"> delete_transit_gateway_policy_table </a></td>
<td style="text-align: left;">Deletes the specified transit gateway
policy table</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ec2_delete_transit_gateway_prefix_list_reference/"> delete_transit_gateway_prefix_list_reference </a></td>
<td style="text-align: left;">Deletes a reference (route) to a prefix
list in a specified transit gateway route table</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_delete_transit_gateway_route/"> delete_transit_gateway_route </a></td>
<td style="text-align: left;">Deletes the specified route from the
specified transit gateway route table</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_delete_transit_gateway_route_table/"> delete_transit_gateway_route_table </a></td>
<td style="text-align: left;">Deletes the specified transit gateway
route table</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ec2_delete_transit_gateway_route_table_announcement/"> delete_transit_gateway_route_table_announcement </a></td>
<td style="text-align: left;">Advertises to the transit gateway that a
transit gateway route table is deleted</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_delete_transit_gateway_vpc_attachment/"> delete_transit_gateway_vpc_attachment </a></td>
<td style="text-align: left;">Deletes the specified VPC attachment</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_delete_verified_access_endpoint/"> delete_verified_access_endpoint </a></td>
<td style="text-align: left;">Delete an Amazon Web Services Verified
Access endpoint</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_delete_verified_access_group/"> delete_verified_access_group </a></td>
<td style="text-align: left;">Delete an Amazon Web Services Verified
Access group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_delete_verified_access_instance/"> delete_verified_access_instance </a></td>
<td style="text-align: left;">Delete an Amazon Web Services Verified
Access instance</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_delete_verified_access_trust_provider/"> delete_verified_access_trust_provider </a></td>
<td style="text-align: left;">Delete an Amazon Web Services Verified
Access trust provider</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_delete_volume/"> delete_volume </a></td>
<td style="text-align: left;">Deletes the specified EBS volume</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_delete_vpc/"> delete_vpc </a></td>
<td style="text-align: left;">Deletes the specified VPC</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ec2_delete_vpc_endpoint_connection_notifications/"> delete_vpc_endpoint_connection_notifications </a></td>
<td style="text-align: left;">Deletes the specified VPC endpoint
connection notifications</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_delete_vpc_endpoints/"> delete_vpc_endpoints </a></td>
<td style="text-align: left;">Deletes the specified VPC endpoints</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ec2_delete_vpc_endpoint_service_configurations/"> delete_vpc_endpoint_service_configurations </a></td>
<td style="text-align: left;">Deletes the specified VPC endpoint service
configurations</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_delete_vpc_peering_connection/"> delete_vpc_peering_connection </a></td>
<td style="text-align: left;">Deletes a VPC peering connection</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_delete_vpn_connection/"> delete_vpn_connection </a></td>
<td style="text-align: left;">Deletes the specified VPN connection</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_delete_vpn_connection_route/"> delete_vpn_connection_route </a></td>
<td style="text-align: left;">Deletes the specified static route
associated with a VPN connection between an existing virtual private
gateway and a VPN customer gateway</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_delete_vpn_gateway/"> delete_vpn_gateway </a></td>
<td style="text-align: left;">Deletes the specified virtual private
gateway</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_deprovision_byoip_cidr/"> deprovision_byoip_cidr </a></td>
<td style="text-align: left;">Releases the specified address range that
you provisioned for use with your Amazon Web Services resources through
bring your own IP addresses (BYOIP) and deletes the corresponding
address pool</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_deprovision_ipam_pool_cidr/"> deprovision_ipam_pool_cidr </a></td>
<td style="text-align: left;">Deprovision a CIDR provisioned from an
IPAM pool</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_deprovision_public_ipv_4_pool_cidr/"> deprovision_public_ipv_4_pool_cidr </a></td>
<td style="text-align: left;">Deprovision a CIDR from a public IPv4
pool</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_deregister_image/"> deregister_image </a></td>
<td style="text-align: left;">Deregisters the specified AMI</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ec2_deregister_instance_event_notification_attributes/"> deregister_instance_event_notification_attributes </a></td>
<td style="text-align: left;">Deregisters tag keys to prevent tags that
have the specified tag keys from being included in scheduled event
notifications for resources in the Region</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ec2_deregister_transit_gateway_multicast_group_members/"> deregister_transit_gateway_multicast_group_members </a></td>
<td style="text-align: left;">Deregisters the specified members (network
interfaces) from the transit gateway multicast group</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ec2_deregister_transit_gateway_multicast_group_sources/"> deregister_transit_gateway_multicast_group_sources </a></td>
<td style="text-align: left;">Deregisters the specified sources (network
interfaces) from the transit gateway multicast group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_describe_account_attributes/"> describe_account_attributes </a></td>
<td style="text-align: left;">Describes attributes of your Amazon Web
Services account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_describe_addresses/"> describe_addresses </a></td>
<td style="text-align: left;">Describes the specified Elastic IP
addresses or all of your Elastic IP addresses</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_describe_addresses_attribute/"> describe_addresses_attribute </a></td>
<td style="text-align: left;">Describes the attributes of the specified
Elastic IP addresses</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_describe_address_transfers/"> describe_address_transfers </a></td>
<td style="text-align: left;">Describes an Elastic IP address
transfer</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_describe_aggregate_id_format/"> describe_aggregate_id_format </a></td>
<td style="text-align: left;">Describes the longer ID format settings
for all resource types in a specific Region</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_describe_availability_zones/"> describe_availability_zones </a></td>
<td style="text-align: left;">Describes the Availability Zones, Local
Zones, and Wavelength Zones that are available to you</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ec2_describe_aws_network_performance_metric_subscriptions/"> describe_aws_network_performance_metric_subscriptions </a></td>
<td style="text-align: left;">Describes the current Infrastructure
Performance metric subscriptions</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_describe_bundle_tasks/"> describe_bundle_tasks </a></td>
<td style="text-align: left;">Describes the specified bundle tasks or
all of your bundle tasks</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_describe_byoip_cidrs/"> describe_byoip_cidrs </a></td>
<td style="text-align: left;">Describes the IP address ranges that were
specified in calls to ProvisionByoipCidr</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_describe_capacity_reservation_fleets/"> describe_capacity_reservation_fleets </a></td>
<td style="text-align: left;">Describes one or more Capacity Reservation
Fleets</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_describe_capacity_reservations/"> describe_capacity_reservations </a></td>
<td style="text-align: left;">Describes one or more of your Capacity
Reservations</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_describe_carrier_gateways/"> describe_carrier_gateways </a></td>
<td style="text-align: left;">Describes one or more of your carrier
gateways</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_describe_classic_link_instances/"> describe_classic_link_instances </a></td>
<td style="text-align: left;">Describes one or more of your linked
EC2-Classic instances</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ec2_describe_client_vpn_authorization_rules/"> describe_client_vpn_authorization_rules </a></td>
<td style="text-align: left;">Describes the authorization rules for a
specified Client VPN endpoint</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_describe_client_vpn_connections/"> describe_client_vpn_connections </a></td>
<td style="text-align: left;">Describes active client connections and
connections that have been terminated within the last 60 minutes for the
specified Client VPN endpoint</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_describe_client_vpn_endpoints/"> describe_client_vpn_endpoints </a></td>
<td style="text-align: left;">Describes one or more Client VPN endpoints
in the account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_describe_client_vpn_routes/"> describe_client_vpn_routes </a></td>
<td style="text-align: left;">Describes the routes for the specified
Client VPN endpoint</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_describe_client_vpn_target_networks/"> describe_client_vpn_target_networks </a></td>
<td style="text-align: left;">Describes the target networks associated
with the specified Client VPN endpoint</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_describe_coip_pools/"> describe_coip_pools </a></td>
<td style="text-align: left;">Describes the specified customer-owned
address pools or all of your customer-owned address pools</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_describe_conversion_tasks/"> describe_conversion_tasks </a></td>
<td style="text-align: left;">Describes the specified conversion tasks
or all your conversion tasks</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_describe_customer_gateways/"> describe_customer_gateways </a></td>
<td style="text-align: left;">Describes one or more of your VPN customer
gateways</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_describe_dhcp_options/"> describe_dhcp_options </a></td>
<td style="text-align: left;">Describes one or more of your DHCP options
sets</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ec2_describe_egress_only_internet_gateways/"> describe_egress_only_internet_gateways </a></td>
<td style="text-align: left;">Describes one or more of your egress-only
internet gateways</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_describe_elastic_gpus/"> describe_elastic_gpus </a></td>
<td style="text-align: left;">Describes the Elastic Graphics accelerator
associated with your instances</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_describe_export_image_tasks/"> describe_export_image_tasks </a></td>
<td style="text-align: left;">Describes the specified export image tasks
or all of your export image tasks</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_describe_export_tasks/"> describe_export_tasks </a></td>
<td style="text-align: left;">Describes the specified export instance
tasks or all of your export instance tasks</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_describe_fast_launch_images/"> describe_fast_launch_images </a></td>
<td style="text-align: left;">Describe details for Windows AMIs that are
configured for faster launching</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_describe_fast_snapshot_restores/"> describe_fast_snapshot_restores </a></td>
<td style="text-align: left;">Describes the state of fast snapshot
restores for your snapshots</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_describe_fleet_history/"> describe_fleet_history </a></td>
<td style="text-align: left;">Describes the events for the specified EC2
Fleet during the specified time</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_describe_fleet_instances/"> describe_fleet_instances </a></td>
<td style="text-align: left;">Describes the running instances for the
specified EC2 Fleet</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_describe_fleets/"> describe_fleets </a></td>
<td style="text-align: left;">Describes the specified EC2 Fleets or all
of your EC2 Fleets</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_describe_flow_logs/"> describe_flow_logs </a></td>
<td style="text-align: left;">Describes one or more flow logs</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_describe_fpga_image_attribute/"> describe_fpga_image_attribute </a></td>
<td style="text-align: left;">Describes the specified attribute of the
specified Amazon FPGA Image (AFI)</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_describe_fpga_images/"> describe_fpga_images </a></td>
<td style="text-align: left;">Describes the Amazon FPGA Images (AFIs)
available to you</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_describe_host_reservation_offerings/"> describe_host_reservation_offerings </a></td>
<td style="text-align: left;">Describes the Dedicated Host reservations
that are available to purchase</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_describe_host_reservations/"> describe_host_reservations </a></td>
<td style="text-align: left;">Describes reservations that are associated
with Dedicated Hosts in your account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_describe_hosts/"> describe_hosts </a></td>
<td style="text-align: left;">Describes the specified Dedicated Hosts or
all your Dedicated Hosts</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ec2_describe_iam_instance_profile_associations/"> describe_iam_instance_profile_associations </a></td>
<td style="text-align: left;">Describes your IAM instance profile
associations</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_describe_identity_id_format/"> describe_identity_id_format </a></td>
<td style="text-align: left;">Describes the ID format settings for
resources for the specified IAM user, IAM role, or root user</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_describe_id_format/"> describe_id_format </a></td>
<td style="text-align: left;">Describes the ID format settings for your
resources on a per-Region basis, for example, to view which resource
types are enabled for longer IDs</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_describe_image_attribute/"> describe_image_attribute </a></td>
<td style="text-align: left;">Describes the specified attribute of the
specified AMI</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_describe_images/"> describe_images </a></td>
<td style="text-align: left;">Describes the specified images (AMIs,
AKIs, and ARIs) available to you or all of the images available to
you</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_describe_import_image_tasks/"> describe_import_image_tasks </a></td>
<td style="text-align: left;">Displays details about an import virtual
machine or import snapshot tasks that are already created</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_describe_import_snapshot_tasks/"> describe_import_snapshot_tasks </a></td>
<td style="text-align: left;">Describes your import snapshot tasks</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_describe_instance_attribute/"> describe_instance_attribute </a></td>
<td style="text-align: left;">Describes the specified attribute of the
specified instance</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ec2_describe_instance_credit_specifications/"> describe_instance_credit_specifications </a></td>
<td style="text-align: left;">Describes the credit option for CPU usage
of the specified burstable performance instances</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ec2_describe_instance_event_notification_attributes/"> describe_instance_event_notification_attributes </a></td>
<td style="text-align: left;">Describes the tag keys that are registered
to appear in scheduled event notifications for resources in the current
Region</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_describe_instance_event_windows/"> describe_instance_event_windows </a></td>
<td style="text-align: left;">Describes the specified event windows or
all event windows</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_describe_instances/"> describe_instances </a></td>
<td style="text-align: left;">Describes the specified instances or all
instances</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_describe_instance_status/"> describe_instance_status </a></td>
<td style="text-align: left;">Describes the status of the specified
instances or all of your instances</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_describe_instance_type_offerings/"> describe_instance_type_offerings </a></td>
<td style="text-align: left;">Returns a list of all instance types
offered</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_describe_instance_types/"> describe_instance_types </a></td>
<td style="text-align: left;">Describes the details of the instance
types that are offered in a location</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_describe_internet_gateways/"> describe_internet_gateways </a></td>
<td style="text-align: left;">Describes one or more of your internet
gateways</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_describe_ipam_pools/"> describe_ipam_pools </a></td>
<td style="text-align: left;">Get information about your IPAM pools</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_describe_ipam_resource_discoveries/"> describe_ipam_resource_discoveries </a></td>
<td style="text-align: left;">Describes IPAM resource discoveries</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ec2_describe_ipam_resource_discovery_associations/"> describe_ipam_resource_discovery_associations </a></td>
<td style="text-align: left;">Describes resource discovery association
with an Amazon VPC IPAM</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_describe_ipams/"> describe_ipams </a></td>
<td style="text-align: left;">Get information about your IPAM pools</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_describe_ipam_scopes/"> describe_ipam_scopes </a></td>
<td style="text-align: left;">Get information about your IPAM
scopes</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_describe_ipv_6_pools/"> describe_ipv_6_pools </a></td>
<td style="text-align: left;">Describes your IPv6 address pools</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_describe_key_pairs/"> describe_key_pairs </a></td>
<td style="text-align: left;">Describes the specified key pairs or all
of your key pairs</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_describe_launch_templates/"> describe_launch_templates </a></td>
<td style="text-align: left;">Describes one or more launch
templates</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_describe_launch_template_versions/"> describe_launch_template_versions </a></td>
<td style="text-align: left;">Describes one or more versions of a
specified launch template</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_describe_local_gateway_route_tables/"> describe_local_gateway_route_tables </a></td>
<td style="text-align: left;">Describes one or more local gateway route
tables</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ec2_describe_local_gateway_route_table_virtual_interface_group_associations/"> describe_local_gateway_route_table_virtual_interface_group_associations </a></td>
<td style="text-align: left;">Describes the associations between virtual
interface groups and local gateway route tables</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ec2_describe_local_gateway_route_table_vpc_associations/"> describe_local_gateway_route_table_vpc_associations </a></td>
<td style="text-align: left;">Describes the specified associations
between VPCs and local gateway route tables</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_describe_local_gateways/"> describe_local_gateways </a></td>
<td style="text-align: left;">Describes one or more local gateways</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ec2_describe_local_gateway_virtual_interface_groups/"> describe_local_gateway_virtual_interface_groups </a></td>
<td style="text-align: left;">Describes the specified local gateway
virtual interface groups</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ec2_describe_local_gateway_virtual_interfaces/"> describe_local_gateway_virtual_interfaces </a></td>
<td style="text-align: left;">Describes the specified local gateway
virtual interfaces</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_describe_managed_prefix_lists/"> describe_managed_prefix_lists </a></td>
<td style="text-align: left;">Describes your managed prefix lists and
any Amazon Web Services-managed prefix lists</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_describe_moving_addresses/"> describe_moving_addresses </a></td>
<td style="text-align: left;">Describes your Elastic IP addresses that
are being moved to the EC2-VPC platform, or that are being restored to
the EC2-Classic platform</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_describe_nat_gateways/"> describe_nat_gateways </a></td>
<td style="text-align: left;">Describes one or more of your NAT
gateways</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_describe_network_acls/"> describe_network_acls </a></td>
<td style="text-align: left;">Describes one or more of your network
ACLs</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ec2_describe_network_insights_access_scope_analyses/"> describe_network_insights_access_scope_analyses </a></td>
<td style="text-align: left;">Describes the specified Network Access
Scope analyses</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ec2_describe_network_insights_access_scopes/"> describe_network_insights_access_scopes </a></td>
<td style="text-align: left;">Describes the specified Network Access
Scopes</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_describe_network_insights_analyses/"> describe_network_insights_analyses </a></td>
<td style="text-align: left;">Describes one or more of your network
insights analyses</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_describe_network_insights_paths/"> describe_network_insights_paths </a></td>
<td style="text-align: left;">Describes one or more of your paths</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_describe_network_interface_attribute/"> describe_network_interface_attribute </a></td>
<td style="text-align: left;">Describes a network interface
attribute</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ec2_describe_network_interface_permissions/"> describe_network_interface_permissions </a></td>
<td style="text-align: left;">Describes the permissions for your network
interfaces</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_describe_network_interfaces/"> describe_network_interfaces </a></td>
<td style="text-align: left;">Describes one or more of your network
interfaces</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_describe_placement_groups/"> describe_placement_groups </a></td>
<td style="text-align: left;">Describes the specified placement groups
or all of your placement groups</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_describe_prefix_lists/"> describe_prefix_lists </a></td>
<td style="text-align: left;">Describes available Amazon Web Services
services in a prefix list format, which includes the prefix list name
and prefix list ID of the service and the IP address range for the
service</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_describe_principal_id_format/"> describe_principal_id_format </a></td>
<td style="text-align: left;">Describes the ID format settings for the
root user and all IAM roles and IAM users that have explicitly specified
a longer ID (17-character ID) preference</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_describe_public_ipv_4_pools/"> describe_public_ipv_4_pools </a></td>
<td style="text-align: left;">Describes the specified IPv4 address
pools</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_describe_regions/"> describe_regions </a></td>
<td style="text-align: left;">Describes the Regions that are enabled for
your account, or all Regions</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_describe_replace_root_volume_tasks/"> describe_replace_root_volume_tasks </a></td>
<td style="text-align: left;">Describes a root volume replacement
task</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_describe_reserved_instances/"> describe_reserved_instances </a></td>
<td style="text-align: left;">Describes one or more of the Reserved
Instances that you purchased</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_describe_reserved_instances_listings/"> describe_reserved_instances_listings </a></td>
<td style="text-align: left;">Describes your account's Reserved Instance
listings in the Reserved Instance Marketplace</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ec2_describe_reserved_instances_modifications/"> describe_reserved_instances_modifications </a></td>
<td style="text-align: left;">Describes the modifications made to your
Reserved Instances</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_describe_reserved_instances_offerings/"> describe_reserved_instances_offerings </a></td>
<td style="text-align: left;">Describes Reserved Instance offerings that
are available for purchase</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_describe_route_tables/"> describe_route_tables </a></td>
<td style="text-align: left;">Describes one or more of your route
tables</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ec2_describe_scheduled_instance_availability/"> describe_scheduled_instance_availability </a></td>
<td style="text-align: left;">Finds available schedules that meet the
specified criteria</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_describe_scheduled_instances/"> describe_scheduled_instances </a></td>
<td style="text-align: left;">Describes the specified Scheduled
Instances or all your Scheduled Instances</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_describe_security_group_references/"> describe_security_group_references </a></td>
<td style="text-align: left;">[VPC only] Describes the VPCs on the other
side of a VPC peering connection that are referencing the security
groups you've specified in this request</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_describe_security_group_rules/"> describe_security_group_rules </a></td>
<td style="text-align: left;">Describes one or more of your security
group rules</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_describe_security_groups/"> describe_security_groups </a></td>
<td style="text-align: left;">Describes the specified security groups or
all of your security groups</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_describe_snapshot_attribute/"> describe_snapshot_attribute </a></td>
<td style="text-align: left;">Describes the specified attribute of the
specified snapshot</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_describe_snapshots/"> describe_snapshots </a></td>
<td style="text-align: left;">Describes the specified EBS snapshots
available to you or all of the EBS snapshots available to you</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_describe_snapshot_tier_status/"> describe_snapshot_tier_status </a></td>
<td style="text-align: left;">Describes the storage tier status of one
or more Amazon EBS snapshots</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_describe_spot_datafeed_subscription/"> describe_spot_datafeed_subscription </a></td>
<td style="text-align: left;">Describes the data feed for Spot
Instances</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_describe_spot_fleet_instances/"> describe_spot_fleet_instances </a></td>
<td style="text-align: left;">Describes the running instances for the
specified Spot Fleet</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_describe_spot_fleet_request_history/"> describe_spot_fleet_request_history </a></td>
<td style="text-align: left;">Describes the events for the specified
Spot Fleet request during the specified time</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_describe_spot_fleet_requests/"> describe_spot_fleet_requests </a></td>
<td style="text-align: left;">Describes your Spot Fleet requests</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_describe_spot_instance_requests/"> describe_spot_instance_requests </a></td>
<td style="text-align: left;">Describes the specified Spot Instance
requests</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_describe_spot_price_history/"> describe_spot_price_history </a></td>
<td style="text-align: left;">Describes the Spot price history</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_describe_stale_security_groups/"> describe_stale_security_groups </a></td>
<td style="text-align: left;">[VPC only] Describes the stale security
group rules for security groups in a specified VPC</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_describe_store_image_tasks/"> describe_store_image_tasks </a></td>
<td style="text-align: left;">Describes the progress of the AMI store
tasks</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_describe_subnets/"> describe_subnets </a></td>
<td style="text-align: left;">Describes one or more of your subnets</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_describe_tags/"> describe_tags </a></td>
<td style="text-align: left;">Describes the specified tags for your EC2
resources</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_describe_traffic_mirror_filters/"> describe_traffic_mirror_filters </a></td>
<td style="text-align: left;">Describes one or more Traffic Mirror
filters</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_describe_traffic_mirror_sessions/"> describe_traffic_mirror_sessions </a></td>
<td style="text-align: left;">Describes one or more Traffic Mirror
sessions</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_describe_traffic_mirror_targets/"> describe_traffic_mirror_targets </a></td>
<td style="text-align: left;">Information about one or more Traffic
Mirror targets</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_describe_transit_gateway_attachments/"> describe_transit_gateway_attachments </a></td>
<td style="text-align: left;">Describes one or more attachments between
resources and transit gateways</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ec2_describe_transit_gateway_connect_peers/"> describe_transit_gateway_connect_peers </a></td>
<td style="text-align: left;">Describes one or more Connect peers</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_describe_transit_gateway_connects/"> describe_transit_gateway_connects </a></td>
<td style="text-align: left;">Describes one or more Connect
attachments</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ec2_describe_transit_gateway_multicast_domains/"> describe_transit_gateway_multicast_domains </a></td>
<td style="text-align: left;">Describes one or more transit gateway
multicast domains</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ec2_describe_transit_gateway_peering_attachments/"> describe_transit_gateway_peering_attachments </a></td>
<td style="text-align: left;">Describes your transit gateway peering
attachments</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ec2_describe_transit_gateway_policy_tables/"> describe_transit_gateway_policy_tables </a></td>
<td style="text-align: left;">Describes one or more transit gateway
route policy tables</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ec2_describe_transit_gateway_route_table_announcements/"> describe_transit_gateway_route_table_announcements </a></td>
<td style="text-align: left;">Describes one or more transit gateway
route table advertisements</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_describe_transit_gateway_route_tables/"> describe_transit_gateway_route_tables </a></td>
<td style="text-align: left;">Describes one or more transit gateway
route tables</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_describe_transit_gateways/"> describe_transit_gateways </a></td>
<td style="text-align: left;">Describes one or more transit
gateways</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ec2_describe_transit_gateway_vpc_attachments/"> describe_transit_gateway_vpc_attachments </a></td>
<td style="text-align: left;">Describes one or more VPC attachments</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_describe_trunk_interface_associations/"> describe_trunk_interface_associations </a></td>
<td style="text-align: left;">This API action is currently in limited
preview only</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_describe_verified_access_endpoints/"> describe_verified_access_endpoints </a></td>
<td style="text-align: left;">Describes the specified Amazon Web
Services Verified Access endpoints</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_describe_verified_access_groups/"> describe_verified_access_groups </a></td>
<td style="text-align: left;">Describes the specified Verified Access
groups</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ec2_describe_verified_access_instance_logging_configurations/"> describe_verified_access_instance_logging_configurations </a></td>
<td style="text-align: left;">Describes the specified Amazon Web
Services Verified Access instances</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_describe_verified_access_instances/"> describe_verified_access_instances </a></td>
<td style="text-align: left;">Describes the specified Amazon Web
Services Verified Access instances</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ec2_describe_verified_access_trust_providers/"> describe_verified_access_trust_providers </a></td>
<td style="text-align: left;">Describes the specified Amazon Web
Services Verified Access trust providers</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_describe_volume_attribute/"> describe_volume_attribute </a></td>
<td style="text-align: left;">Describes the specified attribute of the
specified volume</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_describe_volumes/"> describe_volumes </a></td>
<td style="text-align: left;">Describes the specified EBS volumes or all
of your EBS volumes</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_describe_volumes_modifications/"> describe_volumes_modifications </a></td>
<td style="text-align: left;">Describes the most recent volume
modification request for the specified EBS volumes</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_describe_volume_status/"> describe_volume_status </a></td>
<td style="text-align: left;">Describes the status of the specified
volumes</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_describe_vpc_attribute/"> describe_vpc_attribute </a></td>
<td style="text-align: left;">Describes the specified attribute of the
specified VPC</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_describe_vpc_classic_link/"> describe_vpc_classic_link </a></td>
<td style="text-align: left;">Describes the ClassicLink status of one or
more VPCs</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_describe_vpc_classic_link_dns_support/"> describe_vpc_classic_link_dns_support </a></td>
<td style="text-align: left;">We are retiring EC2-Classic</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ec2_describe_vpc_endpoint_connection_notifications/"> describe_vpc_endpoint_connection_notifications </a></td>
<td style="text-align: left;">Describes the connection notifications for
VPC endpoints and VPC endpoint services</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_describe_vpc_endpoint_connections/"> describe_vpc_endpoint_connections </a></td>
<td style="text-align: left;">Describes the VPC endpoint connections to
your VPC endpoint services, including any endpoints that are pending
your acceptance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_describe_vpc_endpoints/"> describe_vpc_endpoints </a></td>
<td style="text-align: left;">Describes your VPC endpoints</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ec2_describe_vpc_endpoint_service_configurations/"> describe_vpc_endpoint_service_configurations </a></td>
<td style="text-align: left;">Describes the VPC endpoint service
configurations in your account (your services)</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ec2_describe_vpc_endpoint_service_permissions/"> describe_vpc_endpoint_service_permissions </a></td>
<td style="text-align: left;">Describes the principals (service
consumers) that are permitted to discover your VPC endpoint service</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_describe_vpc_endpoint_services/"> describe_vpc_endpoint_services </a></td>
<td style="text-align: left;">Describes available services to which you
can create a VPC endpoint</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_describe_vpc_peering_connections/"> describe_vpc_peering_connections </a></td>
<td style="text-align: left;">Describes one or more of your VPC peering
connections</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_describe_vpcs/"> describe_vpcs </a></td>
<td style="text-align: left;">Describes one or more of your VPCs</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_describe_vpn_connections/"> describe_vpn_connections </a></td>
<td style="text-align: left;">Describes one or more of your VPN
connections</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_describe_vpn_gateways/"> describe_vpn_gateways </a></td>
<td style="text-align: left;">Describes one or more of your virtual
private gateways</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_detach_classic_link_vpc/"> detach_classic_link_vpc </a></td>
<td style="text-align: left;">We are retiring EC2-Classic</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_detach_internet_gateway/"> detach_internet_gateway </a></td>
<td style="text-align: left;">Detaches an internet gateway from a VPC,
disabling connectivity between the internet and the VPC</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_detach_network_interface/"> detach_network_interface </a></td>
<td style="text-align: left;">Detaches a network interface from an
instance</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_detach_verified_access_trust_provider/"> detach_verified_access_trust_provider </a></td>
<td style="text-align: left;">Detaches the specified Amazon Web Services
Verified Access trust provider from the specified Amazon Web Services
Verified Access instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_detach_volume/"> detach_volume </a></td>
<td style="text-align: left;">Detaches an EBS volume from an
instance</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_detach_vpn_gateway/"> detach_vpn_gateway </a></td>
<td style="text-align: left;">Detaches a virtual private gateway from a
VPC</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_disable_address_transfer/"> disable_address_transfer </a></td>
<td style="text-align: left;">Disables Elastic IP address transfer</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ec2_disable_aws_network_performance_metric_subscription/"> disable_aws_network_performance_metric_subscription </a></td>
<td style="text-align: left;">Disables Infrastructure Performance metric
subscriptions</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_disable_ebs_encryption_by_default/"> disable_ebs_encryption_by_default </a></td>
<td style="text-align: left;">Disables EBS encryption by default for
your account in the current Region</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_disable_fast_launch/"> disable_fast_launch </a></td>
<td style="text-align: left;">Discontinue faster launching for a Windows
AMI, and clean up existing pre-provisioned snapshots</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_disable_fast_snapshot_restores/"> disable_fast_snapshot_restores </a></td>
<td style="text-align: left;">Disables fast snapshot restores for the
specified snapshots in the specified Availability Zones</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_disable_image_deprecation/"> disable_image_deprecation </a></td>
<td style="text-align: left;">Cancels the deprecation of the specified
AMI</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ec2_disable_ipam_organization_admin_account/"> disable_ipam_organization_admin_account </a></td>
<td style="text-align: left;">Disable the IPAM account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_disable_serial_console_access/"> disable_serial_console_access </a></td>
<td style="text-align: left;">Disables access to the EC2 serial console
of all instances for your account</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ec2_disable_transit_gateway_route_table_propagation/"> disable_transit_gateway_route_table_propagation </a></td>
<td style="text-align: left;">Disables the specified resource attachment
from propagating routes to the specified propagation route table</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_disable_vgw_route_propagation/"> disable_vgw_route_propagation </a></td>
<td style="text-align: left;">Disables a virtual private gateway (VGW)
from propagating routes to a specified route table of a VPC</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_disable_vpc_classic_link/"> disable_vpc_classic_link </a></td>
<td style="text-align: left;">Disables ClassicLink for a VPC</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_disable_vpc_classic_link_dns_support/"> disable_vpc_classic_link_dns_support </a></td>
<td style="text-align: left;">Disables ClassicLink DNS support for a
VPC</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_disassociate_address/"> disassociate_address </a></td>
<td style="text-align: left;">Disassociates an Elastic IP address from
the instance or network interface it's associated with</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ec2_disassociate_client_vpn_target_network/"> disassociate_client_vpn_target_network </a></td>
<td style="text-align: left;">Disassociates a target network from the
specified Client VPN endpoint</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ec2_disassociate_enclave_certificate_iam_role/"> disassociate_enclave_certificate_iam_role </a></td>
<td style="text-align: left;">Disassociates an IAM role from an
Certificate Manager (ACM) certificate</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_disassociate_iam_instance_profile/"> disassociate_iam_instance_profile </a></td>
<td style="text-align: left;">Disassociates an IAM instance profile from
a running or stopped instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_disassociate_instance_event_window/"> disassociate_instance_event_window </a></td>
<td style="text-align: left;">Disassociates one or more targets from an
event window</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_disassociate_ipam_resource_discovery/"> disassociate_ipam_resource_discovery </a></td>
<td style="text-align: left;">Disassociates a resource discovery from an
Amazon VPC IPAM</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_disassociate_nat_gateway_address/"> disassociate_nat_gateway_address </a></td>
<td style="text-align: left;">Disassociates secondary Elastic IP
addresses (EIPs) from a public NAT gateway</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_disassociate_route_table/"> disassociate_route_table </a></td>
<td style="text-align: left;">Disassociates a subnet or gateway from a
route table</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_disassociate_subnet_cidr_block/"> disassociate_subnet_cidr_block </a></td>
<td style="text-align: left;">Disassociates a CIDR block from a
subnet</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ec2_disassociate_transit_gateway_multicast_domain/"> disassociate_transit_gateway_multicast_domain </a></td>
<td style="text-align: left;">Disassociates the specified subnets from
the transit gateway multicast domain</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ec2_disassociate_transit_gateway_policy_table/"> disassociate_transit_gateway_policy_table </a></td>
<td style="text-align: left;">Removes the association between an an
attachment and a policy table</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ec2_disassociate_transit_gateway_route_table/"> disassociate_transit_gateway_route_table </a></td>
<td style="text-align: left;">Disassociates a resource attachment from a
transit gateway route table</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_disassociate_trunk_interface/"> disassociate_trunk_interface </a></td>
<td style="text-align: left;">This API action is currently in limited
preview only</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_disassociate_vpc_cidr_block/"> disassociate_vpc_cidr_block </a></td>
<td style="text-align: left;">Disassociates a CIDR block from a VPC</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_enable_address_transfer/"> enable_address_transfer </a></td>
<td style="text-align: left;">Enables Elastic IP address transfer</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ec2_enable_aws_network_performance_metric_subscription/"> enable_aws_network_performance_metric_subscription </a></td>
<td style="text-align: left;">Enables Infrastructure Performance
subscriptions</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_enable_ebs_encryption_by_default/"> enable_ebs_encryption_by_default </a></td>
<td style="text-align: left;">Enables EBS encryption by default for your
account in the current Region</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_enable_fast_launch/"> enable_fast_launch </a></td>
<td style="text-align: left;">When you enable faster launching for a
Windows AMI, images are pre-provisioned, using snapshots to launch
instances up to 65% faster</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_enable_fast_snapshot_restores/"> enable_fast_snapshot_restores </a></td>
<td style="text-align: left;">Enables fast snapshot restores for the
specified snapshots in the specified Availability Zones</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_enable_image_deprecation/"> enable_image_deprecation </a></td>
<td style="text-align: left;">Enables deprecation of the specified AMI
at the specified date and time</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ec2_enable_ipam_organization_admin_account/"> enable_ipam_organization_admin_account </a></td>
<td style="text-align: left;">Enable an Organizations member account as
the IPAM admin account</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ec2_enable_reachability_analyzer_organization_sharing/"> enable_reachability_analyzer_organization_sharing </a></td>
<td style="text-align: left;">Establishes a trust relationship between
Reachability Analyzer and Organizations</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_enable_serial_console_access/"> enable_serial_console_access </a></td>
<td style="text-align: left;">Enables access to the EC2 serial console
of all instances for your account</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ec2_enable_transit_gateway_route_table_propagation/"> enable_transit_gateway_route_table_propagation </a></td>
<td style="text-align: left;">Enables the specified attachment to
propagate routes to the specified propagation route table</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_enable_vgw_route_propagation/"> enable_vgw_route_propagation </a></td>
<td style="text-align: left;">Enables a virtual private gateway (VGW) to
propagate routes to the specified route table of a VPC</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_enable_volume_io/"> enable_volume_io </a></td>
<td style="text-align: left;">Enables I/O operations for a volume that
had I/O operations disabled because the data on the volume was
potentially inconsistent</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_enable_vpc_classic_link/"> enable_vpc_classic_link </a></td>
<td style="text-align: left;">We are retiring EC2-Classic</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_enable_vpc_classic_link_dns_support/"> enable_vpc_classic_link_dns_support </a></td>
<td style="text-align: left;">We are retiring EC2-Classic</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ec2_export_client_vpn_client_certificate_revocation_list/"> export_client_vpn_client_certificate_revocation_list </a></td>
<td style="text-align: left;">Downloads the client certificate
revocation list for the specified Client VPN endpoint</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ec2_export_client_vpn_client_configuration/"> export_client_vpn_client_configuration </a></td>
<td style="text-align: left;">Downloads the contents of the Client VPN
endpoint configuration file for the specified Client VPN endpoint</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_export_image/"> export_image </a></td>
<td style="text-align: left;">Exports an Amazon Machine Image (AMI) to a
VM file</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_export_transit_gateway_routes/"> export_transit_gateway_routes </a></td>
<td style="text-align: left;">Exports routes from the specified transit
gateway route table to the specified S3 bucket</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ec2_get_associated_enclave_certificate_iam_roles/"> get_associated_enclave_certificate_iam_roles </a></td>
<td style="text-align: left;">Returns the IAM roles that are associated
with the specified ACM (ACM) certificate</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_get_associated_ipv_6_pool_cidrs/"> get_associated_ipv_6_pool_cidrs </a></td>
<td style="text-align: left;">Gets information about the IPv6 CIDR block
associations for a specified IPv6 address pool</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_get_aws_network_performance_data/"> get_aws_network_performance_data </a></td>
<td style="text-align: left;">Gets network performance data</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_get_capacity_reservation_usage/"> get_capacity_reservation_usage </a></td>
<td style="text-align: left;">Gets usage information about a Capacity
Reservation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_get_coip_pool_usage/"> get_coip_pool_usage </a></td>
<td style="text-align: left;">Describes the allocations from the
specified customer-owned address pool</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_get_console_output/"> get_console_output </a></td>
<td style="text-align: left;">Gets the console output for the specified
instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_get_console_screenshot/"> get_console_screenshot </a></td>
<td style="text-align: left;">Retrieve a JPG-format screenshot of a
running instance to help with troubleshooting</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_get_default_credit_specification/"> get_default_credit_specification </a></td>
<td style="text-align: left;">Describes the default credit option for
CPU usage of a burstable performance instance family</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_get_ebs_default_kms_key_id/"> get_ebs_default_kms_key_id </a></td>
<td style="text-align: left;">Describes the default KMS key for EBS
encryption by default for your account in this Region</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_get_ebs_encryption_by_default/"> get_ebs_encryption_by_default </a></td>
<td style="text-align: left;">Describes whether EBS encryption by
default is enabled for your account in the current Region</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_get_flow_logs_integration_template/"> get_flow_logs_integration_template </a></td>
<td style="text-align: left;">Generates a CloudFormation template that
streamlines and automates the integration of VPC flow logs with Amazon
Athena</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_get_groups_for_capacity_reservation/"> get_groups_for_capacity_reservation </a></td>
<td style="text-align: left;">Lists the resource groups to which a
Capacity Reservation has been added</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_get_host_reservation_purchase_preview/"> get_host_reservation_purchase_preview </a></td>
<td style="text-align: left;">Preview a reservation purchase with
configurations that match those of your Dedicated Host</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ec2_get_instance_types_from_instance_requirements/"> get_instance_types_from_instance_requirements </a></td>
<td style="text-align: left;">Returns a list of instance types with the
specified instance attributes</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_get_instance_uefi_data/"> get_instance_uefi_data </a></td>
<td style="text-align: left;">A binary representation of the UEFI
variable store</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_get_ipam_address_history/"> get_ipam_address_history </a></td>
<td style="text-align: left;">Retrieve historical information about a
CIDR within an IPAM scope</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_get_ipam_discovered_accounts/"> get_ipam_discovered_accounts </a></td>
<td style="text-align: left;">Gets IPAM discovered accounts</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_get_ipam_discovered_resource_cidrs/"> get_ipam_discovered_resource_cidrs </a></td>
<td style="text-align: left;">Returns the resource CIDRs that are
monitored as part of a resource discovery</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_get_ipam_pool_allocations/"> get_ipam_pool_allocations </a></td>
<td style="text-align: left;">Get a list of all the CIDR allocations in
an IPAM pool</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_get_ipam_pool_cidrs/"> get_ipam_pool_cidrs </a></td>
<td style="text-align: left;">Get the CIDRs provisioned to an IPAM
pool</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_get_ipam_resource_cidrs/"> get_ipam_resource_cidrs </a></td>
<td style="text-align: left;">Returns resource CIDRs managed by IPAM in
a given scope</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_get_launch_template_data/"> get_launch_template_data </a></td>
<td style="text-align: left;">Retrieves the configuration data of the
specified instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_get_managed_prefix_list_associations/"> get_managed_prefix_list_associations </a></td>
<td style="text-align: left;">Gets information about the resources that
are associated with the specified managed prefix list</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_get_managed_prefix_list_entries/"> get_managed_prefix_list_entries </a></td>
<td style="text-align: left;">Gets information about the entries for a
specified managed prefix list</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ec2_get_network_insights_access_scope_analysis_findings/"> get_network_insights_access_scope_analysis_findings </a></td>
<td style="text-align: left;">Gets the findings for the specified
Network Access Scope analysis</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ec2_get_network_insights_access_scope_content/"> get_network_insights_access_scope_content </a></td>
<td style="text-align: left;">Gets the content for the specified Network
Access Scope</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_get_password_data/"> get_password_data </a></td>
<td style="text-align: left;">Retrieves the encrypted administrator
password for a running Windows instance</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_get_reserved_instances_exchange_quote/"> get_reserved_instances_exchange_quote </a></td>
<td style="text-align: left;">Returns a quote and exchange information
for exchanging one or more specified Convertible Reserved Instances for
a new Convertible Reserved Instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_get_serial_console_access_status/"> get_serial_console_access_status </a></td>
<td style="text-align: left;">Retrieves the access status of your
account to the EC2 serial console of all instances</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_get_spot_placement_scores/"> get_spot_placement_scores </a></td>
<td style="text-align: left;">Calculates the Spot placement score for a
Region or Availability Zone based on the specified target capacity and
compute requirements</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_get_subnet_cidr_reservations/"> get_subnet_cidr_reservations </a></td>
<td style="text-align: left;">Gets information about the subnet CIDR
reservations</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ec2_get_transit_gateway_attachment_propagations/"> get_transit_gateway_attachment_propagations </a></td>
<td style="text-align: left;">Lists the route tables to which the
specified resource attachment propagates routes</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ec2_get_transit_gateway_multicast_domain_associations/"> get_transit_gateway_multicast_domain_associations </a></td>
<td style="text-align: left;">Gets information about the associations
for the transit gateway multicast domain</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ec2_get_transit_gateway_policy_table_associations/"> get_transit_gateway_policy_table_associations </a></td>
<td style="text-align: left;">Gets a list of the transit gateway policy
table associations</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ec2_get_transit_gateway_policy_table_entries/"> get_transit_gateway_policy_table_entries </a></td>
<td style="text-align: left;">Returns a list of transit gateway policy
table entries</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ec2_get_transit_gateway_prefix_list_references/"> get_transit_gateway_prefix_list_references </a></td>
<td style="text-align: left;">Gets information about the prefix list
references in a specified transit gateway route table</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ec2_get_transit_gateway_route_table_associations/"> get_transit_gateway_route_table_associations </a></td>
<td style="text-align: left;">Gets information about the associations
for the specified transit gateway route table</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ec2_get_transit_gateway_route_table_propagations/"> get_transit_gateway_route_table_propagations </a></td>
<td style="text-align: left;">Gets information about the route table
propagations for the specified transit gateway route table</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_get_verified_access_endpoint_policy/"> get_verified_access_endpoint_policy </a></td>
<td style="text-align: left;">Get the Verified Access policy associated
with the endpoint</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_get_verified_access_group_policy/"> get_verified_access_group_policy </a></td>
<td style="text-align: left;">Shows the contents of the Verified Access
policy associated with the group</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ec2_get_vpn_connection_device_sample_configuration/"> get_vpn_connection_device_sample_configuration </a></td>
<td style="text-align: left;">Download an Amazon Web Services-provided
sample configuration file to be used with the customer gateway device
specified for your Site-to-Site VPN connection</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_get_vpn_connection_device_types/"> get_vpn_connection_device_types </a></td>
<td style="text-align: left;">Obtain a list of customer gateway devices
for which sample configuration files can be provided</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_get_vpn_tunnel_replacement_status/"> get_vpn_tunnel_replacement_status </a></td>
<td style="text-align: left;">Get details of available tunnel endpoint
maintenance</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ec2_import_client_vpn_client_certificate_revocation_list/"> import_client_vpn_client_certificate_revocation_list </a></td>
<td style="text-align: left;">Uploads a client certificate revocation
list to the specified Client VPN endpoint</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_import_image/"> import_image </a></td>
<td style="text-align: left;">To import your virtual machines (VMs) with
a console-based experience, you can use the Import virtual machine
images to Amazon Web Services template in the Migration Hub Orchestrator
console</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_import_instance/"> import_instance </a></td>
<td style="text-align: left;">Creates an import instance task using
metadata from the specified disk image</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_import_key_pair/"> import_key_pair </a></td>
<td style="text-align: left;">Imports the public key from an RSA or
ED25519 key pair that you created with a third-party tool</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_import_snapshot/"> import_snapshot </a></td>
<td style="text-align: left;">Imports a disk into an EBS snapshot</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_import_volume/"> import_volume </a></td>
<td style="text-align: left;">Creates an import volume task using
metadata from the specified disk image</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_list_images_in_recycle_bin/"> list_images_in_recycle_bin </a></td>
<td style="text-align: left;">Lists one or more AMIs that are currently
in the Recycle Bin</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_list_snapshots_in_recycle_bin/"> list_snapshots_in_recycle_bin </a></td>
<td style="text-align: left;">Lists one or more snapshots that are
currently in the Recycle Bin</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_modify_address_attribute/"> modify_address_attribute </a></td>
<td style="text-align: left;">Modifies an attribute of the specified
Elastic IP address</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_modify_availability_zone_group/"> modify_availability_zone_group </a></td>
<td style="text-align: left;">Changes the opt-in status of the Local
Zone and Wavelength Zone group for your account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_modify_capacity_reservation/"> modify_capacity_reservation </a></td>
<td style="text-align: left;">Modifies a Capacity Reservation's capacity
and the conditions under which it is to be released</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_modify_capacity_reservation_fleet/"> modify_capacity_reservation_fleet </a></td>
<td style="text-align: left;">Modifies a Capacity Reservation Fleet</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_modify_client_vpn_endpoint/"> modify_client_vpn_endpoint </a></td>
<td style="text-align: left;">Modifies the specified Client VPN
endpoint</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_modify_default_credit_specification/"> modify_default_credit_specification </a></td>
<td style="text-align: left;">Modifies the default credit option for CPU
usage of burstable performance instances</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_modify_ebs_default_kms_key_id/"> modify_ebs_default_kms_key_id </a></td>
<td style="text-align: left;">Changes the default KMS key for EBS
encryption by default for your account in this Region</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_modify_fleet/"> modify_fleet </a></td>
<td style="text-align: left;">Modifies the specified EC2 Fleet</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_modify_fpga_image_attribute/"> modify_fpga_image_attribute </a></td>
<td style="text-align: left;">Modifies the specified attribute of the
specified Amazon FPGA Image (AFI)</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_modify_hosts/"> modify_hosts </a></td>
<td style="text-align: left;">Modify the auto-placement setting of a
Dedicated Host</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_modify_identity_id_format/"> modify_identity_id_format </a></td>
<td style="text-align: left;">Modifies the ID format of a resource for a
specified IAM user, IAM role, or the root user for an account; or all
IAM users, IAM roles, and the root user for an account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_modify_id_format/"> modify_id_format </a></td>
<td style="text-align: left;">Modifies the ID format for the specified
resource on a per-Region basis</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_modify_image_attribute/"> modify_image_attribute </a></td>
<td style="text-align: left;">Modifies the specified attribute of the
specified AMI</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_modify_instance_attribute/"> modify_instance_attribute </a></td>
<td style="text-align: left;">Modifies the specified attribute of the
specified instance</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ec2_modify_instance_capacity_reservation_attributes/"> modify_instance_capacity_reservation_attributes </a></td>
<td style="text-align: left;">Modifies the Capacity Reservation settings
for a stopped instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_modify_instance_credit_specification/"> modify_instance_credit_specification </a></td>
<td style="text-align: left;">Modifies the credit option for CPU usage
on a running or stopped burstable performance instance</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_modify_instance_event_start_time/"> modify_instance_event_start_time </a></td>
<td style="text-align: left;">Modifies the start time for a scheduled
Amazon EC2 instance event</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_modify_instance_event_window/"> modify_instance_event_window </a></td>
<td style="text-align: left;">Modifies the specified event window</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_modify_instance_maintenance_options/"> modify_instance_maintenance_options </a></td>
<td style="text-align: left;">Modifies the recovery behavior of your
instance to disable simplified automatic recovery or set the recovery
behavior to default</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_modify_instance_metadata_options/"> modify_instance_metadata_options </a></td>
<td style="text-align: left;">Modify the instance metadata parameters on
a running or stopped instance</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_modify_instance_placement/"> modify_instance_placement </a></td>
<td style="text-align: left;">Modifies the placement attributes for a
specified instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_modify_ipam/"> modify_ipam </a></td>
<td style="text-align: left;">Modify the configurations of an IPAM</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_modify_ipam_pool/"> modify_ipam_pool </a></td>
<td style="text-align: left;">Modify the configurations of an IPAM
pool</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_modify_ipam_resource_cidr/"> modify_ipam_resource_cidr </a></td>
<td style="text-align: left;">Modify a resource CIDR</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_modify_ipam_resource_discovery/"> modify_ipam_resource_discovery </a></td>
<td style="text-align: left;">Modifies a resource discovery</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_modify_ipam_scope/"> modify_ipam_scope </a></td>
<td style="text-align: left;">Modify an IPAM scope</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_modify_launch_template/"> modify_launch_template </a></td>
<td style="text-align: left;">Modifies a launch template</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_modify_local_gateway_route/"> modify_local_gateway_route </a></td>
<td style="text-align: left;">Modifies the specified local gateway
route</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_modify_managed_prefix_list/"> modify_managed_prefix_list </a></td>
<td style="text-align: left;">Modifies the specified managed prefix
list</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_modify_network_interface_attribute/"> modify_network_interface_attribute </a></td>
<td style="text-align: left;">Modifies the specified network interface
attribute</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_modify_private_dns_name_options/"> modify_private_dns_name_options </a></td>
<td style="text-align: left;">Modifies the options for instance
hostnames for the specified instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_modify_reserved_instances/"> modify_reserved_instances </a></td>
<td style="text-align: left;">Modifies the configuration of your
Reserved Instances, such as the Availability Zone, instance count, or
instance type</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_modify_security_group_rules/"> modify_security_group_rules </a></td>
<td style="text-align: left;">Modifies the rules of a security
group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_modify_snapshot_attribute/"> modify_snapshot_attribute </a></td>
<td style="text-align: left;">Adds or removes permission settings for
the specified snapshot</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_modify_snapshot_tier/"> modify_snapshot_tier </a></td>
<td style="text-align: left;">Archives an Amazon EBS snapshot</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_modify_spot_fleet_request/"> modify_spot_fleet_request </a></td>
<td style="text-align: left;">Modifies the specified Spot Fleet
request</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_modify_subnet_attribute/"> modify_subnet_attribute </a></td>
<td style="text-align: left;">Modifies a subnet attribute</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ec2_modify_traffic_mirror_filter_network_services/"> modify_traffic_mirror_filter_network_services </a></td>
<td style="text-align: left;">Allows or restricts mirroring network
services</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_modify_traffic_mirror_filter_rule/"> modify_traffic_mirror_filter_rule </a></td>
<td style="text-align: left;">Modifies the specified Traffic Mirror
rule</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_modify_traffic_mirror_session/"> modify_traffic_mirror_session </a></td>
<td style="text-align: left;">Modifies a Traffic Mirror session</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_modify_transit_gateway/"> modify_transit_gateway </a></td>
<td style="text-align: left;">Modifies the specified transit
gateway</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ec2_modify_transit_gateway_prefix_list_reference/"> modify_transit_gateway_prefix_list_reference </a></td>
<td style="text-align: left;">Modifies a reference (route) to a prefix
list in a specified transit gateway route table</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_modify_transit_gateway_vpc_attachment/"> modify_transit_gateway_vpc_attachment </a></td>
<td style="text-align: left;">Modifies the specified VPC attachment</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_modify_verified_access_endpoint/"> modify_verified_access_endpoint </a></td>
<td style="text-align: left;">Modifies the configuration of the
specified Amazon Web Services Verified Access endpoint</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ec2_modify_verified_access_endpoint_policy/"> modify_verified_access_endpoint_policy </a></td>
<td style="text-align: left;">Modifies the specified Amazon Web Services
Verified Access endpoint policy</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_modify_verified_access_group/"> modify_verified_access_group </a></td>
<td style="text-align: left;">Modifies the specified Amazon Web Services
Verified Access group configuration</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_modify_verified_access_group_policy/"> modify_verified_access_group_policy </a></td>
<td style="text-align: left;">Modifies the specified Amazon Web Services
Verified Access group policy</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_modify_verified_access_instance/"> modify_verified_access_instance </a></td>
<td style="text-align: left;">Modifies the configuration of the
specified Amazon Web Services Verified Access instance</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ec2_modify_verified_access_instance_logging_configuration/"> modify_verified_access_instance_logging_configuration </a></td>
<td style="text-align: left;">Modifies the logging configuration for the
specified Amazon Web Services Verified Access instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_modify_verified_access_trust_provider/"> modify_verified_access_trust_provider </a></td>
<td style="text-align: left;">Modifies the configuration of the
specified Amazon Web Services Verified Access trust provider</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_modify_volume/"> modify_volume </a></td>
<td style="text-align: left;">You can modify several parameters of an
existing EBS volume, including volume size, volume type, and IOPS
capacity</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_modify_volume_attribute/"> modify_volume_attribute </a></td>
<td style="text-align: left;">Modifies a volume attribute</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_modify_vpc_attribute/"> modify_vpc_attribute </a></td>
<td style="text-align: left;">Modifies the specified attribute of the
specified VPC</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_modify_vpc_endpoint/"> modify_vpc_endpoint </a></td>
<td style="text-align: left;">Modifies attributes of a specified VPC
endpoint</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ec2_modify_vpc_endpoint_connection_notification/"> modify_vpc_endpoint_connection_notification </a></td>
<td style="text-align: left;">Modifies a connection notification for VPC
endpoint or VPC endpoint service</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ec2_modify_vpc_endpoint_service_configuration/"> modify_vpc_endpoint_service_configuration </a></td>
<td style="text-align: left;">Modifies the attributes of your VPC
endpoint service configuration</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ec2_modify_vpc_endpoint_service_payer_responsibility/"> modify_vpc_endpoint_service_payer_responsibility </a></td>
<td style="text-align: left;">Modifies the payer responsibility for your
VPC endpoint service</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ec2_modify_vpc_endpoint_service_permissions/"> modify_vpc_endpoint_service_permissions </a></td>
<td style="text-align: left;">Modifies the permissions for your VPC
endpoint service</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_modify_vpc_peering_connection_options/"> modify_vpc_peering_connection_options </a></td>
<td style="text-align: left;">We are retiring EC2-Classic</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_modify_vpc_tenancy/"> modify_vpc_tenancy </a></td>
<td style="text-align: left;">Modifies the instance tenancy attribute of
the specified VPC</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_modify_vpn_connection/"> modify_vpn_connection </a></td>
<td style="text-align: left;">Modifies the customer gateway or the
target gateway of an Amazon Web Services Site-to-Site VPN
connection</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_modify_vpn_connection_options/"> modify_vpn_connection_options </a></td>
<td style="text-align: left;">Modifies the connection options for your
Site-to-Site VPN connection</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_modify_vpn_tunnel_certificate/"> modify_vpn_tunnel_certificate </a></td>
<td style="text-align: left;">Modifies the VPN tunnel endpoint
certificate</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_modify_vpn_tunnel_options/"> modify_vpn_tunnel_options </a></td>
<td style="text-align: left;">Modifies the options for a VPN tunnel in
an Amazon Web Services Site-to-Site VPN connection</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_monitor_instances/"> monitor_instances </a></td>
<td style="text-align: left;">Enables detailed monitoring for a running
instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_move_address_to_vpc/"> move_address_to_vpc </a></td>
<td style="text-align: left;">Moves an Elastic IP address from the
EC2-Classic platform to the EC2-VPC platform</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_move_byoip_cidr_to_ipam/"> move_byoip_cidr_to_ipam </a></td>
<td style="text-align: left;">Move a BYOIPv4 CIDR to IPAM from a public
IPv4 pool</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_provision_byoip_cidr/"> provision_byoip_cidr </a></td>
<td style="text-align: left;">Provisions an IPv4 or IPv6 address range
for use with your Amazon Web Services resources through bring your own
IP addresses (BYOIP) and creates a corresponding address pool</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_provision_ipam_pool_cidr/"> provision_ipam_pool_cidr </a></td>
<td style="text-align: left;">Provision a CIDR to an IPAM pool</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_provision_public_ipv_4_pool_cidr/"> provision_public_ipv_4_pool_cidr </a></td>
<td style="text-align: left;">Provision a CIDR to a public IPv4
pool</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_purchase_host_reservation/"> purchase_host_reservation </a></td>
<td style="text-align: left;">Purchase a reservation with configurations
that match those of your Dedicated Host</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_purchase_reserved_instances_offering/"> purchase_reserved_instances_offering </a></td>
<td style="text-align: left;">Purchases a Reserved Instance for use with
your account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_purchase_scheduled_instances/"> purchase_scheduled_instances </a></td>
<td style="text-align: left;">You can no longer purchase Scheduled
Instances</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_reboot_instances/"> reboot_instances </a></td>
<td style="text-align: left;">Requests a reboot of the specified
instances</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_register_image/"> register_image </a></td>
<td style="text-align: left;">Registers an AMI</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ec2_register_instance_event_notification_attributes/"> register_instance_event_notification_attributes </a></td>
<td style="text-align: left;">Registers a set of tag keys to include in
scheduled event notifications for your resources</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ec2_register_transit_gateway_multicast_group_members/"> register_transit_gateway_multicast_group_members </a></td>
<td style="text-align: left;">Registers members (network interfaces)
with the transit gateway multicast group</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ec2_register_transit_gateway_multicast_group_sources/"> register_transit_gateway_multicast_group_sources </a></td>
<td style="text-align: left;">Registers sources (network interfaces)
with the specified transit gateway multicast group</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ec2_reject_transit_gateway_multicast_domain_associations/"> reject_transit_gateway_multicast_domain_associations </a></td>
<td style="text-align: left;">Rejects a request to associate
cross-account subnets with a transit gateway multicast domain</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ec2_reject_transit_gateway_peering_attachment/"> reject_transit_gateway_peering_attachment </a></td>
<td style="text-align: left;">Rejects a transit gateway peering
attachment request</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_reject_transit_gateway_vpc_attachment/"> reject_transit_gateway_vpc_attachment </a></td>
<td style="text-align: left;">Rejects a request to attach a VPC to a
transit gateway</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_reject_vpc_endpoint_connections/"> reject_vpc_endpoint_connections </a></td>
<td style="text-align: left;">Rejects VPC endpoint connection requests
to your VPC endpoint service</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_reject_vpc_peering_connection/"> reject_vpc_peering_connection </a></td>
<td style="text-align: left;">Rejects a VPC peering connection
request</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_release_address/"> release_address </a></td>
<td style="text-align: left;">Releases the specified Elastic IP
address</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_release_hosts/"> release_hosts </a></td>
<td style="text-align: left;">When you no longer want to use an
On-Demand Dedicated Host it can be released</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_release_ipam_pool_allocation/"> release_ipam_pool_allocation </a></td>
<td style="text-align: left;">Release an allocation within an IPAM
pool</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ec2_replace_iam_instance_profile_association/"> replace_iam_instance_profile_association </a></td>
<td style="text-align: left;">Replaces an IAM instance profile for the
specified running instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_replace_network_acl_association/"> replace_network_acl_association </a></td>
<td style="text-align: left;">Changes which network ACL a subnet is
associated with</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_replace_network_acl_entry/"> replace_network_acl_entry </a></td>
<td style="text-align: left;">Replaces an entry (rule) in a network
ACL</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_replace_route/"> replace_route </a></td>
<td style="text-align: left;">Replaces an existing route within a route
table in a VPC</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_replace_route_table_association/"> replace_route_table_association </a></td>
<td style="text-align: left;">Changes the route table associated with a
given subnet, internet gateway, or virtual private gateway in a VPC</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_replace_transit_gateway_route/"> replace_transit_gateway_route </a></td>
<td style="text-align: left;">Replaces the specified route in the
specified transit gateway route table</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_replace_vpn_tunnel/"> replace_vpn_tunnel </a></td>
<td style="text-align: left;">Trigger replacement of specified VPN
tunnel</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_report_instance_status/"> report_instance_status </a></td>
<td style="text-align: left;">Submits feedback about the status of an
instance</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_request_spot_fleet/"> request_spot_fleet </a></td>
<td style="text-align: left;">Creates a Spot Fleet request</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_request_spot_instances/"> request_spot_instances </a></td>
<td style="text-align: left;">Creates a Spot Instance request</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_reset_address_attribute/"> reset_address_attribute </a></td>
<td style="text-align: left;">Resets the attribute of the specified IP
address</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_reset_ebs_default_kms_key_id/"> reset_ebs_default_kms_key_id </a></td>
<td style="text-align: left;">Resets the default KMS key for EBS
encryption for your account in this Region to the Amazon Web Services
managed KMS key for EBS</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_reset_fpga_image_attribute/"> reset_fpga_image_attribute </a></td>
<td style="text-align: left;">Resets the specified attribute of the
specified Amazon FPGA Image (AFI) to its default value</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_reset_image_attribute/"> reset_image_attribute </a></td>
<td style="text-align: left;">Resets an attribute of an AMI to its
default value</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_reset_instance_attribute/"> reset_instance_attribute </a></td>
<td style="text-align: left;">Resets an attribute of an instance to its
default value</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_reset_network_interface_attribute/"> reset_network_interface_attribute </a></td>
<td style="text-align: left;">Resets a network interface attribute</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_reset_snapshot_attribute/"> reset_snapshot_attribute </a></td>
<td style="text-align: left;">Resets permission settings for the
specified snapshot</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_restore_address_to_classic/"> restore_address_to_classic </a></td>
<td style="text-align: left;">Restores an Elastic IP address that was
previously moved to the EC2-VPC platform back to the EC2-Classic
platform</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_restore_image_from_recycle_bin/"> restore_image_from_recycle_bin </a></td>
<td style="text-align: left;">Restores an AMI from the Recycle Bin</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_restore_managed_prefix_list_version/"> restore_managed_prefix_list_version </a></td>
<td style="text-align: left;">Restores the entries from a previous
version of a managed prefix list to a new version of the prefix
list</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_restore_snapshot_from_recycle_bin/"> restore_snapshot_from_recycle_bin </a></td>
<td style="text-align: left;">Restores a snapshot from the Recycle
Bin</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_restore_snapshot_tier/"> restore_snapshot_tier </a></td>
<td style="text-align: left;">Restores an archived Amazon EBS snapshot
for use temporarily or permanently, or modifies the restore period or
restore type for a snapshot that was previously temporarily
restored</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_revoke_client_vpn_ingress/"> revoke_client_vpn_ingress </a></td>
<td style="text-align: left;">Removes an ingress authorization rule from
a Client VPN endpoint</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_revoke_security_group_egress/"> revoke_security_group_egress </a></td>
<td style="text-align: left;">[VPC only] Removes the specified outbound
(egress) rules from a security group for EC2-VPC</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_revoke_security_group_ingress/"> revoke_security_group_ingress </a></td>
<td style="text-align: left;">Removes the specified inbound (ingress)
rules from a security group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_run_instances/"> run_instances </a></td>
<td style="text-align: left;">Launches the specified number of instances
using an AMI for which you have permissions</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_run_scheduled_instances/"> run_scheduled_instances </a></td>
<td style="text-align: left;">Launches the specified Scheduled
Instances</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_search_local_gateway_routes/"> search_local_gateway_routes </a></td>
<td style="text-align: left;">Searches for routes in the specified local
gateway route table</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ec2_search_transit_gateway_multicast_groups/"> search_transit_gateway_multicast_groups </a></td>
<td style="text-align: left;">Searches one or more transit gateway
multicast groups and returns the group membership information</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_search_transit_gateway_routes/"> search_transit_gateway_routes </a></td>
<td style="text-align: left;">Searches for routes in the specified
transit gateway route table</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_send_diagnostic_interrupt/"> send_diagnostic_interrupt </a></td>
<td style="text-align: left;">Sends a diagnostic interrupt to the
specified Amazon EC2 instance to trigger a kernel panic (on Linux
instances), or a blue screen/stop error (on Windows instances)</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_start_instances/"> start_instances </a></td>
<td style="text-align: left;">Starts an Amazon EBS-backed instance that
you've previously stopped</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ec2_start_network_insights_access_scope_analysis/"> start_network_insights_access_scope_analysis </a></td>
<td style="text-align: left;">Starts analyzing the specified Network
Access Scope</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_start_network_insights_analysis/"> start_network_insights_analysis </a></td>
<td style="text-align: left;">Starts analyzing the specified path</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ec2_start_vpc_endpoint_service_private_dns_verification/"> start_vpc_endpoint_service_private_dns_verification </a></td>
<td style="text-align: left;">Initiates the verification process to
prove that the service provider owns the private DNS name domain for the
endpoint service</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_stop_instances/"> stop_instances </a></td>
<td style="text-align: left;">Stops an Amazon EBS-backed instance</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_terminate_client_vpn_connections/"> terminate_client_vpn_connections </a></td>
<td style="text-align: left;">Terminates active Client VPN endpoint
connections</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_terminate_instances/"> terminate_instances </a></td>
<td style="text-align: left;">Shuts down the specified instances</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_unassign_ipv_6_addresses/"> unassign_ipv_6_addresses </a></td>
<td style="text-align: left;">Unassigns one or more IPv6 addresses IPv4
Prefix Delegation prefixes from a network interface</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_unassign_private_ip_addresses/"> unassign_private_ip_addresses </a></td>
<td style="text-align: left;">Unassigns one or more secondary private IP
addresses, or IPv4 Prefix Delegation prefixes from a network
interface</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_unassign_private_nat_gateway_address/"> unassign_private_nat_gateway_address </a></td>
<td style="text-align: left;">Unassigns secondary private IPv4 addresses
from a private NAT gateway</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2_unmonitor_instances/"> unmonitor_instances </a></td>
<td style="text-align: left;">Disables detailed monitoring for a running
instance</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ec2_update_security_group_rule_descriptions_egress/"> update_security_group_rule_descriptions_egress </a></td>
<td style="text-align: left;">[VPC only] Updates the description of an
egress (outbound) security group rule</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ec2_update_security_group_rule_descriptions_ingress/"> update_security_group_rule_descriptions_ingress </a></td>
<td style="text-align: left;">Updates the description of an ingress
(inbound) security group rule</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2_withdraw_byoip_cidr/"> withdraw_byoip_cidr </a></td>
<td style="text-align: left;">Stops advertising an address range that is
provisioned as an address pool</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- ec2()
    # This example allocates an Elastic IP address to use with an instance in
    # a VPC.
    svc$allocate_address(
      Domain = "vpc"
    )

    ## End(Not run)
