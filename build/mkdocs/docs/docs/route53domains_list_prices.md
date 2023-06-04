<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53domains_list_prices</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the following prices for either all the TLDs supported by Route 53, or the specified TLD:

### Description

Lists the following prices for either all the TLDs supported by
Route 53, or the specified TLD:

-   Registration

-   Transfer

-   Owner change

-   Domain renewal

-   Domain restoration

### Usage

    route53domains_list_prices(Tld, Marker, MaxItems)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="route53domains_list_prices_:_Tld">Tld</code></td>
<td><p>The TLD for which you want to receive the pricing information.
For example. <code>.net</code>.</p>
<p>If a <code>Tld</code> value is not provided, a list of prices for all
TLDs supported by Route 53 is returned.</p></td>
</tr>
<tr class="even">
<td><code id="route53domains_list_prices_:_Marker">Marker</code></td>
<td><p>For an initial request for a list of prices, omit this element.
If the number of prices that are not yet complete is greater than the
value that you specified for <code>MaxItems</code>, you can use
<code>Marker</code> to return additional prices. Get the value of
<code>NextPageMarker</code> from the previous response, and submit
another request that includes the value of <code>NextPageMarker</code>
in the <code>Marker</code> element.</p>
<p>Used only for all TLDs. If you specify a TLD, don't specify a
<code>Marker</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53domains_list_prices_:_MaxItems">MaxItems</code></td>
<td><p>Number of <code>Prices</code> to be returned.</p>
<p>Used only for all TLDs. If you specify a TLD, don't specify a
<code>MaxItems</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Prices = list(
        list(
          Name = "string",
          RegistrationPrice = list(
            Price = 123.0,
            Currency = "string"
          ),
          TransferPrice = list(
            Price = 123.0,
            Currency = "string"
          ),
          RenewalPrice = list(
            Price = 123.0,
            Currency = "string"
          ),
          ChangeOwnershipPrice = list(
            Price = 123.0,
            Currency = "string"
          ),
          RestorationPrice = list(
            Price = 123.0,
            Currency = "string"
          )
        )
      ),
      NextPageMarker = "string"
    )

### Request syntax

    svc$list_prices(
      Tld = "string",
      Marker = "string",
      MaxItems = 123
    )
