<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_host_reservation_offerings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the Dedicated Host reservations that are available to purchase

### Description

Describes the Dedicated Host reservations that are available to
purchase.

The results describe all of the Dedicated Host reservation offerings,
including offerings that might not match the instance family and Region
of your Dedicated Hosts. When purchasing an offering, ensure that the
instance family and Region of the offering matches that of the Dedicated
Hosts with which it is to be associated. For more information about
supported instance types, see [Dedicated
Hosts](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/dedicated-hosts-overview.html)
in the *Amazon EC2 User Guide*.

### Usage

    ec2_describe_host_reservation_offerings(Filter, MaxDuration, MaxResults,
      MinDuration, NextToken, OfferingId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_host_reservation_offerings_:_Filter">Filter</code></td>
<td><p>The filters.</p>
<ul>
<li><p><code>instance-family</code> - The instance family of the
offering (for example, <code>m4</code>).</p></li>
<li><p><code>payment-option</code> - The payment option
(<code>NoUpfront</code> | <code>PartialUpfront</code> |
<code>AllUpfront</code>).</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_host_reservation_offerings_:_MaxDuration">MaxDuration</code></td>
<td><p>This is the maximum duration of the reservation to purchase,
specified in seconds. Reservations are available in one-year and
three-year terms. The number of seconds specified must be the number of
seconds in a year (365x24x60x60) times one of the supported durations (1
or 3). For example, specify 94608000 for three years.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_host_reservation_offerings_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return for the request in a
single page. The remaining results can be seen by sending another
request with the returned <code>nextToken</code> value. This value can
be between 5 and 500. If <code>maxResults</code> is given a larger value
than 500, you receive an error.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_host_reservation_offerings_:_MinDuration">MinDuration</code></td>
<td><p>This is the minimum duration of the reservation you'd like to
purchase, specified in seconds. Reservations are available in one-year
and three-year terms. The number of seconds specified must be the number
of seconds in a year (365x24x60x60) times one of the supported durations
(1 or 3). For example, specify 31536000 for one year.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_host_reservation_offerings_:_NextToken">NextToken</code></td>
<td><p>The token to use to retrieve the next page of results.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_host_reservation_offerings_:_OfferingId">OfferingId</code></td>
<td><p>The ID of the reservation offering.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      OfferingSet = list(
        list(
          CurrencyCode = "USD",
          Duration = 123,
          HourlyPrice = "string",
          InstanceFamily = "string",
          OfferingId = "string",
          PaymentOption = "AllUpfront"|"PartialUpfront"|"NoUpfront",
          UpfrontPrice = "string"
        )
      )
    )

### Request syntax

    svc$describe_host_reservation_offerings(
      Filter = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      MaxDuration = 123,
      MaxResults = 123,
      MinDuration = 123,
      NextToken = "string",
      OfferingId = "string"
    )
