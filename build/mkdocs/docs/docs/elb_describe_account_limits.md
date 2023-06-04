<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elb_describe_account_limits</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the current Elastic Load Balancing resource limits for your AWS account

### Description

Describes the current Elastic Load Balancing resource limits for your
AWS account.

For more information, see [Limits for Your Classic Load
Balancer](https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-limits.html)
in the *Classic Load Balancers Guide*.

### Usage

    elb_describe_account_limits(Marker, PageSize)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="elb_describe_account_limits_:_Marker">Marker</code></td>
<td><p>The marker for the next set of results. (You received this marker
from a previous call.)</p></td>
</tr>
<tr class="even">
<td><code
id="elb_describe_account_limits_:_PageSize">PageSize</code></td>
<td><p>The maximum number of results to return with this call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Limits = list(
        list(
          Name = "string",
          Max = "string"
        )
      ),
      NextMarker = "string"
    )

### Request syntax

    svc$describe_account_limits(
      Marker = "string",
      PageSize = 123
    )
