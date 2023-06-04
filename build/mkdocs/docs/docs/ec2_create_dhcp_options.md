<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_create_dhcp_options</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a set of DHCP options for your VPC

### Description

Creates a set of DHCP options for your VPC. After creating the set, you
must associate it with the VPC, causing all existing and new instances
that you launch in the VPC to use this set of DHCP options. The
following are the individual DHCP options you can specify. For more
information about the options, see [RFC
2132](https://www.ietf.org/rfc/rfc2132.txt).

-   `domain-name-servers` - The IP addresses of up to four domain name
    servers, or AmazonProvidedDNS. The default DHCP option set specifies
    AmazonProvidedDNS. If specifying more than one domain name server,
    specify the IP addresses in a single parameter, separated by commas.
    To have your instance receive a custom DNS hostname as specified in
    `domain-name`, you must set `domain-name-servers` to a custom DNS
    server.

-   `domain-name` - If you're using AmazonProvidedDNS in `us-east-1`,
    specify `ec2.internal`. If you're using AmazonProvidedDNS in another
    Region, specify `region.compute.internal` (for example,
    `⁠ap-northeast-1.compute.internal⁠`). Otherwise, specify a domain name
    (for example, `ExampleCompany.com`). This value is used to complete
    unqualified DNS hostnames. **Important**: Some Linux operating
    systems accept multiple domain names separated by spaces. However,
    Windows and other Linux operating systems treat the value as a
    single domain, which results in unexpected behavior. If your DHCP
    options set is associated with a VPC that has instances with
    multiple operating systems, specify only one domain name.

-   `ntp-servers` - The IP addresses of up to four Network Time Protocol
    (NTP) servers.

-   `netbios-name-servers` - The IP addresses of up to four NetBIOS name
    servers.

-   `netbios-node-type` - The NetBIOS node type (1, 2, 4, or 8). We
    recommend that you specify 2 (broadcast and multicast are not
    currently supported). For more information about these node types,
    see [RFC 2132](https://www.ietf.org/rfc/rfc2132.txt).

Your VPC automatically starts out with a set of DHCP options that
includes only a DNS server that we provide (AmazonProvidedDNS). If you
create a set of options, and if your VPC has an internet gateway, make
sure to set the `domain-name-servers` option either to
`AmazonProvidedDNS` or to a domain name server of your choice. For more
information, see [DHCP options
sets](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_DHCP_Options.html)
in the *Amazon Virtual Private Cloud User Guide*.

### Usage

    ec2_create_dhcp_options(DhcpConfigurations, TagSpecifications, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_create_dhcp_options_:_DhcpConfigurations">DhcpConfigurations</code></td>
<td><p>[required] A DHCP configuration option.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_dhcp_options_:_TagSpecifications">TagSpecifications</code></td>
<td><p>The tags to assign to the DHCP option.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_create_dhcp_options_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DhcpOptions = list(
        DhcpConfigurations = list(
          list(
            Key = "string",
            Values = list(
              list(
                Value = "string"
              )
            )
          )
        ),
        DhcpOptionsId = "string",
        OwnerId = "string",
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        )
      )
    )

### Request syntax

    svc$create_dhcp_options(
      DhcpConfigurations = list(
        list(
          Key = "string",
          Values = list(
            "string"
          )
        )
      ),
      TagSpecifications = list(
        list(
          ResourceType = "capacity-reservation"|"client-vpn-endpoint"|"customer-gateway"|"carrier-gateway"|"coip-pool"|"dedicated-host"|"dhcp-options"|"egress-only-internet-gateway"|"elastic-ip"|"elastic-gpu"|"export-image-task"|"export-instance-task"|"fleet"|"fpga-image"|"host-reservation"|"image"|"import-image-task"|"import-snapshot-task"|"instance"|"instance-event-window"|"internet-gateway"|"ipam"|"ipam-pool"|"ipam-scope"|"ipv4pool-ec2"|"ipv6pool-ec2"|"key-pair"|"launch-template"|"local-gateway"|"local-gateway-route-table"|"local-gateway-virtual-interface"|"local-gateway-virtual-interface-group"|"local-gateway-route-table-vpc-association"|"local-gateway-route-table-virtual-interface-group-association"|"natgateway"|"network-acl"|"network-interface"|"network-insights-analysis"|"network-insights-path"|"network-insights-access-scope"|"network-insights-access-scope-analysis"|"placement-group"|"prefix-list"|"replace-root-volume-task"|"reserved-instances"|"route-table"|"security-group"|"security-group-rule"|"snapshot"|"spot-fleet-request"|"spot-instances-request"|"subnet"|"subnet-cidr-reservation"|"traffic-mirror-filter"|"traffic-mirror-session"|"traffic-mirror-target"|"transit-gateway"|"transit-gateway-attachment"|"transit-gateway-connect-peer"|"transit-gateway-multicast-domain"|"transit-gateway-policy-table"|"transit-gateway-route-table"|"transit-gateway-route-table-announcement"|"volume"|"vpc"|"vpc-endpoint"|"vpc-endpoint-connection"|"vpc-endpoint-service"|"vpc-endpoint-service-permission"|"vpc-peering-connection"|"vpn-connection"|"vpn-gateway"|"vpc-flow-log"|"capacity-reservation-fleet"|"traffic-mirror-filter-rule"|"vpc-endpoint-connection-device-type"|"verified-access-instance"|"verified-access-group"|"verified-access-endpoint"|"verified-access-policy"|"verified-access-trust-provider"|"vpn-connection-device-type"|"vpc-block-public-access-exclusion"|"ipam-resource-discovery"|"ipam-resource-discovery-association",
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          )
        )
      ),
      DryRun = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # This example creates a DHCP options set.
    svc$create_dhcp_options(
      DhcpConfigurations = list(
        list(
          Key = "domain-name-servers",
          Values = list(
            "10.2.5.1",
            "10.2.5.2"
          )
        )
      )
    )

    ## End(Not run)
