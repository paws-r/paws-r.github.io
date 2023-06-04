<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53_create_reusable_delegation_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a delegation set (a group of four name servers) that can be reused by multiple hosted zones that were created by the same Amazon Web Services account

### Description

Creates a delegation set (a group of four name servers) that can be
reused by multiple hosted zones that were created by the same Amazon Web
Services account.

You can also create a reusable delegation set that uses the four name
servers that are associated with an existing hosted zone. Specify the
hosted zone ID in the `create_reusable_delegation_set` request.

You can't associate a reusable delegation set with a private hosted
zone.

For information about using a reusable delegation set to configure white
label name servers, see [Configuring White Label Name
Servers](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/white-label-name-servers.html).

The process for migrating existing hosted zones to use a reusable
delegation set is comparable to the process for configuring white label
name servers. You need to perform the following steps:

1.  Create a reusable delegation set.

2.  Recreate hosted zones, and reduce the TTL to 60 seconds or less.

3.  Recreate resource record sets in the new hosted zones.

4.  Change the registrar's name servers to use the name servers for the
    new hosted zones.

5.  Monitor traffic for the website or application.

6.  Change TTLs back to their original values.

If you want to migrate existing hosted zones to use a reusable
delegation set, the existing hosted zones can't use any of the name
servers that are assigned to the reusable delegation set. If one or more
hosted zones do use one or more name servers that are assigned to the
reusable delegation set, you can do one of the following:

-   For small numbers of hosted zones—up to a few hundred—it's
    relatively easy to create reusable delegation sets until you get one
    that has four name servers that don't overlap with any of the name
    servers in your hosted zones.

-   For larger numbers of hosted zones, the easiest solution is to use
    more than one reusable delegation set.

-   For larger numbers of hosted zones, you can also migrate hosted
    zones that have overlapping name servers to hosted zones that don't
    have overlapping name servers, then migrate the hosted zones again
    to use the reusable delegation set.

### Usage

    route53_create_reusable_delegation_set(CallerReference, HostedZoneId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53_create_reusable_delegation_set_:_CallerReference">CallerReference</code></td>
<td><p>[required] A unique string that identifies the request, and that
allows you to retry failed <code>create_reusable_delegation_set</code>
requests without the risk of executing the operation twice. You must use
a unique <code>CallerReference</code> string every time you submit a
<code>create_reusable_delegation_set</code> request.
<code>CallerReference</code> can be any unique string, for example a
date/time stamp.</p></td>
</tr>
<tr class="even">
<td><code
id="route53_create_reusable_delegation_set_:_HostedZoneId">HostedZoneId</code></td>
<td><p>If you want to mark the delegation set for an existing hosted
zone as reusable, the ID for that hosted zone.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DelegationSet = list(
        Id = "string",
        CallerReference = "string",
        NameServers = list(
          "string"
        )
      ),
      Location = "string"
    )

### Request syntax

    svc$create_reusable_delegation_set(
      CallerReference = "string",
      HostedZoneId = "string"
    )
