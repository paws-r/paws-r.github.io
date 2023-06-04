<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codeartifact_update_repository</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Update the properties of a repository

### Description

Update the properties of a repository.

### Usage

    codeartifact_update_repository(domain, domainOwner, repository,
      description, upstreams)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codeartifact_update_repository_:_domain">domain</code></td>
<td><p>[required] The name of the domain associated with the repository
to update.</p></td>
</tr>
<tr class="even">
<td><code
id="codeartifact_update_repository_:_domainOwner">domainOwner</code></td>
<td><p>The 12-digit account number of the Amazon Web Services account
that owns the domain. It does not include dashes or spaces.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeartifact_update_repository_:_repository">repository</code></td>
<td><p>[required] The name of the repository to update.</p></td>
</tr>
<tr class="even">
<td><code
id="codeartifact_update_repository_:_description">description</code></td>
<td><p>An updated repository description.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeartifact_update_repository_:_upstreams">upstreams</code></td>
<td><p>A list of upstream repositories to associate with the repository.
The order of the upstream repositories in the list determines their
priority order when CodeArtifact looks for a requested package version.
For more information, see <a
href="https://docs.aws.amazon.com/codeartifact/latest/ug/repos-upstream.html">Working
with upstream repositories</a>.</p></td>
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

    svc$update_repository(
      domain = "string",
      domainOwner = "string",
      repository = "string",
      description = "string",
      upstreams = list(
        list(
          repositoryName = "string"
        )
      )
    )
