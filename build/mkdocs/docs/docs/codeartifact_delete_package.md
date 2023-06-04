<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codeartifact_delete_package</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a package and all associated package versions

### Description

Deletes a package and all associated package versions. A deleted package
cannot be restored. To delete one or more package versions, use the
`delete_package_versions` API.

### Usage

    codeartifact_delete_package(domain, domainOwner, repository, format,
      namespace, package)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="codeartifact_delete_package_:_domain">domain</code></td>
<td><p>[required] The name of the domain that contains the package to
delete.</p></td>
</tr>
<tr class="even">
<td><code
id="codeartifact_delete_package_:_domainOwner">domainOwner</code></td>
<td><p>The 12-digit account number of the Amazon Web Services account
that owns the domain. It does not include dashes or spaces.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeartifact_delete_package_:_repository">repository</code></td>
<td><p>[required] The name of the repository that contains the package
to delete.</p></td>
</tr>
<tr class="even">
<td><code id="codeartifact_delete_package_:_format">format</code></td>
<td><p>[required] The format of the requested package to
delete.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeartifact_delete_package_:_namespace">namespace</code></td>
<td><p>The namespace of the package to delete. The package component
that specifies its namespace depends on its type. For example:</p>
<ul>
<li><p>The namespace of a Maven package is its <code>groupId</code>. The
namespace is required when deleting Maven package versions.</p></li>
<li><p>The namespace of an npm package is its
<code>scope</code>.</p></li>
<li><p>Python and NuGet packages do not contain corresponding
components, packages of those formats do not have a namespace.</p></li>
<li><p>The namespace of a generic package is its
<code>namespace</code>.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code id="codeartifact_delete_package_:_package">package</code></td>
<td><p>[required] The name of the package to delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      deletedPackage = list(
        format = "npm"|"pypi"|"maven"|"nuget"|"generic",
        namespace = "string",
        package = "string",
        originConfiguration = list(
          restrictions = list(
            publish = "ALLOW"|"BLOCK",
            upstream = "ALLOW"|"BLOCK"
          )
        )
      )
    )

### Request syntax

    svc$delete_package(
      domain = "string",
      domainOwner = "string",
      repository = "string",
      format = "npm"|"pypi"|"maven"|"nuget"|"generic",
      namespace = "string",
      package = "string"
    )
