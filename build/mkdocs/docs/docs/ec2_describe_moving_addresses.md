<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_moving_addresses</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes your Elastic IP addresses that are being moved to the EC2-VPC platform, or that are being restored to the EC2-Classic platform

### Description

Describes your Elastic IP addresses that are being moved to the EC2-VPC
platform, or that are being restored to the EC2-Classic platform. This
request does not return information about any other Elastic IP addresses
in your account.

### Usage

    ec2_describe_moving_addresses(Filters, DryRun, MaxResults, NextToken,
      PublicIps)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_moving_addresses_:_Filters">Filters</code></td>
<td><p>One or more filters.</p>
<ul>
<li><p><code>moving-status</code> - The status of the Elastic IP address
(<code>MovingToVpc</code> | <code>RestoringToClassic</code>).</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code id="ec2_describe_moving_addresses_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_moving_addresses_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return for the request in a
single page. The remaining results of the initial request can be seen by
sending another request with the returned <code>NextToken</code> value.
This value can be between 5 and 1000; if <code>MaxResults</code> is
given a value outside of this range, an error is returned.</p>
<p>Default: If no value is provided, the default is 1000.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_moving_addresses_:_NextToken">NextToken</code></td>
<td><p>The token for the next page of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_moving_addresses_:_PublicIps">PublicIps</code></td>
<td><p>One or more Elastic IP addresses.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      MovingAddressStatuses = list(
        list(
          MoveStatus = "movingToVpc"|"restoringToClassic",
          PublicIp = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_moving_addresses(
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      DryRun = TRUE|FALSE,
      MaxResults = 123,
      NextToken = "string",
      PublicIps = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # This example describes all of your moving Elastic IP addresses.
    svc$describe_moving_addresses()

    ## End(Not run)
