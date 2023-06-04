<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53_list_hosted_zones</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a list of the public and private hosted zones that are associated with the current Amazon Web Services account

### Description

Retrieves a list of the public and private hosted zones that are
associated with the current Amazon Web Services account. The response
includes a `HostedZones` child element for each hosted zone.

Amazon Route 53 returns a maximum of 100 items in each response. If you
have a lot of hosted zones, you can use the `maxitems` parameter to list
them in groups of up to 100.

### Usage

    route53_list_hosted_zones(Marker, MaxItems, DelegationSetId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="route53_list_hosted_zones_:_Marker">Marker</code></td>
<td><p>If the value of <code>IsTruncated</code> in the previous response
was <code>true</code>, you have more hosted zones. To get more hosted
zones, submit another <code>list_hosted_zones</code> request.</p>
<p>For the value of <code>marker</code>, specify the value of
<code>NextMarker</code> from the previous response, which is the ID of
the first hosted zone that Amazon Route 53 will return if you submit
another request.</p>
<p>If the value of <code>IsTruncated</code> in the previous response was
<code>false</code>, there are no more hosted zones to get.</p></td>
</tr>
<tr class="even">
<td><code id="route53_list_hosted_zones_:_MaxItems">MaxItems</code></td>
<td><p>(Optional) The maximum number of hosted zones that you want
Amazon Route 53 to return. If you have more than <code>maxitems</code>
hosted zones, the value of <code>IsTruncated</code> in the response is
<code>true</code>, and the value of <code>NextMarker</code> is the
hosted zone ID of the first hosted zone that Route 53 will return if you
submit another request.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53_list_hosted_zones_:_DelegationSetId">DelegationSetId</code></td>
<td><p>If you're using reusable delegation sets and you want to list all
of the hosted zones that are associated with a reusable delegation set,
specify the ID of that reusable delegation set.</p></td>
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
      Marker = "string",
      IsTruncated = TRUE|FALSE,
      NextMarker = "string",
      MaxItems = "string"
    )

### Request syntax

    svc$list_hosted_zones(
      Marker = "string",
      MaxItems = "string",
      DelegationSetId = "string"
    )
