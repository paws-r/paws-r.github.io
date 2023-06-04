<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_accept_reserved_instances_exchange_quote</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Accepts the Convertible Reserved Instance exchange quote described in the GetReservedInstancesExchangeQuote call

### Description

Accepts the Convertible Reserved Instance exchange quote described in
the `get_reserved_instances_exchange_quote` call.

### Usage

    ec2_accept_reserved_instances_exchange_quote(DryRun,
      ReservedInstanceIds, TargetConfigurations)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_accept_reserved_instances_exchange_quote_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_accept_reserved_instances_exchange_quote_:_ReservedInstanceIds">ReservedInstanceIds</code></td>
<td><p>[required] The IDs of the Convertible Reserved Instances to
exchange for another Convertible Reserved Instance of the same or higher
value.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_accept_reserved_instances_exchange_quote_:_TargetConfigurations">TargetConfigurations</code></td>
<td><p>The configuration of the target Convertible Reserved Instance to
exchange for your current Convertible Reserved Instances.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ExchangeId = "string"
    )

### Request syntax

    svc$accept_reserved_instances_exchange_quote(
      DryRun = TRUE|FALSE,
      ReservedInstanceIds = list(
        "string"
      ),
      TargetConfigurations = list(
        list(
          InstanceCount = 123,
          OfferingId = "string"
        )
      )
    )
