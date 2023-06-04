<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codeartifact_update_package_versions_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the status of one or more versions of a package

### Description

Updates the status of one or more versions of a package. Using
`update_package_versions_status`, you can update the status of package
versions to `Archived`, `Published`, or `Unlisted`. To set the status of
a package version to `Disposed`, use `dispose_package_versions`.

### Usage

    codeartifact_update_package_versions_status(domain, domainOwner,
      repository, format, namespace, package, versions, versionRevisions,
      expectedStatus, targetStatus)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codeartifact_update_package_versions_status_:_domain">domain</code></td>
<td><p>[required] The name of the domain that contains the repository
that contains the package versions with a status to be updated.</p></td>
</tr>
<tr class="even">
<td><code
id="codeartifact_update_package_versions_status_:_domainOwner">domainOwner</code></td>
<td><p>The 12-digit account number of the Amazon Web Services account
that owns the domain. It does not include dashes or spaces.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeartifact_update_package_versions_status_:_repository">repository</code></td>
<td><p>[required] The repository that contains the package versions with
the status you want to update.</p></td>
</tr>
<tr class="even">
<td><code
id="codeartifact_update_package_versions_status_:_format">format</code></td>
<td><p>[required] A format that specifies the type of the package with
the statuses to update.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeartifact_update_package_versions_status_:_namespace">namespace</code></td>
<td><p>The namespace of the package version to be updated. The package
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
id="codeartifact_update_package_versions_status_:_package">package</code></td>
<td><p>[required] The name of the package with the version statuses to
update.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeartifact_update_package_versions_status_:_versions">versions</code></td>
<td><p>[required] An array of strings that specify the versions of the
package with the statuses to update.</p></td>
</tr>
<tr class="even">
<td><code
id="codeartifact_update_package_versions_status_:_versionRevisions">versionRevisions</code></td>
<td><p>A map of package versions and package version revisions. The map
<code>key</code> is the package version (for example, <code
style="white-space: pre;">⁠3.5.2⁠</code>), and the map <code>value</code>
is the package version revision.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeartifact_update_package_versions_status_:_expectedStatus">expectedStatus</code></td>
<td><p>The package version’s expected status before it is updated. If
<code>expectedStatus</code> is provided, the package version's status is
updated only if its status at the time
<code>update_package_versions_status</code> is called matches
<code>expectedStatus</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="codeartifact_update_package_versions_status_:_targetStatus">targetStatus</code></td>
<td><p>[required] The status you want to change the package version
status to.</p></td>
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

    svc$update_package_versions_status(
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
      expectedStatus = "Published"|"Unfinished"|"Unlisted"|"Archived"|"Disposed"|"Deleted",
      targetStatus = "Published"|"Unfinished"|"Unlisted"|"Archived"|"Disposed"|"Deleted"
    )
