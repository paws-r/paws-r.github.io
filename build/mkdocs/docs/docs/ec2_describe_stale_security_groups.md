<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_stale_security_groups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## \[VPC only\] Describes the stale security group rules for security groups in a specified VPC

### Description

\[VPC only\] Describes the stale security group rules for security
groups in a specified VPC. Rules are stale when they reference a deleted
security group in the same VPC or in a peer VPC, or if they reference a
security group in a peer VPC for which the VPC peering connection has
been deleted.

### Usage

    ec2_describe_stale_security_groups(DryRun, MaxResults, NextToken, VpcId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_stale_security_groups_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_stale_security_groups_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this request. To get
the next page of items, make another request with the token returned in
the output. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination">Pagination</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_stale_security_groups_:_NextToken">NextToken</code></td>
<td><p>The token returned from a previous paginated request. Pagination
continues from the end of the items returned by the previous
request.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_stale_security_groups_:_VpcId">VpcId</code></td>
<td><p>[required] The ID of the VPC.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      StaleSecurityGroupSet = list(
        list(
          Description = "string",
          GroupId = "string",
          GroupName = "string",
          StaleIpPermissions = list(
            list(
              FromPort = 123,
              IpProtocol = "string",
              IpRanges = list(
                "string"
              ),
              PrefixListIds = list(
                "string"
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
          StaleIpPermissionsEgress = list(
            list(
              FromPort = 123,
              IpProtocol = "string",
              IpRanges = list(
                "string"
              ),
              PrefixListIds = list(
                "string"
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
          VpcId = "string"
        )
      )
    )

### Request syntax

    svc$describe_stale_security_groups(
      DryRun = TRUE|FALSE,
      MaxResults = 123,
      NextToken = "string",
      VpcId = "string"
    )
