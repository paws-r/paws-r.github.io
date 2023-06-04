<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codeartifact_put_package_origin_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sets the package origin configuration for a package

### Description

Sets the package origin configuration for a package.

The package origin configuration determines how new versions of a
package can be added to a repository. You can allow or block direct
publishing of new package versions, or ingestion and retaining of new
package versions from an external connection or upstream source. For
more information about package origin controls and configuration, see
[Editing package origin
controls](https://docs.aws.amazon.com/codeartifact/latest/ug/package-origin-controls.html)
in the *CodeArtifact User Guide*.

`put_package_origin_configuration` can be called on a package that
doesn't yet exist in the repository. When called on a package that does
not exist, a package is created in the repository with no versions and
the requested restrictions are set on the package. This can be used to
preemptively block ingesting or retaining any versions from external
connections or upstream repositories, or to block publishing any
versions of the package into the repository before connecting any
package managers or publishers to the repository.

### Usage

    codeartifact_put_package_origin_configuration(domain, domainOwner,
      repository, format, namespace, package, restrictions)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codeartifact_put_package_origin_configuration_:_domain">domain</code></td>
<td><p>[required] The name of the domain that contains the repository
that contains the package.</p></td>
</tr>
<tr class="even">
<td><code
id="codeartifact_put_package_origin_configuration_:_domainOwner">domainOwner</code></td>
<td><p>The 12-digit account number of the Amazon Web Services account
that owns the domain. It does not include dashes or spaces.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeartifact_put_package_origin_configuration_:_repository">repository</code></td>
<td><p>[required] The name of the repository that contains the
package.</p></td>
</tr>
<tr class="even">
<td><code
id="codeartifact_put_package_origin_configuration_:_format">format</code></td>
<td><p>[required] A format that specifies the type of the package to be
updated.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeartifact_put_package_origin_configuration_:_namespace">namespace</code></td>
<td><p>The namespace of the package to be updated. The package component
that specifies its namespace depends on its type. For example:</p>
<ul>
<li><p>The namespace of a Maven package is its
<code>groupId</code>.</p></li>
<li><p>The namespace of an npm package is its
<code>scope</code>.</p></li>
<li><p>Python and NuGet packages do not contain a corresponding
component, packages of those formats do not have a namespace.</p></li>
<li><p>The namespace of a generic package is its
<code>namespace</code>.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="codeartifact_put_package_origin_configuration_:_package">package</code></td>
<td><p>[required] The name of the package to be updated.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeartifact_put_package_origin_configuration_:_restrictions">restrictions</code></td>
<td><p>[required] A <a
href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageOriginRestrictions.html">PackageOriginRestrictions</a>
object that contains information about the <code>upstream</code> and
<code>publish</code> package origin restrictions. The
<code>upstream</code> restriction determines if new package versions can
be ingested or retained from external connections or upstream
repositories. The <code>publish</code> restriction determines if new
package versions can be published directly to the repository.</p>
<p>You must include both the desired <code>upstream</code> and
<code>publish</code> restrictions.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      originConfiguration = list(
        restrictions = list(
          publish = "ALLOW"|"BLOCK",
          upstream = "ALLOW"|"BLOCK"
        )
      )
    )

### Request syntax

    svc$put_package_origin_configuration(
      domain = "string",
      domainOwner = "string",
      repository = "string",
      format = "npm"|"pypi"|"maven"|"nuget"|"generic",
      namespace = "string",
      package = "string",
      restrictions = list(
        publish = "ALLOW"|"BLOCK",
        upstream = "ALLOW"|"BLOCK"
      )
    )
