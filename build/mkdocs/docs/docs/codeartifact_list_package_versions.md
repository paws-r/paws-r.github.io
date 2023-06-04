<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codeartifact_list_package_versions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of PackageVersionSummary objects for package versions in a repository that match the request parameters

### Description

Returns a list of
[PackageVersionSummary](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageVersionSummary.html)
objects for package versions in a repository that match the request
parameters. Package versions of all statuses will be returned by default
when calling `list-package-versions` with no `--status` parameter.

### Usage

    codeartifact_list_package_versions(domain, domainOwner, repository,
      format, namespace, package, status, sortBy, maxResults, nextToken,
      originType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codeartifact_list_package_versions_:_domain">domain</code></td>
<td><p>[required] The name of the domain that contains the repository
that contains the requested package versions.</p></td>
</tr>
<tr class="even">
<td><code
id="codeartifact_list_package_versions_:_domainOwner">domainOwner</code></td>
<td><p>The 12-digit account number of the Amazon Web Services account
that owns the domain. It does not include dashes or spaces.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeartifact_list_package_versions_:_repository">repository</code></td>
<td><p>[required] The name of the repository that contains the requested
package versions.</p></td>
</tr>
<tr class="even">
<td><code
id="codeartifact_list_package_versions_:_format">format</code></td>
<td><p>[required] The format of the package versions you want to
list.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeartifact_list_package_versions_:_namespace">namespace</code></td>
<td><p>The namespace of the package that contains the requested package
versions. The package component that specifies its namespace depends on
its type. For example:</p>
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
id="codeartifact_list_package_versions_:_package">package</code></td>
<td><p>[required] The name of the package for which you want to request
package versions.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeartifact_list_package_versions_:_status">status</code></td>
<td><p>A string that filters the requested package versions by
status.</p></td>
</tr>
<tr class="even">
<td><code
id="codeartifact_list_package_versions_:_sortBy">sortBy</code></td>
<td><p>How to sort the requested list of package versions.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeartifact_list_package_versions_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results to return per page.</p></td>
</tr>
<tr class="even">
<td><code
id="codeartifact_list_package_versions_:_nextToken">nextToken</code></td>
<td><p>The token for the next set of results. Use the value returned in
the previous response in the next request to retrieve the next set of
results.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeartifact_list_package_versions_:_originType">originType</code></td>
<td><p>The <code>originType</code> used to filter package versions. Only
package versions with the provided <code>originType</code> will be
returned.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      defaultDisplayVersion = "string",
      format = "npm"|"pypi"|"maven"|"nuget"|"generic",
      namespace = "string",
      package = "string",
      versions = list(
        list(
          version = "string",
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
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_package_versions(
      domain = "string",
      domainOwner = "string",
      repository = "string",
      format = "npm"|"pypi"|"maven"|"nuget"|"generic",
      namespace = "string",
      package = "string",
      status = "Published"|"Unfinished"|"Unlisted"|"Archived"|"Disposed"|"Deleted",
      sortBy = "PUBLISHED_TIME",
      maxResults = 123,
      nextToken = "string",
      originType = "INTERNAL"|"EXTERNAL"|"UNKNOWN"
    )
