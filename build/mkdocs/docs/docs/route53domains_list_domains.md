<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53domains_list_domains</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This operation returns all the domain names registered with Amazon Route 53 for the current Amazon Web Services account if no filtering conditions are used

### Description

This operation returns all the domain names registered with Amazon Route
53 for the current Amazon Web Services account if no filtering
conditions are used.

### Usage

    route53domains_list_domains(FilterConditions, SortCondition, Marker,
      MaxItems)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53domains_list_domains_:_FilterConditions">FilterConditions</code></td>
<td><p>A complex type that contains information about the filters
applied during the <code>list_domains</code> request. The filter
conditions can include domain name and domain expiration.</p></td>
</tr>
<tr class="even">
<td><code
id="route53domains_list_domains_:_SortCondition">SortCondition</code></td>
<td><p>A complex type that contains information about the requested
ordering of domains in the returned list.</p></td>
</tr>
<tr class="odd">
<td><code id="route53domains_list_domains_:_Marker">Marker</code></td>
<td><p>For an initial request for a list of domains, omit this element.
If the number of domains that are associated with the current Amazon Web
Services account is greater than the value that you specified for
<code>MaxItems</code>, you can use <code>Marker</code> to return
additional domains. Get the value of <code>NextPageMarker</code> from
the previous response, and submit another request that includes the
value of <code>NextPageMarker</code> in the <code>Marker</code>
element.</p>
<p>Constraints: The marker must match the value specified in the
previous request.</p></td>
</tr>
<tr class="even">
<td><code
id="route53domains_list_domains_:_MaxItems">MaxItems</code></td>
<td><p>Number of domains to be returned.</p>
<p>Default: 20</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Domains = list(
        list(
          DomainName = "string",
          AutoRenew = TRUE|FALSE,
          TransferLock = TRUE|FALSE,
          Expiry = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextPageMarker = "string"
    )

### Request syntax

    svc$list_domains(
      FilterConditions = list(
        list(
          Name = "DomainName"|"Expiry",
          Operator = "LE"|"GE"|"BEGINS_WITH",
          Values = list(
            "string"
          )
        )
      ),
      SortCondition = list(
        Name = "DomainName"|"Expiry",
        SortOrder = "ASC"|"DESC"
      ),
      Marker = "string",
      MaxItems = 123
    )
