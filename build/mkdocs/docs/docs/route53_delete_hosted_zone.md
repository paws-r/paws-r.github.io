<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53_delete_hosted_zone</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a hosted zone

### Description

Deletes a hosted zone.

If the hosted zone was created by another service, such as Cloud Map,
see [Deleting Public Hosted Zones That Were Created by Another
Service](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DeleteHostedZone.html#delete-public-hosted-zone-created-by-another-service)
in the *Amazon Route 53 Developer Guide* for information about how to
delete it. (The process is the same for public and private hosted zones
that were created by another service.)

If you want to keep your domain registration but you want to stop
routing internet traffic to your website or web application, we
recommend that you delete resource record sets in the hosted zone
instead of deleting the hosted zone.

If you delete a hosted zone, you can't undelete it. You must create a
new hosted zone and update the name servers for your domain
registration, which can require up to 48 hours to take effect. (If you
delegated responsibility for a subdomain to a hosted zone and you delete
the child hosted zone, you must update the name servers in the parent
hosted zone.) In addition, if you delete a hosted zone, someone could
hijack the domain and route traffic to their own resources using your
domain name.

If you want to avoid the monthly charge for the hosted zone, you can
transfer DNS service for the domain to a free DNS service. When you
transfer DNS service, you have to update the name servers for the domain
registration. If the domain is registered with Route 53, see
[UpdateDomainNameservers](https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_UpdateDomainNameservers.html)
for information about how to replace Route 53 name servers with name
servers for the new DNS service. If the domain is registered with
another registrar, use the method provided by the registrar to update
name servers for the domain registration. For more information, perform
an internet search on "free DNS service."

You can delete a hosted zone only if it contains only the default SOA
record and NS resource record sets. If the hosted zone contains other
resource record sets, you must delete them before you can delete the
hosted zone. If you try to delete a hosted zone that contains other
resource record sets, the request fails, and Route 53 returns a
`HostedZoneNotEmpty` error. For information about deleting records from
your hosted zone, see `change_resource_record_sets`.

To verify that the hosted zone has been deleted, do one of the
following:

-   Use the `get_hosted_zone` action to request information about the
    hosted zone.

-   Use the `list_hosted_zones` action to get a list of the hosted zones
    associated with the current Amazon Web Services account.

### Usage

    route53_delete_hosted_zone(Id)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="route53_delete_hosted_zone_:_Id">Id</code></td>
<td><p>[required] The ID of the hosted zone you want to delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ChangeInfo = list(
        Id = "string",
        Status = "PENDING"|"INSYNC",
        SubmittedAt = as.POSIXct(
          "2015-01-01"
        ),
        Comment = "string"
      )
    )

### Request syntax

    svc$delete_hosted_zone(
      Id = "string"
    )
