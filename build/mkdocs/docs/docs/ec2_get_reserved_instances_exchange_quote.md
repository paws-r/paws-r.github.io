<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_get_reserved_instances_exchange_quote</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a quote and exchange information for exchanging one or more specified Convertible Reserved Instances for a new Convertible Reserved Instance

### Description

Returns a quote and exchange information for exchanging one or more
specified Convertible Reserved Instances for a new Convertible Reserved
Instance. If the exchange cannot be performed, the reason is returned in
the response. Use `accept_reserved_instances_exchange_quote` to perform
the exchange.

### Usage

    ec2_get_reserved_instances_exchange_quote(DryRun, ReservedInstanceIds,
      TargetConfigurations)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_get_reserved_instances_exchange_quote_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_get_reserved_instances_exchange_quote_:_ReservedInstanceIds">ReservedInstanceIds</code></td>
<td><p>[required] The IDs of the Convertible Reserved Instances to
exchange.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_get_reserved_instances_exchange_quote_:_TargetConfigurations">TargetConfigurations</code></td>
<td><p>The configuration of the target Convertible Reserved Instance to
exchange for your current Convertible Reserved Instances.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CurrencyCode = "string",
      IsValidExchange = TRUE|FALSE,
      OutputReservedInstancesWillExpireAt = as.POSIXct(
        "2015-01-01"
      ),
      PaymentDue = "string",
      ReservedInstanceValueRollup = list(
        HourlyPrice = "string",
        RemainingTotalValue = "string",
        RemainingUpfrontValue = "string"
      ),
      ReservedInstanceValueSet = list(
        list(
          ReservationValue = list(
            HourlyPrice = "string",
            RemainingTotalValue = "string",
            RemainingUpfrontValue = "string"
          ),
          ReservedInstanceId = "string"
        )
      ),
      TargetConfigurationValueRollup = list(
        HourlyPrice = "string",
        RemainingTotalValue = "string",
        RemainingUpfrontValue = "string"
      ),
      TargetConfigurationValueSet = list(
        list(
          ReservationValue = list(
            HourlyPrice = "string",
            RemainingTotalValue = "string",
            RemainingUpfrontValue = "string"
          ),
          TargetConfiguration = list(
            InstanceCount = 123,
            OfferingId = "string"
          )
        )
      ),
      ValidationFailureReason = "string"
    )

### Request syntax

    svc$get_reserved_instances_exchange_quote(
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
