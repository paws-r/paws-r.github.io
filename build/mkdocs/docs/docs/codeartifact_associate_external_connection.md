<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codeartifact_associate_external_connection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds an existing external connection to a repository

### Description

Adds an existing external connection to a repository. One external
connection is allowed per repository.

A repository can have one or more upstream repositories, or an external
connection.

### Usage

    codeartifact_associate_external_connection(domain, domainOwner,
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
id="codeartifact_associate_external_connection_:_domain">domain</code></td>
<td><p>[required] The name of the domain that contains the
repository.</p></td>
</tr>
<tr class="even">
<td><code
id="codeartifact_associate_external_connection_:_domainOwner">domainOwner</code></td>
<td><p>The 12-digit account number of the Amazon Web Services account
that owns the domain. It does not include dashes or spaces.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeartifact_associate_external_connection_:_repository">repository</code></td>
<td><p>[required] The name of the repository to which the external
connection is added.</p></td>
</tr>
<tr class="even">
<td><code
id="codeartifact_associate_external_connection_:_externalConnection">externalConnection</code></td>
<td><p>[required] The name of the external connection to add to the
repository. The following values are supported:</p>
<ul>
<li><p><code>public:npmjs</code> - for the npm public
repository.</p></li>
<li><p><code>public:nuget-org</code> - for the NuGet Gallery.</p></li>
<li><p><code>public:pypi</code> - for the Python Package Index.</p></li>
<li><p><code>public:maven-central</code> - for Maven Central.</p></li>
<li><p><code>public:maven-googleandroid</code> - for the Google Android
repository.</p></li>
<li><p><code>public:maven-gradleplugins</code> - for the Gradle plugins
repository.</p></li>
<li><p><code>public:maven-commonsware</code> - for the CommonsWare
Android repository.</p></li>
<li><p><code>public:maven-clojars</code> - for the Clojars
repository.</p></li>
</ul></td>
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

    svc$associate_external_connection(
      domain = "string",
      domainOwner = "string",
      repository = "string",
      externalConnection = "string"
    )
