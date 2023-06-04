<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_network_acls</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes one or more of your network ACLs

### Description

Describes one or more of your network ACLs.

For more information, see [Network
ACLs](https://docs.aws.amazon.com/vpc/latest/userguide/) in the *Amazon
Virtual Private Cloud User Guide*.

### Usage

    ec2_describe_network_acls(Filters, DryRun, NetworkAclIds, NextToken,
      MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_describe_network_acls_:_Filters">Filters</code></td>
<td><p>One or more filters.</p>
<ul>
<li><p><code>association.association-id</code> - The ID of an
association ID for the ACL.</p></li>
<li><p><code>association.network-acl-id</code> - The ID of the network
ACL involved in the association.</p></li>
<li><p><code>association.subnet-id</code> - The ID of the subnet
involved in the association.</p></li>
<li><p><code>default</code> - Indicates whether the ACL is the default
network ACL for the VPC.</p></li>
<li><p><code>entry.cidr</code> - The IPv4 CIDR range specified in the
entry.</p></li>
<li><p><code>entry.icmp.code</code> - The ICMP code specified in the
entry, if any.</p></li>
<li><p><code>entry.icmp.type</code> - The ICMP type specified in the
entry, if any.</p></li>
<li><p><code>entry.ipv6-cidr</code> - The IPv6 CIDR range specified in
the entry.</p></li>
<li><p><code>entry.port-range.from</code> - The start of the port range
specified in the entry.</p></li>
<li><p><code>entry.port-range.to</code> - The end of the port range
specified in the entry.</p></li>
<li><p><code>entry.protocol</code> - The protocol specified in the entry
(<code>tcp</code> | <code>udp</code> | <code>icmp</code> or a protocol
number).</p></li>
<li><p><code>entry.rule-action</code> - Allows or denies the matching
traffic (<code>allow</code> | <code>deny</code>).</p></li>
<li><p><code>entry.egress</code> - A Boolean that indicates the type of
rule. Specify <code>true</code> for egress rules, or <code>false</code>
for ingress rules.</p></li>
<li><p><code>entry.rule-number</code> - The number of an entry (in other
words, rule) in the set of ACL entries.</p></li>
<li><p><code>network-acl-id</code> - The ID of the network ACL.</p></li>
<li><p><code>owner-id</code> - The ID of the Amazon Web Services account
that owns the network ACL.</p></li>
<li><p><code>tag</code>:\&lt;key\&gt; - The key/value combination of a
tag assigned to the resource. Use the tag key in the filter name and the
tag value as the filter value. For example, to find all resources that
have a tag with the key <code>Owner</code> and the value
<code>TeamA</code>, specify <code>tag:Owner</code> for the filter name
and <code>TeamA</code> for the filter value.</p></li>
<li><p><code>tag-key</code> - The key of a tag assigned to the resource.
Use this filter to find all resources assigned a tag with a specific
key, regardless of the tag value.</p></li>
<li><p><code>vpc-id</code> - The ID of the VPC for the network
ACL.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code id="ec2_describe_network_acls_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_network_acls_:_NetworkAclIds">NetworkAclIds</code></td>
<td><p>One or more network ACL IDs.</p>
<p>Default: Describes all your network ACLs.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_network_acls_:_NextToken">NextToken</code></td>
<td><p>The token returned from a previous paginated request. Pagination
continues from the end of the items returned by the previous
request.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_network_acls_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this request. To get
the next page of items, make another request with the token returned in
the output. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination">Pagination</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NetworkAcls = list(
        list(
          Associations = list(
            list(
              NetworkAclAssociationId = "string",
              NetworkAclId = "string",
              SubnetId = "string"
            )
          ),
          Entries = list(
            list(
              CidrBlock = "string",
              Egress = TRUE|FALSE,
              IcmpTypeCode = list(
                Code = 123,
                Type = 123
              ),
              Ipv6CidrBlock = "string",
              PortRange = list(
                From = 123,
                To = 123
              ),
              Protocol = "string",
              RuleAction = "allow"|"deny",
              RuleNumber = 123
            )
          ),
          IsDefault = TRUE|FALSE,
          NetworkAclId = "string",
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          ),
          VpcId = "string",
          OwnerId = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_network_acls(
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      DryRun = TRUE|FALSE,
      NetworkAclIds = list(
        "string"
      ),
      NextToken = "string",
      MaxResults = 123
    )

### Examples

    ## Not run: 
    # This example describes the specified network ACL.
    svc$describe_network_acls(
      NetworkAclIds = list(
        "acl-5fb85d36"
      )
    )

    ## End(Not run)
