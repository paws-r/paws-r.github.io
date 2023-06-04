<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicediscovery_update_private_dns_namespace</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a private DNS namespace

### Description

Updates a private DNS namespace.

### Usage

    servicediscovery_update_private_dns_namespace(Id, UpdaterRequestId,
      Namespace)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicediscovery_update_private_dns_namespace_:_Id">Id</code></td>
<td><p>[required] The ID of the namespace that you want to
update.</p></td>
</tr>
<tr class="even">
<td><code
id="servicediscovery_update_private_dns_namespace_:_UpdaterRequestId">UpdaterRequestId</code></td>
<td><p>A unique string that identifies the request and that allows
failed <code>update_private_dns_namespace</code> requests to be retried
without the risk of running the operation twice.
<code>UpdaterRequestId</code> can be any unique string (for example, a
date/timestamp).</p></td>
</tr>
<tr class="odd">
<td><code
id="servicediscovery_update_private_dns_namespace_:_Namespace">Namespace</code></td>
<td><p>[required] Updated properties for the private DNS
namespace.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      OperationId = "string"
    )

### Request syntax

    svc$update_private_dns_namespace(
      Id = "string",
      UpdaterRequestId = "string",
      Namespace = list(
        Description = "string",
        Properties = list(
          DnsProperties = list(
            SOA = list(
              TTL = 123
            )
          )
        )
      )
    )
