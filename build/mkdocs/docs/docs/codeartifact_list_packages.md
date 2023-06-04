<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codeartifact_list_packages</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of PackageSummary objects for packages in a repository that match the request parameters

### Description

Returns a list of
[PackageSummary](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageSummary.html)
objects for packages in a repository that match the request parameters.

### Usage

    codeartifact_list_packages(domain, domainOwner, repository, format,
      namespace, packagePrefix, maxResults, nextToken, publish, upstream)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="codeartifact_list_packages_:_domain">domain</code></td>
<td><p>[required] The name of the domain that contains the repository
that contains the requested packages.</p></td>
</tr>
<tr class="even">
<td><code
id="codeartifact_list_packages_:_domainOwner">domainOwner</code></td>
<td><p>The 12-digit account number of the Amazon Web Services account
that owns the domain. It does not include dashes or spaces.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeartifact_list_packages_:_repository">repository</code></td>
<td><p>[required] The name of the repository that contains the requested
packages.</p></td>
</tr>
<tr class="even">
<td><code id="codeartifact_list_packages_:_format">format</code></td>
<td><p>The format used to filter requested packages. Only packages from
the provided format will be returned.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeartifact_list_packages_:_namespace">namespace</code></td>
<td><p>The namespace prefix used to filter requested packages. Only
packages with a namespace that starts with the provided string value are
returned. Note that although this option is called
<code>--namespace</code> and not <code>--namespace-prefix</code>, it has
prefix-matching behavior.</p>
<p>Each package format uses namespace as follows:</p>
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
id="codeartifact_list_packages_:_packagePrefix">packagePrefix</code></td>
<td><p>A prefix used to filter requested packages. Only packages with
names that start with <code>packagePrefix</code> are returned.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeartifact_list_packages_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results to return per page.</p></td>
</tr>
<tr class="even">
<td><code
id="codeartifact_list_packages_:_nextToken">nextToken</code></td>
<td><p>The token for the next set of results. Use the value returned in
the previous response in the next request to retrieve the next set of
results.</p></td>
</tr>
<tr class="odd">
<td><code id="codeartifact_list_packages_:_publish">publish</code></td>
<td><p>The value of the <code>Publish</code> package origin control
restriction used to filter requested packages. Only packages with the
provided restriction are returned. For more information, see <a
href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageOriginRestrictions.html">PackageOriginRestrictions</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="codeartifact_list_packages_:_upstream">upstream</code></td>
<td><p>The value of the <code>Upstream</code> package origin control
restriction used to filter requested packages. Only packages with the
provided restriction are returned. For more information, see <a
href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageOriginRestrictions.html">PackageOriginRestrictions</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      packages = list(
        list(
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
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_packages(
      domain = "string",
      domainOwner = "string",
      repository = "string",
      format = "npm"|"pypi"|"maven"|"nuget"|"generic",
      namespace = "string",
      packagePrefix = "string",
      maxResults = 123,
      nextToken = "string",
      publish = "ALLOW"|"BLOCK",
      upstream = "ALLOW"|"BLOCK"
    )
