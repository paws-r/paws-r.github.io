<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codeartifact_list_package_version_dependencies</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the direct dependencies for a package version

### Description

Returns the direct dependencies for a package version. The dependencies
are returned as
[PackageDependency](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageDependency.html)
objects. CodeArtifact extracts the dependencies for a package version
from the metadata file for the package format (for example, the
`package.json` file for npm packages and the `pom.xml` file for Maven).
Any package version dependencies that are not listed in the
configuration file are not returned.

### Usage

    codeartifact_list_package_version_dependencies(domain, domainOwner,
      repository, format, namespace, package, packageVersion, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codeartifact_list_package_version_dependencies_:_domain">domain</code></td>
<td><p>[required] The name of the domain that contains the repository
that contains the requested package version dependencies.</p></td>
</tr>
<tr class="even">
<td><code
id="codeartifact_list_package_version_dependencies_:_domainOwner">domainOwner</code></td>
<td><p>The 12-digit account number of the Amazon Web Services account
that owns the domain. It does not include dashes or spaces.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeartifact_list_package_version_dependencies_:_repository">repository</code></td>
<td><p>[required] The name of the repository that contains the requested
package version.</p></td>
</tr>
<tr class="even">
<td><code
id="codeartifact_list_package_version_dependencies_:_format">format</code></td>
<td><p>[required] The format of the package with the requested
dependencies.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeartifact_list_package_version_dependencies_:_namespace">namespace</code></td>
<td><p>The namespace of the package version with the requested
dependencies. The package version component that specifies its namespace
depends on its type. For example:</p>
<ul>
<li><p>The namespace of a Maven package version is its
<code>groupId</code>.</p></li>
<li><p>The namespace of an npm package version is its
<code>scope</code>.</p></li>
<li><p>Python and NuGet package versions do not contain a corresponding
component, package versions of those formats do not have a
namespace.</p></li>
<li><p>The namespace of a generic package is its
<code>namespace</code>.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="codeartifact_list_package_version_dependencies_:_package">package</code></td>
<td><p>[required] The name of the package versions' package.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeartifact_list_package_version_dependencies_:_packageVersion">packageVersion</code></td>
<td><p>[required] A string that contains the package version (for
example, <code style="white-space: pre;">⁠3.5.2⁠</code>).</p></td>
</tr>
<tr class="even">
<td><code
id="codeartifact_list_package_version_dependencies_:_nextToken">nextToken</code></td>
<td><p>The token for the next set of results. Use the value returned in
the previous response in the next request to retrieve the next set of
results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      format = "npm"|"pypi"|"maven"|"nuget"|"generic",
      namespace = "string",
      package = "string",
      version = "string",
      versionRevision = "string",
      nextToken = "string",
      dependencies = list(
        list(
          namespace = "string",
          package = "string",
          dependencyType = "string",
          versionRequirement = "string"
        )
      )
    )

### Request syntax

    svc$list_package_version_dependencies(
      domain = "string",
      domainOwner = "string",
      repository = "string",
      format = "npm"|"pypi"|"maven"|"nuget"|"generic",
      namespace = "string",
      package = "string",
      packageVersion = "string",
      nextToken = "string"
    )
