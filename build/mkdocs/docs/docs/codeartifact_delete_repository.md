<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codeartifact_delete_repository</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a repository

### Description

Deletes a repository.

### Usage

    codeartifact_delete_repository(domain, domainOwner, repository)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codeartifact_delete_repository_:_domain">domain</code></td>
<td><p>[required] The name of the domain that contains the repository to
delete.</p></td>
</tr>
<tr class="even">
<td><code
id="codeartifact_delete_repository_:_domainOwner">domainOwner</code></td>
<td><p>The 12-digit account number of the Amazon Web Services account
that owns the domain. It does not include dashes or spaces.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeartifact_delete_repository_:_repository">repository</code></td>
<td><p>[required] The name of the repository to delete.</p></td>
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

    svc$delete_repository(
      domain = "string",
      domainOwner = "string",
      repository = "string"
    )
