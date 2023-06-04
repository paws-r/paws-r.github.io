<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_spot_fleet_instances</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the running instances for the specified Spot Fleet

### Description

Describes the running instances for the specified Spot Fleet.

### Usage

    ec2_describe_spot_fleet_instances(DryRun, MaxResults, NextToken,
      SpotFleetRequestId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_spot_fleet_instances_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_spot_fleet_instances_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this request. To get
the next page of items, make another request with the token returned in
the output. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination">Pagination</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_spot_fleet_instances_:_NextToken">NextToken</code></td>
<td><p>The token to include in another request to get the next page of
items. This value is <code>null</code> when there are no more items to
return.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_spot_fleet_instances_:_SpotFleetRequestId">SpotFleetRequestId</code></td>
<td><p>[required] The ID of the Spot Fleet request.</p></td>
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
      SpotFleetRequestId = "string"
    )

### Request syntax

    svc$describe_spot_fleet_instances(
      DryRun = TRUE|FALSE,
      MaxResults = 123,
      NextToken = "string",
      SpotFleetRequestId = "string"
    )

### Examples

    ## Not run: 
    # This example lists the Spot Instances associated with the specified Spot
    # fleet.
    svc$describe_spot_fleet_instances(
      SpotFleetRequestId = "sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE"
    )

    ## End(Not run)
