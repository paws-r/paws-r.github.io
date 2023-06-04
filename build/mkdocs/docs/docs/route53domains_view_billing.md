<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53domains_view_billing</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns all the domain-related billing records for the current Amazon Web Services account for a specified period

### Description

Returns all the domain-related billing records for the current Amazon
Web Services account for a specified period

### Usage

    route53domains_view_billing(Start, End, Marker, MaxItems)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="route53domains_view_billing_:_Start">Start</code></td>
<td><p>The beginning date and time for the time period for which you
want a list of billing records. Specify the date and time in Unix time
format and Coordinated Universal time (UTC).</p></td>
</tr>
<tr class="even">
<td><code id="route53domains_view_billing_:_End">End</code></td>
<td><p>The end date and time for the time period for which you want a
list of billing records. Specify the date and time in Unix time format
and Coordinated Universal time (UTC).</p></td>
</tr>
<tr class="odd">
<td><code id="route53domains_view_billing_:_Marker">Marker</code></td>
<td><p>For an initial request for a list of billing records, omit this
element. If the number of billing records that are associated with the
current Amazon Web Services account during the specified period is
greater than the value that you specified for <code>MaxItems</code>, you
can use <code>Marker</code> to return additional billing records. Get
the value of <code>NextPageMarker</code> from the previous response, and
submit another request that includes the value of
<code>NextPageMarker</code> in the <code>Marker</code> element.</p>
<p>Constraints: The marker must match the value of
<code>NextPageMarker</code> that was returned in the previous
response.</p></td>
</tr>
<tr class="even">
<td><code
id="route53domains_view_billing_:_MaxItems">MaxItems</code></td>
<td><p>The number of billing records to be returned.</p>
<p>Default: 20</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextPageMarker = "string",
      BillingRecords = list(
        list(
          DomainName = "string",
          Operation = "REGISTER_DOMAIN"|"DELETE_DOMAIN"|"TRANSFER_IN_DOMAIN"|"UPDATE_DOMAIN_CONTACT"|"UPDATE_NAMESERVER"|"CHANGE_PRIVACY_PROTECTION"|"DOMAIN_LOCK"|"ENABLE_AUTORENEW"|"DISABLE_AUTORENEW"|"ADD_DNSSEC"|"REMOVE_DNSSEC"|"EXPIRE_DOMAIN"|"TRANSFER_OUT_DOMAIN"|"CHANGE_DOMAIN_OWNER"|"RENEW_DOMAIN"|"PUSH_DOMAIN"|"INTERNAL_TRANSFER_OUT_DOMAIN"|"INTERNAL_TRANSFER_IN_DOMAIN",
          InvoiceId = "string",
          BillDate = as.POSIXct(
            "2015-01-01"
          ),
          Price = 123.0
        )
      )
    )

### Request syntax

    svc$view_billing(
      Start = as.POSIXct(
        "2015-01-01"
      ),
      End = as.POSIXct(
        "2015-01-01"
      ),
      Marker = "string",
      MaxItems = 123
    )
