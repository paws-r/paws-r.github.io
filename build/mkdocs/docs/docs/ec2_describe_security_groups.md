<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_security_groups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the specified security groups or all of your security groups

### Description

Describes the specified security groups or all of your security groups.

A security group is for use with instances either in the EC2-Classic
platform or in a specific VPC. For more information, see [Amazon EC2
security
groups](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-security-groups.html)
in the *Amazon Elastic Compute Cloud User Guide* and [Security groups
for your
VPC](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-security-groups.html)
in the *Amazon Virtual Private Cloud User Guide*.

We are retiring EC2-Classic. We recommend that you migrate from
EC2-Classic to a VPC. For more information, see [Migrate from
EC2-Classic to a
VPC](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-migrate.html)
in the *Amazon Elastic Compute Cloud User Guide*.

### Usage

    ec2_describe_security_groups(Filters, GroupIds, GroupNames, DryRun,
      NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_security_groups_:_Filters">Filters</code></td>
<td><p>The filters. If using multiple filters for rules, the results
include security groups for which any combination of rules - not
necessarily a single rule - match all filters.</p>
<ul>
<li><p><code>description</code> - The description of the security
group.</p></li>
<li><p><code>egress.ip-permission.cidr</code> - An IPv4 CIDR block for
an outbound security group rule.</p></li>
<li><p><code>egress.ip-permission.from-port</code> - For an outbound
rule, the start of port range for the TCP and UDP protocols, or an ICMP
type number.</p></li>
<li><p><code>egress.ip-permission.group-id</code> - The ID of a security
group that has been referenced in an outbound security group
rule.</p></li>
<li><p><code>egress.ip-permission.group-name</code> - The name of a
security group that is referenced in an outbound security group
rule.</p></li>
<li><p><code>egress.ip-permission.ipv6-cidr</code> - An IPv6 CIDR block
for an outbound security group rule.</p></li>
<li><p><code>egress.ip-permission.prefix-list-id</code> - The ID of a
prefix list to which a security group rule allows outbound
access.</p></li>
<li><p><code>egress.ip-permission.protocol</code> - The IP protocol for
an outbound security group rule (<code>tcp</code> | <code>udp</code> |
<code>icmp</code>, a protocol number, or -1 for all protocols).</p></li>
<li><p><code>egress.ip-permission.to-port</code> - For an outbound rule,
the end of port range for the TCP and UDP protocols, or an ICMP
code.</p></li>
<li><p><code>egress.ip-permission.user-id</code> - The ID of an Amazon
Web Services account that has been referenced in an outbound security
group rule.</p></li>
<li><p><code>group-id</code> - The ID of the security group.</p></li>
<li><p><code>group-name</code> - The name of the security
group.</p></li>
<li><p><code>ip-permission.cidr</code> - An IPv4 CIDR block for an
inbound security group rule.</p></li>
<li><p><code>ip-permission.from-port</code> - For an inbound rule, the
start of port range for the TCP and UDP protocols, or an ICMP type
number.</p></li>
<li><p><code>ip-permission.group-id</code> - The ID of a security group
that has been referenced in an inbound security group rule.</p></li>
<li><p><code>ip-permission.group-name</code> - The name of a security
group that is referenced in an inbound security group rule.</p></li>
<li><p><code>ip-permission.ipv6-cidr</code> - An IPv6 CIDR block for an
inbound security group rule.</p></li>
<li><p><code>ip-permission.prefix-list-id</code> - The ID of a prefix
list from which a security group rule allows inbound access.</p></li>
<li><p><code>ip-permission.protocol</code> - The IP protocol for an
inbound security group rule (<code>tcp</code> | <code>udp</code> |
<code>icmp</code>, a protocol number, or -1 for all protocols).</p></li>
<li><p><code>ip-permission.to-port</code> - For an inbound rule, the end
of port range for the TCP and UDP protocols, or an ICMP code.</p></li>
<li><p><code>ip-permission.user-id</code> - The ID of an Amazon Web
Services account that has been referenced in an inbound security group
rule.</p></li>
<li><p><code>owner-id</code> - The Amazon Web Services account ID of the
owner of the security group.</p></li>
<li><p><code>tag</code>:\&lt;key\&gt; - The key/value combination of a
tag assigned to the resource. Use the tag key in the filter name and the
tag value as the filter value. For example, to find all resources that
have a tag with the key <code>Owner</code> and the value
<code>TeamA</code>, specify <code>tag:Owner</code> for the filter name
and <code>TeamA</code> for the filter value.</p></li>
<li><p><code>tag-key</code> - The key of a tag assigned to the resource.
Use this filter to find all resources assigned a tag with a specific
key, regardless of the tag value.</p></li>
<li><p><code>vpc-id</code> - The ID of the VPC specified when the
security group was created.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_security_groups_:_GroupIds">GroupIds</code></td>
<td><p>The IDs of the security groups. Required for security groups in a
nondefault VPC.</p>
<p>Default: Describes all of your security groups.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_security_groups_:_GroupNames">GroupNames</code></td>
<td><p>[EC2-Classic and default VPC only] The names of the security
groups. You can specify either the security group name or the security
group ID. For security groups in a nondefault VPC, use the
<code>group-name</code> filter to describe security groups by name.</p>
<p>Default: Describes all of your security groups.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_describe_security_groups_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_security_groups_:_NextToken">NextToken</code></td>
<td><p>The token returned from a previous paginated request. Pagination
continues from the end of the items returned by the previous
request.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_security_groups_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this request. To get
the next page of items, make another request with the token returned in
the output. This value can be between 5 and 1000. If this parameter is
not specified, then all items are returned. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination">Pagination</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SecurityGroups = list(
        list(
          Description = "string",
          GroupName = "string",
          IpPermissions = list(
            list(
              FromPort = 123,
              IpProtocol = "string",
              IpRanges = list(
                list(
                  CidrIp = "string",
                  Description = "string"
                )
              ),
              Ipv6Ranges = list(
                list(
                  CidrIpv6 = "string",
                  Description = "string"
                )
              ),
              PrefixListIds = list(
                list(
                  Description = "string",
                  PrefixListId = "string"
                )
              ),
              ToPort = 123,
              UserIdGroupPairs = list(
                list(
                  Description = "string",
                  GroupId = "string",
                  GroupName = "string",
                  PeeringStatus = "string",
                  UserId = "string",
                  VpcId = "string",
                  VpcPeeringConnectionId = "string"
                )
              )
            )
          ),
          OwnerId = "string",
          GroupId = "string",
          IpPermissionsEgress = list(
            list(
              FromPort = 123,
              IpProtocol = "string",
              IpRanges = list(
                list(
                  CidrIp = "string",
                  Description = "string"
                )
              ),
              Ipv6Ranges = list(
                list(
                  CidrIpv6 = "string",
                  Description = "string"
                )
              ),
              PrefixListIds = list(
                list(
                  Description = "string",
                  PrefixListId = "string"
                )
              ),
              ToPort = 123,
              UserIdGroupPairs = list(
                list(
                  Description = "string",
                  GroupId = "string",
                  GroupName = "string",
                  PeeringStatus = "string",
                  UserId = "string",
                  VpcId = "string",
                  VpcPeeringConnectionId = "string"
                )
              )
            )
          ),
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          ),
          VpcId = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_security_groups(
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      GroupIds = list(
        "string"
      ),
      GroupNames = list(
        "string"
      ),
      DryRun = TRUE|FALSE,
      NextToken = "string",
      MaxResults = 123
    )

### Examples

    ## Not run: 
    # This example describes the specified security group.
    svc$describe_security_groups(
      GroupIds = list(
        "sg-903004f8"
      )
    )

    # This example describes the security groups that include the specified
    # tag (Purpose=test).
    svc$describe_security_groups(
      Filters = list(
        list(
          Name = "tag:Purpose",
          Values = list(
            "test"
          )
        )
      )
    )

    ## End(Not run)
