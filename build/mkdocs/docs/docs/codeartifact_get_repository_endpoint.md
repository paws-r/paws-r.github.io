<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codeartifact_get_repository_endpoint</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the endpoint of a repository for a specific package format

### Description

Returns the endpoint of a repository for a specific package format. A
repository has one endpoint for each package format:

-   `maven`

-   `npm`

-   `nuget`

-   `pypi`

### Usage

    codeartifact_get_repository_endpoint(domain, domainOwner, repository,
      format)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codeartifact_get_repository_endpoint_:_domain">domain</code></td>
<td><p>[required] The name of the domain that contains the
repository.</p></td>
</tr>
<tr class="even">
<td><code
id="codeartifact_get_repository_endpoint_:_domainOwner">domainOwner</code></td>
<td><p>The 12-digit account number of the Amazon Web Services account
that owns the domain that contains the repository. It does not include
dashes or spaces.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeartifact_get_repository_endpoint_:_repository">repository</code></td>
<td><p>[required] The name of the repository.</p></td>
</tr>
<tr class="even">
<td><code
id="codeartifact_get_repository_endpoint_:_format">format</code></td>
<td><p>[required] Returns which endpoint of a repository to return. A
repository has one endpoint for each package format.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      repositoryEndpoint = "string"
    )

### Request syntax

    svc$get_repository_endpoint(
      domain = "string",
      domainOwner = "string",
      repository = "string",
      format = "npm"|"pypi"|"maven"|"nuget"|"generic"
    )
