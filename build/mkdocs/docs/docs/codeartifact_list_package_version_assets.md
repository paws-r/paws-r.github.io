<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codeartifact_list_package_version_assets</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of AssetSummary objects for assets in a package version

### Description

Returns a list of
[AssetSummary](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_AssetSummary.html)
objects for assets in a package version.

### Usage

    codeartifact_list_package_version_assets(domain, domainOwner,
      repository, format, namespace, package, packageVersion, maxResults,
      nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codeartifact_list_package_version_assets_:_domain">domain</code></td>
<td><p>[required] The name of the domain that contains the repository
associated with the package version assets.</p></td>
</tr>
<tr class="even">
<td><code
id="codeartifact_list_package_version_assets_:_domainOwner">domainOwner</code></td>
<td><p>The 12-digit account number of the Amazon Web Services account
that owns the domain. It does not include dashes or spaces.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeartifact_list_package_version_assets_:_repository">repository</code></td>
<td><p>[required] The name of the repository that contains the package
that contains the requested package version assets.</p></td>
</tr>
<tr class="even">
<td><code
id="codeartifact_list_package_version_assets_:_format">format</code></td>
<td><p>[required] The format of the package that contains the requested
package version assets.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeartifact_list_package_version_assets_:_namespace">namespace</code></td>
<td><p>The namespace of the package version that contains the requested
package version assets. The package version component that specifies its
namespace depends on its type. For example:</p>
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
id="codeartifact_list_package_version_assets_:_package">package</code></td>
<td><p>[required] The name of the package that contains the requested
package version assets.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeartifact_list_package_version_assets_:_packageVersion">packageVersion</code></td>
<td><p>[required] A string that contains the package version (for
example, <code style="white-space: pre;">⁠3.5.2⁠</code>).</p></td>
</tr>
<tr class="even">
<td><code
id="codeartifact_list_package_version_assets_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results to return per page.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeartifact_list_package_version_assets_:_nextToken">nextToken</code></td>
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
      assets = list(
        list(
          name = "string",
          size = 123,
          hashes = list(
            "string"
          )
        )
      )
    )

### Request syntax

    svc$list_package_version_assets(
      domain = "string",
      domainOwner = "string",
      repository = "string",
      format = "npm"|"pypi"|"maven"|"nuget"|"generic",
      namespace = "string",
      package = "string",
      packageVersion = "string",
      maxResults = 123,
      nextToken = "string"
    )
