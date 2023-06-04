<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_get_subnet_cidr_reservations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about the subnet CIDR reservations

### Description

Gets information about the subnet CIDR reservations.

### Usage

    ec2_get_subnet_cidr_reservations(Filters, SubnetId, DryRun, NextToken,
      MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_get_subnet_cidr_reservations_:_Filters">Filters</code></td>
<td><p>One or more filters.</p>
<ul>
<li><p><code>reservationType</code> - The type of reservation
(<code>prefix</code> | <code>explicit</code>).</p></li>
<li><p><code>subnet-id</code> - The ID of the subnet.</p></li>
<li><p><code>tag</code>:\&lt;key\&gt; - The key/value combination of a
tag assigned to the resource. Use the tag key in the filter name and the
tag value as the filter value. For example, to find all resources that
have a tag with the key <code>Owner</code> and the value
<code>TeamA</code>, specify <code>tag:Owner</code> for the filter name
and <code>TeamA</code> for the filter value.</p></li>
<li><p><code>tag-key</code> - The key of a tag assigned to the resource.
Use this filter to find all resources assigned a tag with a specific
key, regardless of the tag value.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="ec2_get_subnet_cidr_reservations_:_SubnetId">SubnetId</code></td>
<td><p>[required] The ID of the subnet.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_get_subnet_cidr_reservations_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_get_subnet_cidr_reservations_:_NextToken">NextToken</code></td>
<td><p>The token for the next page of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_get_subnet_cidr_reservations_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return with a single call. To
retrieve the remaining results, make another call with the returned
<code>nextToken</code> value.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SubnetIpv4CidrReservations = list(
        list(
          SubnetCidrReservationId = "string",
          SubnetId = "string",
          Cidr = "string",
          ReservationType = "prefix"|"explicit",
          OwnerId = "string",
          Description = "string",
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          )
        )
      ),
      SubnetIpv6CidrReservations = list(
        list(
          SubnetCidrReservationId = "string",
          SubnetId = "string",
          Cidr = "string",
          ReservationType = "prefix"|"explicit",
          OwnerId = "string",
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

    svc$get_subnet_cidr_reservations(
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      SubnetId = "string",
      DryRun = TRUE|FALSE,
      NextToken = "string",
      MaxResults = 123
    )
