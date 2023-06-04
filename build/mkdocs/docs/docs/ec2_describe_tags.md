<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_tags</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the specified tags for your EC2 resources

### Description

Describes the specified tags for your EC2 resources.

For more information about tags, see [Tag your Amazon EC2
resources](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html)
in the *Amazon Elastic Compute Cloud User Guide*.

### Usage

    ec2_describe_tags(DryRun, Filters, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_describe_tags_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_describe_tags_:_Filters">Filters</code></td>
<td><p>The filters.</p>
<ul>
<li><p><code>key</code> - The tag key.</p></li>
<li><p><code>resource-id</code> - The ID of the resource.</p></li>
<li><p><code>resource-type</code> - The resource type
(<code>customer-gateway</code> | <code>dedicated-host</code> |
<code>dhcp-options</code> | <code>elastic-ip</code> | <code>fleet</code>
| <code>fpga-image</code> | <code>host-reservation</code> |
<code>image</code> | <code>instance</code> |
<code>internet-gateway</code> | <code>key-pair</code> |
<code>launch-template</code> | <code>natgateway</code> |
<code>network-acl</code> | <code>network-interface</code> |
<code>placement-group</code> | <code>reserved-instances</code> |
<code>route-table</code> | <code>security-group</code> |
<code>snapshot</code> | <code>spot-instances-request</code> |
<code>subnet</code> | <code>volume</code> | <code>vpc</code> |
<code>vpc-endpoint</code> | <code>vpc-endpoint-service</code> |
<code>vpc-peering-connection</code> | <code>vpn-connection</code> |
<code>vpn-gateway</code>).</p></li>
<li><p><code>tag</code>:\&lt;key\&gt; - The key/value combination of the
tag. For example, specify "tag:Owner" for the filter name and "TeamA"
for the filter value to find resources with the tag
"Owner=TeamA".</p></li>
<li><p><code>value</code> - The tag value.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code id="ec2_describe_tags_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this request. This
value can be between 5 and 1000. To get the next page of items, make
another request with the token returned in the output. For more
information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination">Pagination</a>.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_describe_tags_:_NextToken">NextToken</code></td>
<td><p>The token returned from a previous paginated request. Pagination
continues from the end of the items returned by the previous
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      Tags = list(
        list(
          Key = "string",
          ResourceId = "string",
          ResourceType = "capacity-reservation"|"client-vpn-endpoint"|"customer-gateway"|"carrier-gateway"|"coip-pool"|"dedicated-host"|"dhcp-options"|"egress-only-internet-gateway"|"elastic-ip"|"elastic-gpu"|"export-image-task"|"export-instance-task"|"fleet"|"fpga-image"|"host-reservation"|"image"|"import-image-task"|"import-snapshot-task"|"instance"|"instance-event-window"|"internet-gateway"|"ipam"|"ipam-pool"|"ipam-scope"|"ipv4pool-ec2"|"ipv6pool-ec2"|"key-pair"|"launch-template"|"local-gateway"|"local-gateway-route-table"|"local-gateway-virtual-interface"|"local-gateway-virtual-interface-group"|"local-gateway-route-table-vpc-association"|"local-gateway-route-table-virtual-interface-group-association"|"natgateway"|"network-acl"|"network-interface"|"network-insights-analysis"|"network-insights-path"|"network-insights-access-scope"|"network-insights-access-scope-analysis"|"placement-group"|"prefix-list"|"replace-root-volume-task"|"reserved-instances"|"route-table"|"security-group"|"security-group-rule"|"snapshot"|"spot-fleet-request"|"spot-instances-request"|"subnet"|"subnet-cidr-reservation"|"traffic-mirror-filter"|"traffic-mirror-session"|"traffic-mirror-target"|"transit-gateway"|"transit-gateway-attachment"|"transit-gateway-connect-peer"|"transit-gateway-multicast-domain"|"transit-gateway-policy-table"|"transit-gateway-route-table"|"transit-gateway-route-table-announcement"|"volume"|"vpc"|"vpc-endpoint"|"vpc-endpoint-connection"|"vpc-endpoint-service"|"vpc-endpoint-service-permission"|"vpc-peering-connection"|"vpn-connection"|"vpn-gateway"|"vpc-flow-log"|"capacity-reservation-fleet"|"traffic-mirror-filter-rule"|"vpc-endpoint-connection-device-type"|"verified-access-instance"|"verified-access-group"|"verified-access-endpoint"|"verified-access-policy"|"verified-access-trust-provider"|"vpn-connection-device-type"|"vpc-block-public-access-exclusion"|"ipam-resource-discovery"|"ipam-resource-discovery-association",
          Value = "string"
        )
      )
    )

### Request syntax

    svc$describe_tags(
      DryRun = TRUE|FALSE,
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      MaxResults = 123,
      NextToken = "string"
    )

### Examples

    ## Not run: 
    # This example describes the tags for the specified instance.
    svc$describe_tags(
      Filters = list(
        list(
          Name = "resource-id",
          Values = list(
            "i-1234567890abcdef8"
          )
        )
      )
    )

    ## End(Not run)
