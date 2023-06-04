<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_security_group_rules</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes one or more of your security group rules

### Description

Describes one or more of your security group rules.

### Usage

    ec2_describe_security_group_rules(Filters, SecurityGroupRuleIds, DryRun,
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
id="ec2_describe_security_group_rules_:_Filters">Filters</code></td>
<td><p>One or more filters.</p>
<ul>
<li><p><code>group-id</code> - The ID of the security group.</p></li>
<li><p><code>security-group-rule-id</code> - The ID of the security
group rule.</p></li>
<li><p><code>tag</code>:\&lt;key\&gt; - The key/value combination of a
tag assigned to the resource. Use the tag key in the filter name and the
tag value as the filter value. For example, to find all resources that
have a tag with the key <code>Owner</code> and the value
<code>TeamA</code>, specify <code>tag:Owner</code> for the filter name
and <code>TeamA</code> for the filter value.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_security_group_rules_:_SecurityGroupRuleIds">SecurityGroupRuleIds</code></td>
<td><p>The IDs of the security group rules.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_security_group_rules_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_security_group_rules_:_NextToken">NextToken</code></td>
<td><p>The token returned from a previous paginated request. Pagination
continues from the end of the items returned by the previous
request.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_security_group_rules_:_MaxResults">MaxResults</code></td>
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
      SecurityGroupRules = list(
        list(
          SecurityGroupRuleId = "string",
          GroupId = "string",
          GroupOwnerId = "string",
          IsEgress = TRUE|FALSE,
          IpProtocol = "string",
          FromPort = 123,
          ToPort = 123,
          CidrIpv4 = "string",
          CidrIpv6 = "string",
          PrefixListId = "string",
          ReferencedGroupInfo = list(
            GroupId = "string",
            PeeringStatus = "string",
            UserId = "string",
            VpcId = "string",
            VpcPeeringConnectionId = "string"
          ),
          Description = "string",
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_security_group_rules(
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      SecurityGroupRuleIds = list(
        "string"
      ),
      DryRun = TRUE|FALSE,
      NextToken = "string",
      MaxResults = 123
    )
