<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_host_reservations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes reservations that are associated with Dedicated Hosts in your account

### Description

Describes reservations that are associated with Dedicated Hosts in your
account.

### Usage

    ec2_describe_host_reservations(Filter, HostReservationIdSet, MaxResults,
      NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_host_reservations_:_Filter">Filter</code></td>
<td><p>The filters.</p>
<ul>
<li><p><code>instance-family</code> - The instance family (for example,
<code>m4</code>).</p></li>
<li><p><code>payment-option</code> - The payment option
(<code>NoUpfront</code> | <code>PartialUpfront</code> |
<code>AllUpfront</code>).</p></li>
<li><p><code>state</code> - The state of the reservation
(<code>payment-pending</code> | <code>payment-failed</code> |
<code>active</code> | <code>retired</code>).</p></li>
<li><p><code style="white-space: pre;">⁠tag:&lt;key&gt;⁠</code> - The
key/value combination of a tag assigned to the resource. Use the tag key
in the filter name and the tag value as the filter value. For example,
to find all resources that have a tag with the key <code>Owner</code>
and the value <code>TeamA</code>, specify <code>tag:Owner</code> for the
filter name and <code>TeamA</code> for the filter value.</p></li>
<li><p><code>tag-key</code> - The key of a tag assigned to the resource.
Use this filter to find all resources assigned a tag with a specific
key, regardless of the tag value.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_host_reservations_:_HostReservationIdSet">HostReservationIdSet</code></td>
<td><p>The host reservation IDs.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_host_reservations_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return for the request in a
single page. The remaining results can be seen by sending another
request with the returned <code>nextToken</code> value. This value can
be between 5 and 500. If <code>maxResults</code> is given a larger value
than 500, you receive an error.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_host_reservations_:_NextToken">NextToken</code></td>
<td><p>The token to use to retrieve the next page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      HostReservationSet = list(
        list(
          Count = 123,
          CurrencyCode = "USD",
          Duration = 123,
          End = as.POSIXct(
            "2015-01-01"
          ),
          HostIdSet = list(
            "string"
          ),
          HostReservationId = "string",
          HourlyPrice = "string",
          InstanceFamily = "string",
          OfferingId = "string",
          PaymentOption = "AllUpfront"|"PartialUpfront"|"NoUpfront",
          Start = as.POSIXct(
            "2015-01-01"
          ),
          State = "payment-pending"|"payment-failed"|"active"|"retired",
          UpfrontPrice = "string",
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_host_reservations(
      Filter = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      HostReservationIdSet = list(
        "string"
      ),
      MaxResults = 123,
      NextToken = "string"
    )
