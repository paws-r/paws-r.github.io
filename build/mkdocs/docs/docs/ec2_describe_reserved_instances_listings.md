<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_reserved_instances_listings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes your account's Reserved Instance listings in the Reserved Instance Marketplace

### Description

Describes your account's Reserved Instance listings in the Reserved
Instance Marketplace.

The Reserved Instance Marketplace matches sellers who want to resell
Reserved Instance capacity that they no longer need with buyers who want
to purchase additional capacity. Reserved Instances bought and sold
through the Reserved Instance Marketplace work like any other Reserved
Instances.

As a seller, you choose to list some or all of your Reserved Instances,
and you specify the upfront price to receive for them. Your Reserved
Instances are then listed in the Reserved Instance Marketplace and are
available for purchase.

As a buyer, you specify the configuration of the Reserved Instance to
purchase, and the Marketplace matches what you're searching for with
what's available. The Marketplace first sells the lowest priced Reserved
Instances to you, and continues to sell available Reserved Instance
listings to you until your demand is met. You are charged based on the
total price of all of the listings that you purchase.

For more information, see [Reserved Instance
Marketplace](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-market-general.html)
in the *Amazon EC2 User Guide*.

### Usage

    ec2_describe_reserved_instances_listings(Filters, ReservedInstancesId,
      ReservedInstancesListingId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_reserved_instances_listings_:_Filters">Filters</code></td>
<td><p>One or more filters.</p>
<ul>
<li><p><code>reserved-instances-id</code> - The ID of the Reserved
Instances.</p></li>
<li><p><code>reserved-instances-listing-id</code> - The ID of the
Reserved Instances listing.</p></li>
<li><p><code>status</code> - The status of the Reserved Instance listing
(<code>pending</code> | <code>active</code> | <code>cancelled</code> |
<code>closed</code>).</p></li>
<li><p><code>status-message</code> - The reason for the status.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_reserved_instances_listings_:_ReservedInstancesId">ReservedInstancesId</code></td>
<td><p>One or more Reserved Instance IDs.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_reserved_instances_listings_:_ReservedInstancesListingId">ReservedInstancesListingId</code></td>
<td><p>One or more Reserved Instance listing IDs.</p></td>
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

    svc$describe_reserved_instances_listings(
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      ReservedInstancesId = "string",
      ReservedInstancesListingId = "string"
    )
