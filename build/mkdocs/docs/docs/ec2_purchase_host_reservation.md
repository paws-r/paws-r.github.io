<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_purchase_host_reservation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Purchase a reservation with configurations that match those of your Dedicated Host

### Description

Purchase a reservation with configurations that match those of your
Dedicated Host. You must have active Dedicated Hosts in your account
before you purchase a reservation. This action results in the specified
reservation being purchased and charged to your account.

### Usage

    ec2_purchase_host_reservation(ClientToken, CurrencyCode, HostIdSet,
      LimitPrice, OfferingId, TagSpecifications)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_purchase_host_reservation_:_ClientToken">ClientToken</code></td>
<td><p>Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring
Idempotency</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_purchase_host_reservation_:_CurrencyCode">CurrencyCode</code></td>
<td><p>The currency in which the <code>totalUpfrontPrice</code>,
<code>LimitPrice</code>, and <code>totalHourlyPrice</code> amounts are
specified. At this time, the only supported currency is
<code>USD</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_purchase_host_reservation_:_HostIdSet">HostIdSet</code></td>
<td><p>[required] The IDs of the Dedicated Hosts with which the
reservation will be associated.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_purchase_host_reservation_:_LimitPrice">LimitPrice</code></td>
<td><p>The specified limit is checked against the total upfront cost of
the reservation (calculated as the offering's upfront cost multiplied by
the host count). If the total upfront cost is greater than the specified
price limit, the request fails. This is used to ensure that the purchase
does not exceed the expected upfront cost of the purchase. At this time,
the only supported currency is <code>USD</code>. For example, to
indicate a limit price of USD 100, specify 100.00.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_purchase_host_reservation_:_OfferingId">OfferingId</code></td>
<td><p>[required] The ID of the offering.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_purchase_host_reservation_:_TagSpecifications">TagSpecifications</code></td>
<td><p>The tags to apply to the Dedicated Host Reservation during
purchase.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ClientToken = "string",
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

    svc$purchase_host_reservation(
      ClientToken = "string",
      CurrencyCode = "USD",
      HostIdSet = list(
        "string"
      ),
      LimitPrice = "string",
      OfferingId = "string",
      TagSpecifications = list(
        list(
          ResourceType = "capacity-reservation"|"client-vpn-endpoint"|"customer-gateway"|"carrier-gateway"|"coip-pool"|"dedicated-host"|"dhcp-options"|"egress-only-internet-gateway"|"elastic-ip"|"elastic-gpu"|"export-image-task"|"export-instance-task"|"fleet"|"fpga-image"|"host-reservation"|"image"|"import-image-task"|"import-snapshot-task"|"instance"|"instance-event-window"|"internet-gateway"|"ipam"|"ipam-pool"|"ipam-scope"|"ipv4pool-ec2"|"ipv6pool-ec2"|"key-pair"|"launch-template"|"local-gateway"|"local-gateway-route-table"|"local-gateway-virtual-interface"|"local-gateway-virtual-interface-group"|"local-gateway-route-table-vpc-association"|"local-gateway-route-table-virtual-interface-group-association"|"natgateway"|"network-acl"|"network-interface"|"network-insights-analysis"|"network-insights-path"|"network-insights-access-scope"|"network-insights-access-scope-analysis"|"placement-group"|"prefix-list"|"replace-root-volume-task"|"reserved-instances"|"route-table"|"security-group"|"security-group-rule"|"snapshot"|"spot-fleet-request"|"spot-instances-request"|"subnet"|"subnet-cidr-reservation"|"traffic-mirror-filter"|"traffic-mirror-session"|"traffic-mirror-target"|"transit-gateway"|"transit-gateway-attachment"|"transit-gateway-connect-peer"|"transit-gateway-multicast-domain"|"transit-gateway-policy-table"|"transit-gateway-route-table"|"transit-gateway-route-table-announcement"|"volume"|"vpc"|"vpc-endpoint"|"vpc-endpoint-connection"|"vpc-endpoint-service"|"vpc-endpoint-service-permission"|"vpc-peering-connection"|"vpn-connection"|"vpn-gateway"|"vpc-flow-log"|"capacity-reservation-fleet"|"traffic-mirror-filter-rule"|"vpc-endpoint-connection-device-type"|"verified-access-instance"|"verified-access-group"|"verified-access-endpoint"|"verified-access-policy"|"verified-access-trust-provider"|"vpn-connection-device-type"|"vpc-block-public-access-exclusion"|"ipam-resource-discovery"|"ipam-resource-discovery-association",
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          )
        )
      )
    )
