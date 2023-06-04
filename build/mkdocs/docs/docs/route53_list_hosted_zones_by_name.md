<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53_list_hosted_zones_by_name</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a list of your hosted zones in lexicographic order

### Description

Retrieves a list of your hosted zones in lexicographic order. The
response includes a `HostedZones` child element for each hosted zone
created by the current Amazon Web Services account.

`list_hosted_zones_by_name` sorts hosted zones by name with the labels
reversed. For example:

`com.example.www.`

Note the trailing dot, which can change the sort order in some
circumstances.

If the domain name includes escape characters or Punycode,
`list_hosted_zones_by_name` alphabetizes the domain name using the
escaped or Punycoded value, which is the format that Amazon Route 53
saves in its database. For example, to create a hosted zone for
exämple.com, you specify ex\344mple.com for the domain name.
`list_hosted_zones_by_name` alphabetizes it as:

`⁠com.ex\344mple.⁠`

The labels are reversed and alphabetized using the escaped value. For
more information about valid domain name formats, including
internationalized domain names, see [DNS Domain Name
Format](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DomainNameFormat.html)
in the *Amazon Route 53 Developer Guide*.

Route 53 returns up to 100 items in each response. If you have a lot of
hosted zones, use the `MaxItems` parameter to list them in groups of up
to 100. The response includes values that help navigate from one group
of `MaxItems` hosted zones to the next:

-   The `DNSName` and `HostedZoneId` elements in the response contain
    the values, if any, specified for the `dnsname` and `hostedzoneid`
    parameters in the request that produced the current response.

-   The `MaxItems` element in the response contains the value, if any,
    that you specified for the `maxitems` parameter in the request that
    produced the current response.

-   If the value of `IsTruncated` in the response is true, there are
    more hosted zones associated with the current Amazon Web Services
    account.

    If `IsTruncated` is false, this response includes the last hosted
    zone that is associated with the current account. The `NextDNSName`
    element and `NextHostedZoneId` elements are omitted from the
    response.

-   The `NextDNSName` and `NextHostedZoneId` elements in the response
    contain the domain name and the hosted zone ID of the next hosted
    zone that is associated with the current Amazon Web Services
    account. If you want to list more hosted zones, make another call to
    `list_hosted_zones_by_name`, and specify the value of `NextDNSName`
    and `NextHostedZoneId` in the `dnsname` and `hostedzoneid`
    parameters, respectively.

### Usage

    route53_list_hosted_zones_by_name(DNSName, HostedZoneId, MaxItems)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53_list_hosted_zones_by_name_:_DNSName">DNSName</code></td>
<td><p>(Optional) For your first request to
<code>list_hosted_zones_by_name</code>, include the <code>dnsname</code>
parameter only if you want to specify the name of the first hosted zone
in the response. If you don't include the <code>dnsname</code>
parameter, Amazon Route 53 returns all of the hosted zones that were
created by the current Amazon Web Services account, in ASCII order. For
subsequent requests, include both <code>dnsname</code> and
<code>hostedzoneid</code> parameters. For <code>dnsname</code>, specify
the value of <code>NextDNSName</code> from the previous
response.</p></td>
</tr>
<tr class="even">
<td><code
id="route53_list_hosted_zones_by_name_:_HostedZoneId">HostedZoneId</code></td>
<td><p>(Optional) For your first request to
<code>list_hosted_zones_by_name</code>, do not include the
<code>hostedzoneid</code> parameter.</p>
<p>If you have more hosted zones than the value of
<code>maxitems</code>, <code>list_hosted_zones_by_name</code> returns
only the first <code>maxitems</code> hosted zones. To get the next group
of <code>maxitems</code> hosted zones, submit another request to
<code>list_hosted_zones_by_name</code> and include both
<code>dnsname</code> and <code>hostedzoneid</code> parameters. For the
value of <code>hostedzoneid</code>, specify the value of the
<code>NextHostedZoneId</code> element from the previous
response.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53_list_hosted_zones_by_name_:_MaxItems">MaxItems</code></td>
<td><p>The maximum number of hosted zones to be included in the response
body for this request. If you have more than <code>maxitems</code>
hosted zones, then the value of the <code>IsTruncated</code> element in
the response is true, and the values of <code>NextDNSName</code> and
<code>NextHostedZoneId</code> specify the first hosted zone in the next
group of <code>maxitems</code> hosted zones.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      HostedZones = list(
        list(
          Id = "string",
          Name = "string",
          CallerReference = "string",
          Config = list(
            Comment = "string",
            PrivateZone = TRUE|FALSE
          ),
          ResourceRecordSetCount = 123,
          LinkedService = list(
            ServicePrincipal = "string",
            Description = "string"
          )
        )
      ),
      DNSName = "string",
      HostedZoneId = "string",
      IsTruncated = TRUE|FALSE,
      NextDNSName = "string",
      NextHostedZoneId = "string",
      MaxItems = "string"
    )

### Request syntax

    svc$list_hosted_zones_by_name(
      DNSName = "string",
      HostedZoneId = "string",
      MaxItems = "string"
    )
