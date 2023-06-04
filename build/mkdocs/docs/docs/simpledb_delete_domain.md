<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>simpledb_delete_domain</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The DeleteDomain operation deletes a domain

### Description

The `delete_domain` operation deletes a domain. Any items (and their
attributes) in the domain are deleted as well. The `delete_domain`
operation might take 10 or more seconds to complete.

Running `delete_domain` on a domain that does not exist or running the
function multiple times using the same domain name will not result in an
error response.

### Usage

    simpledb_delete_domain(DomainName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="simpledb_delete_domain_:_DomainName">DomainName</code></td>
<td><p>[required] The name of the domain to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_domain(
      DomainName = "string"
    )
