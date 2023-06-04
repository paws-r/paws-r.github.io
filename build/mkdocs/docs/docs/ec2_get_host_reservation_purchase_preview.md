<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_get_host_reservation_purchase_preview</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Preview a reservation purchase with configurations that match those of your Dedicated Host

### Description

Preview a reservation purchase with configurations that match those of
your Dedicated Host. You must have active Dedicated Hosts in your
account before you purchase a reservation.

This is a preview of the `purchase_host_reservation` action and does not
result in the offering being purchased.

### Usage

    ec2_get_host_reservation_purchase_preview(HostIdSet, OfferingId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_get_host_reservation_purchase_preview_:_HostIdSet">HostIdSet</code></td>
<td><p>[required] The IDs of the Dedicated Hosts with which the
reservation is associated.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_get_host_reservation_purchase_preview_:_OfferingId">OfferingId</code></td>
<td><p>[required] The offering ID of the reservation.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CurrencyCode = "USD",
      Purchase = list(
        list(
          CurrencyCode = "USD",
          Duration = 123,
          HostIdSet = list(
            "string"
          ),
          HostReservationId = "string",
          HourlyPrice = "string",
          InstanceFamily = "string",
          PaymentOption = "AllUpfront"|"PartialUpfront"|"NoUpfront",
          UpfrontPrice = "string"
        )
      ),
      TotalHourlyPrice = "string",
      TotalUpfrontPrice = "string"
    )

### Request syntax

    svc$get_host_reservation_purchase_preview(
      HostIdSet = list(
        "string"
      ),
      OfferingId = "string"
    )
