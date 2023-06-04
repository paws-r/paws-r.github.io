<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codeartifact_delete_package_versions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes one or more versions of a package

### Description

Deletes one or more versions of a package. A deleted package version
cannot be restored in your repository. If you want to remove a package
version from your repository and be able to restore it later, set its
status to `Archived`. Archived packages cannot be downloaded from a
repository and don't show up with list package APIs (for example,
`list_package_versions`), but you can restore them using
`update_package_versions_status`.

### Usage

    codeartifact_delete_package_versions(domain, domainOwner, repository,
      format, namespace, package, versions, expectedStatus)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codeartifact_delete_package_versions_:_domain">domain</code></td>
<td><p>[required] The name of the domain that contains the package to
delete.</p></td>
</tr>
<tr class="even">
<td><code
id="codeartifact_delete_package_versions_:_domainOwner">domainOwner</code></td>
<td><p>The 12-digit account number of the Amazon Web Services account
that owns the domain. It does not include dashes or spaces.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeartifact_delete_package_versions_:_repository">repository</code></td>
<td><p>[required] The name of the repository that contains the package
versions to delete.</p></td>
</tr>
<tr class="even">
<td><code
id="codeartifact_delete_package_versions_:_format">format</code></td>
<td><p>[required] The format of the package versions to delete.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeartifact_delete_package_versions_:_namespace">namespace</code></td>
<td><p>The namespace of the package versions to be deleted. The package
version component that specifies its namespace depends on its type. For
example:</p>
<ul>
<li><p>The namespace of a Maven package version is its
<code>groupId</code>. The namespace is required when deleting Maven
package versions.</p></li>
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
id="codeartifact_delete_package_versions_:_package">package</code></td>
<td><p>[required] The name of the package with the versions to
delete.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeartifact_delete_package_versions_:_versions">versions</code></td>
<td><p>[required] An array of strings that specify the versions of the
package to delete.</p></td>
</tr>
<tr class="even">
<td><code
id="codeartifact_delete_package_versions_:_expectedStatus">expectedStatus</code></td>
<td><p>The expected status of the package version to delete.</p></td>
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

    svc$delete_package_versions(
      domain = "string",
      domainOwner = "string",
      repository = "string",
      format = "npm"|"pypi"|"maven"|"nuget"|"generic",
      namespace = "string",
      package = "string",
      versions = list(
        "string"
      ),
      expectedStatus = "Published"|"Unfinished"|"Unlisted"|"Archived"|"Disposed"|"Deleted"
    )
