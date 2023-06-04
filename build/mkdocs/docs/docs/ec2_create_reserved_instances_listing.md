<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_create_reserved_instances_listing</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a listing for Amazon EC2 Standard Reserved Instances to be sold in the Reserved Instance Marketplace

### Description

Creates a listing for Amazon EC2 Standard Reserved Instances to be sold
in the Reserved Instance Marketplace. You can submit one Standard
Reserved Instance listing at a time. To get a list of your Standard
Reserved Instances, you can use the `describe_reserved_instances`
operation.

Only Standard Reserved Instances can be sold in the Reserved Instance
Marketplace. Convertible Reserved Instances cannot be sold.

The Reserved Instance Marketplace matches sellers who want to resell
Standard Reserved Instance capacity that they no longer need with buyers
who want to purchase additional capacity. Reserved Instances bought and
sold through the Reserved Instance Marketplace work like any other
Reserved Instances.

To sell your Standard Reserved Instances, you must first register as a
seller in the Reserved Instance Marketplace. After completing the
registration process, you can create a Reserved Instance Marketplace
listing of some or all of your Standard Reserved Instances, and specify
the upfront price to receive for them. Your Standard Reserved Instance
listings then become available for purchase. To view the details of your
Standard Reserved Instance listing, you can use the
`describe_reserved_instances_listings` operation.

For more information, see [Reserved Instance
Marketplace](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-market-general.html)
in the *Amazon EC2 User Guide*.

### Usage

    ec2_create_reserved_instances_listing(ClientToken, InstanceCount,
      PriceSchedules, ReservedInstancesId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_create_reserved_instances_listing_:_ClientToken">ClientToken</code></td>
<td><p>[required] Unique, case-sensitive identifier you provide to
ensure idempotency of your listings. This helps avoid duplicate
listings. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring
Idempotency</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_reserved_instances_listing_:_InstanceCount">InstanceCount</code></td>
<td><p>[required] The number of instances that are a part of a Reserved
Instance account to be listed in the Reserved Instance Marketplace. This
number should be less than or equal to the instance count associated
with the Reserved Instance ID specified in this call.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_reserved_instances_listing_:_PriceSchedules">PriceSchedules</code></td>
<td><p>[required] A list specifying the price of the Standard Reserved
Instance for each month remaining in the Reserved Instance
term.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_reserved_instances_listing_:_ReservedInstancesId">ReservedInstancesId</code></td>
<td><p>[required] The ID of the active Standard Reserved
Instance.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ReservedInstancesListings = list(
        list(
          ClientToken = "string",
          CreateDate = as.POSIXct(
            "2015-01-01"
          ),
          InstanceCounts = list(
            list(
              InstanceCount = 123,
              State = "available"|"sold"|"cancelled"|"pending"
            )
          ),
          PriceSchedules = list(
            list(
              Active = TRUE|FALSE,
              CurrencyCode = "USD",
              Price = 123.0,
              Term = 123
            )
          ),
          ReservedInstancesId = "string",
          ReservedInstancesListingId = "string",
          Status = "active"|"pending"|"cancelled"|"closed",
          StatusMessage = "string",
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          ),
          UpdateDate = as.POSIXct(
            "2015-01-01"
          )
        )
      )
    )

### Request syntax

    svc$create_reserved_instances_listing(
      ClientToken = "string",
      InstanceCount = 123,
      PriceSchedules = list(
        list(
          CurrencyCode = "USD",
          Price = 123.0,
          Term = 123
        )
      ),
      ReservedInstancesId = "string"
    )
