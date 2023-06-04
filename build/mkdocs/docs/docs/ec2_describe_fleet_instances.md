<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_fleet_instances</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the running instances for the specified EC2 Fleet

### Description

Describes the running instances for the specified EC2 Fleet.

For more information, see [Monitor your EC2
Fleet](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/manage-ec2-fleet.html#monitor-ec2-fleet)
in the *Amazon EC2 User Guide*.

### Usage

    ec2_describe_fleet_instances(DryRun, MaxResults, NextToken, FleetId,
      Filters)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_describe_fleet_instances_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_fleet_instances_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this request. To get
the next page of items, make another request with the token returned in
the output. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination">Pagination</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_fleet_instances_:_NextToken">NextToken</code></td>
<td><p>The token returned from a previous paginated request. Pagination
continues from the end of the items returned by the previous
request.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_fleet_instances_:_FleetId">FleetId</code></td>
<td><p>[required] The ID of the EC2 Fleet.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_fleet_instances_:_Filters">Filters</code></td>
<td><p>The filters.</p>
<ul>
<li><p><code>instance-type</code> - The instance type.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ActiveInstances = list(
        list(
          InstanceId = "string",
          InstanceType = "string",
          SpotInstanceRequestId = "string",
          InstanceHealth = "healthy"|"unhealthy"
        )
      ),
      NextToken = "string",
      FleetId = "string"
    )

### Request syntax

    svc$describe_fleet_instances(
      DryRun = TRUE|FALSE,
      MaxResults = 123,
      NextToken = "string",
      FleetId = "string",
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      )
    )
