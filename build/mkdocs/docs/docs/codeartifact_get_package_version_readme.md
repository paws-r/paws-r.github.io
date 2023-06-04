<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codeartifact_get_package_version_readme</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the readme file or descriptive text for a package version

### Description

Gets the readme file or descriptive text for a package version.

The returned text might contain formatting. For example, it might
contain formatting for Markdown or reStructuredText.

### Usage

    codeartifact_get_package_version_readme(domain, domainOwner, repository,
      format, namespace, package, packageVersion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codeartifact_get_package_version_readme_:_domain">domain</code></td>
<td><p>[required] The name of the domain that contains the repository
that contains the package version with the requested readme
file.</p></td>
</tr>
<tr class="even">
<td><code
id="codeartifact_get_package_version_readme_:_domainOwner">domainOwner</code></td>
<td><p>The 12-digit account number of the Amazon Web Services account
that owns the domain. It does not include dashes or spaces.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeartifact_get_package_version_readme_:_repository">repository</code></td>
<td><p>[required] The repository that contains the package with the
requested readme file.</p></td>
</tr>
<tr class="even">
<td><code
id="codeartifact_get_package_version_readme_:_format">format</code></td>
<td><p>[required] A format that specifies the type of the package
version with the requested readme file.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeartifact_get_package_version_readme_:_namespace">namespace</code></td>
<td><p>The namespace of the package version with the requested readme
file. The package version component that specifies its namespace depends
on its type. For example:</p>
<ul>
<li><p>The namespace of an npm package version is its
<code>scope</code>.</p></li>
<li><p>Python and NuGet package versions do not contain a corresponding
component, package versions of those formats do not have a
namespace.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="codeartifact_get_package_version_readme_:_package">package</code></td>
<td><p>[required] The name of the package version that contains the
requested readme file.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeartifact_get_package_version_readme_:_packageVersion">packageVersion</code></td>
<td><p>[required] A string that contains the package version (for
example, <code style="white-space: pre;">⁠3.5.2⁠</code>).</p></td>
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
      readme = "string"
    )

### Request syntax

    svc$get_package_version_readme(
      domain = "string",
      domainOwner = "string",
      repository = "string",
      format = "npm"|"pypi"|"maven"|"nuget"|"generic",
      namespace = "string",
      package = "string",
      packageVersion = "string"
    )
