<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_cancel_reserved_instances_listing</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Cancels the specified Reserved Instance listing in the Reserved Instance Marketplace

### Description

Cancels the specified Reserved Instance listing in the Reserved Instance
Marketplace.

For more information, see [Reserved Instance
Marketplace](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-market-general.html)
in the *Amazon EC2 User Guide*.

### Usage

    ec2_cancel_reserved_instances_listing(ReservedInstancesListingId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_cancel_reserved_instances_listing_:_ReservedInstancesListingId">ReservedInstancesListingId</code></td>
<td><p>[required] The ID of the Reserved Instance listing.</p></td>
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

    svc$cancel_reserved_instances_listing(
      ReservedInstancesListingId = "string"
    )
