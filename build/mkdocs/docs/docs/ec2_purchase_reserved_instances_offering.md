<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_purchase_reserved_instances_offering</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Purchases a Reserved Instance for use with your account

### Description

Purchases a Reserved Instance for use with your account. With Reserved
Instances, you pay a lower hourly rate compared to On-Demand instance
pricing.

Use `describe_reserved_instances_offerings` to get a list of Reserved
Instance offerings that match your specifications. After you've
purchased a Reserved Instance, you can check for your new Reserved
Instance with `describe_reserved_instances`.

To queue a purchase for a future date and time, specify a purchase time.
If you do not specify a purchase time, the default is the current time.

For more information, see [Reserved
Instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-reserved-instances.html)
and [Reserved Instance
Marketplace](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-market-general.html)
in the *Amazon EC2 User Guide*.

### Usage

    ec2_purchase_reserved_instances_offering(InstanceCount,
      ReservedInstancesOfferingId, DryRun, LimitPrice, PurchaseTime)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_purchase_reserved_instances_offering_:_InstanceCount">InstanceCount</code></td>
<td><p>[required] The number of Reserved Instances to purchase.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_purchase_reserved_instances_offering_:_ReservedInstancesOfferingId">ReservedInstancesOfferingId</code></td>
<td><p>[required] The ID of the Reserved Instance offering to
purchase.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_purchase_reserved_instances_offering_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_purchase_reserved_instances_offering_:_LimitPrice">LimitPrice</code></td>
<td><p>Specified for Reserved Instance Marketplace offerings to limit
the total order and ensure that the Reserved Instances are not purchased
at unexpected prices.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_purchase_reserved_instances_offering_:_PurchaseTime">PurchaseTime</code></td>
<td><p>The time at which to purchase the Reserved Instance, in UTC
format (for example,
<em>YYYY</em>-<em>MM</em>-<em>DD</em>T<em>HH</em>:<em>MM</em>:<em>SS</em>Z).</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ReservedInstancesId = "string"
    )

### Request syntax

    svc$purchase_reserved_instances_offering(
      InstanceCount = 123,
      ReservedInstancesOfferingId = "string",
      DryRun = TRUE|FALSE,
      LimitPrice = list(
        Amount = 123.0,
        CurrencyCode = "USD"
      ),
      PurchaseTime = as.POSIXct(
        "2015-01-01"
      )
    )
