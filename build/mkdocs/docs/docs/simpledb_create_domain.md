<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>simpledb_create_domain</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The CreateDomain operation creates a new domain

### Description

The `create_domain` operation creates a new domain. The domain name
should be unique among the domains associated with the Access Key ID
provided in the request. The `create_domain` operation may take 10 or
more seconds to complete.

CreateDomain is an idempotent operation; running it multiple times using
the same domain name will not result in an error response.

The client can create up to 100 domains per account.

If the client requires additional domains, go to
http://aws.amazon.com/contact-us/simpledb-limit-request/.

### Usage

    simpledb_create_domain(DomainName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="simpledb_create_domain_:_DomainName">DomainName</code></td>
<td><p>[required] The name of the domain to create. The name can range
between 3 and 255 characters and can contain the following characters:
a-z, A-Z, 0-9, '_', '-', and '.'.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_domain(
      DomainName = "string"
    )
