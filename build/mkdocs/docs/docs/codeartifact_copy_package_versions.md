<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codeartifact_copy_package_versions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Copies package versions from one repository to another repository in the same domain

### Description

Copies package versions from one repository to another repository in the
same domain.

You must specify `versions` or `versionRevisions`. You cannot specify
both.

### Usage

    codeartifact_copy_package_versions(domain, domainOwner,
      sourceRepository, destinationRepository, format, namespace, package,
      versions, versionRevisions, allowOverwrite, includeFromUpstream)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codeartifact_copy_package_versions_:_domain">domain</code></td>
<td><p>[required] The name of the domain that contains the source and
destination repositories.</p></td>
</tr>
<tr class="even">
<td><code
id="codeartifact_copy_package_versions_:_domainOwner">domainOwner</code></td>
<td><p>The 12-digit account number of the Amazon Web Services account
that owns the domain. It does not include dashes or spaces.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeartifact_copy_package_versions_:_sourceRepository">sourceRepository</code></td>
<td><p>[required] The name of the repository that contains the package
versions to be copied.</p></td>
</tr>
<tr class="even">
<td><code
id="codeartifact_copy_package_versions_:_destinationRepository">destinationRepository</code></td>
<td><p>[required] The name of the repository into which package versions
are copied.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeartifact_copy_package_versions_:_format">format</code></td>
<td><p>[required] The format of the package versions to be
copied.</p></td>
</tr>
<tr class="even">
<td><code
id="codeartifact_copy_package_versions_:_namespace">namespace</code></td>
<td><p>The namespace of the package versions to be copied. The package
version component that specifies its namespace depends on its type. For
example:</p>
<ul>
<li><p>The namespace of a Maven package version is its
<code>groupId</code>. The namespace is required when copying Maven
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
<tr class="odd">
<td><code
id="codeartifact_copy_package_versions_:_package">package</code></td>
<td><p>[required] The name of the package that contains the versions to
be copied.</p></td>
</tr>
<tr class="even">
<td><code
id="codeartifact_copy_package_versions_:_versions">versions</code></td>
<td><p>The versions of the package to be copied.</p>
<p>You must specify <code>versions</code> or
<code>versionRevisions</code>. You cannot specify both.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeartifact_copy_package_versions_:_versionRevisions">versionRevisions</code></td>
<td><p>A list of key-value pairs. The keys are package versions and the
values are package version revisions. A <code>CopyPackageVersion</code>
operation succeeds if the specified versions in the source repository
match the specified package version revision.</p>
<p>You must specify <code>versions</code> or
<code>versionRevisions</code>. You cannot specify both.</p></td>
</tr>
<tr class="even">
<td><code
id="codeartifact_copy_package_versions_:_allowOverwrite">allowOverwrite</code></td>
<td><p>Set to true to overwrite a package version that already exists in
the destination repository. If set to false and the package version
already exists in the destination repository, the package version is
returned in the <code>failedVersions</code> field of the response with
an <code>ALREADY_EXISTS</code> error code.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeartifact_copy_package_versions_:_includeFromUpstream">includeFromUpstream</code></td>
<td><p>Set to true to copy packages from repositories that are upstream
from the source repository to the destination repository. The default
setting is false. For more information, see <a
href="https://docs.aws.amazon.com/codeartifact/latest/ug/repos-upstream.html">Working
with upstream repositories</a>.</p></td>
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

    svc$copy_package_versions(
      domain = "string",
      domainOwner = "string",
      sourceRepository = "string",
      destinationRepository = "string",
      format = "npm"|"pypi"|"maven"|"nuget"|"generic",
      namespace = "string",
      package = "string",
      versions = list(
        "string"
      ),
      versionRevisions = list(
        "string"
      ),
      allowOverwrite = TRUE|FALSE,
      includeFromUpstream = TRUE|FALSE
    )
