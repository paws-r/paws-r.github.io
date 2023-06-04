<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codeartifact_publish_package_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new package version containing one or more assets (or files)

### Description

Creates a new package version containing one or more assets (or files).

The `unfinished` flag can be used to keep the package version in the
`Unfinished` state until all of its assets have been uploaded (see
[Package version
status](https://docs.aws.amazon.com/codeartifact/latest/ug/packages-overview.html#package-version-status.html#package-version-status)
in the *CodeArtifact user guide*). To set the package version’s status
to `Published`, omit the `unfinished` flag when uploading the final
asset, or set the status using
[UpdatePackageVersionStatus](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_UpdatePackageVersionsStatus.html).
Once a package version’s status is set to `Published`, it cannot change
back to `Unfinished`.

Only generic packages can be published using this API. For more
information, see [Using generic
packages](https://docs.aws.amazon.com/codeartifact/latest/ug/using-generic.html)
in the *CodeArtifact User Guide*.

### Usage

    codeartifact_publish_package_version(domain, domainOwner, repository,
      format, namespace, package, packageVersion, assetContent, assetName,
      assetSHA256, unfinished)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codeartifact_publish_package_version_:_domain">domain</code></td>
<td><p>[required] The name of the domain that contains the repository
that contains the package version to publish.</p></td>
</tr>
<tr class="even">
<td><code
id="codeartifact_publish_package_version_:_domainOwner">domainOwner</code></td>
<td><p>The 12-digit account number of the AWS account that owns the
domain. It does not include dashes or spaces.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeartifact_publish_package_version_:_repository">repository</code></td>
<td><p>[required] The name of the repository that the package version
will be published to.</p></td>
</tr>
<tr class="even">
<td><code
id="codeartifact_publish_package_version_:_format">format</code></td>
<td><p>[required] A format that specifies the type of the package
version with the requested asset file.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeartifact_publish_package_version_:_namespace">namespace</code></td>
<td><p>The namespace of the package version to publish.</p></td>
</tr>
<tr class="even">
<td><code
id="codeartifact_publish_package_version_:_package">package</code></td>
<td><p>[required] The name of the package version to publish.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeartifact_publish_package_version_:_packageVersion">packageVersion</code></td>
<td><p>[required] The package version to publish (for example, <code
style="white-space: pre;">⁠3.5.2⁠</code>).</p></td>
</tr>
<tr class="even">
<td><code
id="codeartifact_publish_package_version_:_assetContent">assetContent</code></td>
<td><p>[required] The content of the asset to publish.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeartifact_publish_package_version_:_assetName">assetName</code></td>
<td><p>[required] The name of the asset to publish. Asset names can
include Unicode letters and numbers, and the following special
characters: <code
style="white-space: pre;">⁠~ ! @ ^ &amp; ( ) - ` _ + [ ] { } ; , . `⁠</code></p>
<p>[ ]: R:%20</p></td>
</tr>
<tr class="even">
<td><code
id="codeartifact_publish_package_version_:_assetSHA256">assetSHA256</code></td>
<td><p>[required] The SHA256 hash of the <code>assetContent</code> to
publish. This value must be calculated by the caller and provided with
the request (see <a
href="https://docs.aws.amazon.com/codeartifact/latest/ug/using-generic.html#publishing-generic-packages">Publishing
a generic package</a> in the <em>CodeArtifact User Guide</em>).</p>
<p>This value is used as an integrity check to verify that the
<code>assetContent</code> has not changed after it was originally
sent.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeartifact_publish_package_version_:_unfinished">unfinished</code></td>
<td><p>Specifies whether the package version should remain in the
<code>unfinished</code> state. If omitted, the package version status
will be set to <code>Published</code> (see <a
href="https://docs.aws.amazon.com/codeartifact/latest/ug/packages-overview.html#package-version-status">Package
version status</a> in the <em>CodeArtifact User Guide</em>).</p>
<p>Valid values: <code>unfinished</code></p></td>
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
      status = "Published"|"Unfinished"|"Unlisted"|"Archived"|"Disposed"|"Deleted",
      asset = list(
        name = "string",
        size = 123,
        hashes = list(
          "string"
        )
      )
    )

### Request syntax

    svc$publish_package_version(
      domain = "string",
      domainOwner = "string",
      repository = "string",
      format = "npm"|"pypi"|"maven"|"nuget"|"generic",
      namespace = "string",
      package = "string",
      packageVersion = "string",
      assetContent = raw,
      assetName = "string",
      assetSHA256 = "string",
      unfinished = TRUE|FALSE
    )
