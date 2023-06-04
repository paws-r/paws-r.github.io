<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codeartifact_disassociate_external_connection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes an existing external connection from a repository

### Description

Removes an existing external connection from a repository.

### Usage

    codeartifact_disassociate_external_connection(domain, domainOwner,
      repository, externalConnection)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codeartifact_disassociate_external_connection_:_domain">domain</code></td>
<td><p>[required] The name of the domain that contains the repository
from which to remove the external repository.</p></td>
</tr>
<tr class="even">
<td><code
id="codeartifact_disassociate_external_connection_:_domainOwner">domainOwner</code></td>
<td><p>The 12-digit account number of the Amazon Web Services account
that owns the domain. It does not include dashes or spaces.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeartifact_disassociate_external_connection_:_repository">repository</code></td>
<td><p>[required] The name of the repository from which the external
connection will be removed.</p></td>
</tr>
<tr class="even">
<td><code
id="codeartifact_disassociate_external_connection_:_externalConnection">externalConnection</code></td>
<td><p>[required] The name of the external connection to be removed from
the repository.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      repository = list(
        name = "string",
        administratorAccount = "string",
        domainName = "string",
        domainOwner = "string",
        arn = "string",
        description = "string",
        upstreams = list(
          list(
            repositoryName = "string"
          )
        ),
        externalConnections = list(
          list(
            externalConnectionName = "string",
            packageFormat = "npm"|"pypi"|"maven"|"nuget"|"generic",
            status = "Available"
          )
        ),
        createdTime = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$disassociate_external_connection(
      domain = "string",
      domainOwner = "string",
      repository = "string",
      externalConnection = "string"
    )
