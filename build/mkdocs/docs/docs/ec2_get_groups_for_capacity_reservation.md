<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_get_groups_for_capacity_reservation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the resource groups to which a Capacity Reservation has been added

### Description

Lists the resource groups to which a Capacity Reservation has been
added.

### Usage

    ec2_get_groups_for_capacity_reservation(CapacityReservationId,
      NextToken, MaxResults, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_get_groups_for_capacity_reservation_:_CapacityReservationId">CapacityReservationId</code></td>
<td><p>[required] The ID of the Capacity Reservation. If you specify a
Capacity Reservation that is shared with you, the operation returns only
Capacity Reservation groups that you own.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_get_groups_for_capacity_reservation_:_NextToken">NextToken</code></td>
<td><p>The token to use to retrieve the next page of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_get_groups_for_capacity_reservation_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return for the request in a
single page. The remaining results can be seen by sending another
request with the returned <code>nextToken</code> value. This value can
be between 5 and 500. If <code>maxResults</code> is given a larger value
than 500, you receive an error.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_get_groups_for_capacity_reservation_:_DryRun">DryRun</code></td>
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
      NextToken = "string",
      CapacityReservationGroups = list(
        list(
          GroupArn = "string",
          OwnerId = "string"
        )
      )
    )

### Request syntax

    svc$get_groups_for_capacity_reservation(
      CapacityReservationId = "string",
      NextToken = "string",
      MaxResults = 123,
      DryRun = TRUE|FALSE
    )
