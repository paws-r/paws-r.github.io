<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codeartifact_describe_package_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a PackageVersionDescription object that contains information about the requested package version

### Description

Returns a
[PackageVersionDescription](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageVersionDescription.html)
object that contains information about the requested package version.

### Usage

    codeartifact_describe_package_version(domain, domainOwner, repository,
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
id="codeartifact_describe_package_version_:_domain">domain</code></td>
<td><p>[required] The name of the domain that contains the repository
that contains the package version.</p></td>
</tr>
<tr class="even">
<td><code
id="codeartifact_describe_package_version_:_domainOwner">domainOwner</code></td>
<td><p>The 12-digit account number of the Amazon Web Services account
that owns the domain. It does not include dashes or spaces.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeartifact_describe_package_version_:_repository">repository</code></td>
<td><p>[required] The name of the repository that contains the package
version.</p></td>
</tr>
<tr class="even">
<td><code
id="codeartifact_describe_package_version_:_format">format</code></td>
<td><p>[required] A format that specifies the type of the requested
package version.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeartifact_describe_package_version_:_namespace">namespace</code></td>
<td><p>The namespace of the requested package version. The package
version component that specifies its namespace depends on its type. For
example:</p>
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
id="codeartifact_describe_package_version_:_package">package</code></td>
<td><p>[required] The name of the requested package version.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeartifact_describe_package_version_:_packageVersion">packageVersion</code></td>
<td><p>[required] A string that contains the package version (for
example, <code style="white-space: pre;">⁠3.5.2⁠</code>).</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      packageVersion = list(
        format = "npm"|"pypi"|"maven"|"nuget"|"generic",
        namespace = "string",
        packageName = "string",
        displayName = "string",
        version = "string",
        summary = "string",
        homePage = "string",
        sourceCodeRepository = "string",
        publishedTime = as.POSIXct(
          "2015-01-01"
        ),
        licenses = list(
          list(
            name = "string",
            url = "string"
          )
        ),
        revision = "string",
        status = "Published"|"Unfinished"|"Unlisted"|"Archived"|"Disposed"|"Deleted",
        origin = list(
          domainEntryPoint = list(
            repositoryName = "string",
            externalConnectionName = "string"
          ),
          originType = "INTERNAL"|"EXTERNAL"|"UNKNOWN"
        )
      )
    )

### Request syntax

    svc$describe_package_version(
      domain = "string",
      domainOwner = "string",
      repository = "string",
      format = "npm"|"pypi"|"maven"|"nuget"|"generic",
      namespace = "string",
      package = "string",
      packageVersion = "string"
    )
