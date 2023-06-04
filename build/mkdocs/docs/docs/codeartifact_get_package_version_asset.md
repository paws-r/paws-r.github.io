<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codeartifact_get_package_version_asset</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns an asset (or file) that is in a package

### Description

Returns an asset (or file) that is in a package. For example, for a
Maven package version, use `get_package_version_asset` to download a
`JAR` file, a `POM` file, or any other assets in the package version.

### Usage

    codeartifact_get_package_version_asset(domain, domainOwner, repository,
      format, namespace, package, packageVersion, asset,
      packageVersionRevision)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codeartifact_get_package_version_asset_:_domain">domain</code></td>
<td><p>[required] The name of the domain that contains the repository
that contains the package version with the requested asset.</p></td>
</tr>
<tr class="even">
<td><code
id="codeartifact_get_package_version_asset_:_domainOwner">domainOwner</code></td>
<td><p>The 12-digit account number of the Amazon Web Services account
that owns the domain. It does not include dashes or spaces.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeartifact_get_package_version_asset_:_repository">repository</code></td>
<td><p>[required] The repository that contains the package version with
the requested asset.</p></td>
</tr>
<tr class="even">
<td><code
id="codeartifact_get_package_version_asset_:_format">format</code></td>
<td><p>[required] A format that specifies the type of the package
version with the requested asset file.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeartifact_get_package_version_asset_:_namespace">namespace</code></td>
<td><p>The namespace of the package version with the requested asset
file. The package version component that specifies its namespace depends
on its type. For example:</p>
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
id="codeartifact_get_package_version_asset_:_package">package</code></td>
<td><p>[required] The name of the package that contains the requested
asset.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeartifact_get_package_version_asset_:_packageVersion">packageVersion</code></td>
<td><p>[required] A string that contains the package version (for
example, <code style="white-space: pre;">⁠3.5.2⁠</code>).</p></td>
</tr>
<tr class="even">
<td><code
id="codeartifact_get_package_version_asset_:_asset">asset</code></td>
<td><p>[required] The name of the requested asset.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeartifact_get_package_version_asset_:_packageVersionRevision">packageVersionRevision</code></td>
<td><p>The name of the package version revision that contains the
requested asset.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      asset = raw,
      assetName = "string",
      packageVersion = "string",
      packageVersionRevision = "string"
    )

### Request syntax

    svc$get_package_version_asset(
      domain = "string",
      domainOwner = "string",
      repository = "string",
      format = "npm"|"pypi"|"maven"|"nuget"|"generic",
      namespace = "string",
      package = "string",
      packageVersion = "string",
      asset = "string",
      packageVersionRevision = "string"
    )
