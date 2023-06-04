<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codeartifact_dispose_package_versions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the assets in package versions and sets the package versions' status to Disposed

### Description

Deletes the assets in package versions and sets the package versions'
status to `Disposed`. A disposed package version cannot be restored in
your repository because its assets are deleted.

To view all disposed package versions in a repository, use
`list_package_versions` and set the
[status](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_ListPackageVersions.html#API_ListPackageVersions_RequestSyntax)
parameter to `Disposed`.

To view information about a disposed package version, use
`describe_package_version`.

### Usage

    codeartifact_dispose_package_versions(domain, domainOwner, repository,
      format, namespace, package, versions, versionRevisions, expectedStatus)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codeartifact_dispose_package_versions_:_domain">domain</code></td>
<td><p>[required] The name of the domain that contains the repository
you want to dispose.</p></td>
</tr>
<tr class="even">
<td><code
id="codeartifact_dispose_package_versions_:_domainOwner">domainOwner</code></td>
<td><p>The 12-digit account number of the Amazon Web Services account
that owns the domain. It does not include dashes or spaces.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeartifact_dispose_package_versions_:_repository">repository</code></td>
<td><p>[required] The name of the repository that contains the package
versions you want to dispose.</p></td>
</tr>
<tr class="even">
<td><code
id="codeartifact_dispose_package_versions_:_format">format</code></td>
<td><p>[required] A format that specifies the type of package versions
you want to dispose.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeartifact_dispose_package_versions_:_namespace">namespace</code></td>
<td><p>The namespace of the package versions to be disposed. The package
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
id="codeartifact_dispose_package_versions_:_package">package</code></td>
<td><p>[required] The name of the package with the versions you want to
dispose.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeartifact_dispose_package_versions_:_versions">versions</code></td>
<td><p>[required] The versions of the package you want to
dispose.</p></td>
</tr>
<tr class="even">
<td><code
id="codeartifact_dispose_package_versions_:_versionRevisions">versionRevisions</code></td>
<td><p>The revisions of the package versions you want to
dispose.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeartifact_dispose_package_versions_:_expectedStatus">expectedStatus</code></td>
<td><p>The expected status of the package version to dispose.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      successfulVersions = list(
        list(
          revision = "string",
          status = "Published"|"Unfinished"|"Unlisted"|"Archived"|"Disposed"|"Deleted"
        )
      ),
      failedVersions = list(
        list(
          errorCode = "ALREADY_EXISTS"|"MISMATCHED_REVISION"|"MISMATCHED_STATUS"|"NOT_ALLOWED"|"NOT_FOUND"|"SKIPPED",
          errorMessage = "string"
        )
      )
    )

### Request syntax

    svc$dispose_package_versions(
      domain = "string",
      domainOwner = "string",
      repository = "string",
      format = "npm"|"pypi"|"maven"|"nuget"|"generic",
      namespace = "string",
      package = "string",
      versions = list(
        "string"
      ),
      versionRevisions = list(
        "string"
      ),
      expectedStatus = "Published"|"Unfinished"|"Unlisted"|"Archived"|"Disposed"|"Deleted"
    )
