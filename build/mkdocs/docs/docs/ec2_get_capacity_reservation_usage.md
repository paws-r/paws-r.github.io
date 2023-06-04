<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_get_capacity_reservation_usage</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets usage information about a Capacity Reservation

### Description

Gets usage information about a Capacity Reservation. If the Capacity
Reservation is shared, it shows usage information for the Capacity
Reservation owner and each Amazon Web Services account that is currently
using the shared capacity. If the Capacity Reservation is not shared, it
shows only the Capacity Reservation owner's usage.

### Usage

    ec2_get_capacity_reservation_usage(CapacityReservationId, NextToken,
      MaxResults, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_get_capacity_reservation_usage_:_CapacityReservationId">CapacityReservationId</code></td>
<td><p>[required] The ID of the Capacity Reservation.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_get_capacity_reservation_usage_:_NextToken">NextToken</code></td>
<td><p>The token to use to retrieve the next page of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_get_capacity_reservation_usage_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return for the request in a
single page. The remaining results can be seen by sending another
request with the returned <code>nextToken</code> value. This value can
be between 5 and 500. If <code>maxResults</code> is given a larger value
than 500, you receive an error.</p>
<p>Valid range: Minimum value of 1. Maximum value of 1000.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_get_capacity_reservation_usage_:_DryRun">DryRun</code></td>
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
      CapacityReservationId = "string",
      InstanceType = "string",
      TotalInstanceCount = 123,
      AvailableInstanceCount = 123,
      State = "active"|"expired"|"cancelled"|"pending"|"failed",
      InstanceUsages = list(
        list(
          AccountId = "string",
          UsedInstanceCount = 123
        )
      )
    )

### Request syntax

    svc$get_capacity_reservation_usage(
      CapacityReservationId = "string",
      NextToken = "string",
      MaxResults = 123,
      DryRun = TRUE|FALSE
    )
