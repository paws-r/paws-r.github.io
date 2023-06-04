<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elbv2_describe_account_limits</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the current Elastic Load Balancing resource limits for your Amazon Web Services account

### Description

Describes the current Elastic Load Balancing resource limits for your
Amazon Web Services account.

For more information, see the following:

-   [Quotas for your Application Load
    Balancers](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-limits.html)

-   [Quotas for your Network Load
    Balancers](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-limits.html)

-   [Quotas for your Gateway Load
    Balancers](https://docs.aws.amazon.com/elasticloadbalancing/latest/gateway/quotas-limits.html)

### Usage

    elbv2_describe_account_limits(Marker, PageSize)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="elbv2_describe_account_limits_:_Marker">Marker</code></td>
<td><p>The marker for the next set of results. (You received this marker
from a previous call.)</p></td>
</tr>
<tr class="even">
<td><code
id="elbv2_describe_account_limits_:_PageSize">PageSize</code></td>
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
