<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>imagebuilder_list_components</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the list of components that can be filtered by name, or by using the listed filters to streamline results

### Description

Returns the list of components that can be filtered by name, or by using
the listed `filters` to streamline results. Newly created components can
take up to two minutes to appear in the ListComponents API Results.

The semantic version has four nodes:
\\major\\.\\minor\\.\\patch\\/\\build\\. You can assign values for the
first three, and can filter on all of them.

**Filtering:** With semantic versioning, you have the flexibility to use
wildcards (x) to specify the most recent versions or nodes when
selecting the base image or components for your recipe. When you use a
wildcard in any node, all nodes to the right of the first wildcard must
also be wildcards.

### Usage

    imagebuilder_list_components(owner, filters, byName, maxResults,
      nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="imagebuilder_list_components_:_owner">owner</code></td>
<td><p>Filters results based on the type of owner for the component. By
default, this request returns a list of components that your account
owns. To see results for other types of owners, you can specify
components that Amazon manages, third party components, or components
that other accounts have shared with you.</p></td>
</tr>
<tr class="even">
<td><code
id="imagebuilder_list_components_:_filters">filters</code></td>
<td><p>Use the following filters to streamline results:</p>
<ul>
<li><p><code>description</code></p></li>
<li><p><code>name</code></p></li>
<li><p><code>platform</code></p></li>
<li><p><code>supportedOsVersion</code></p></li>
<li><p><code>type</code></p></li>
<li><p><code>version</code></p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code id="imagebuilder_list_components_:_byName">byName</code></td>
<td><p>Returns the list of components for the specified name.</p></td>
</tr>
<tr class="even">
<td><code
id="imagebuilder_list_components_:_maxResults">maxResults</code></td>
<td><p>The maximum items to return in a request.</p></td>
</tr>
<tr class="odd">
<td><code
id="imagebuilder_list_components_:_nextToken">nextToken</code></td>
<td><p>A token to specify where to start paginating. This is the
NextToken from a previously truncated response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      requestId = "string",
      componentVersionList = list(
        list(
          arn = "string",
          name = "string",
          version = "string",
          description = "string",
          platform = "Windows"|"Linux",
          supportedOsVersions = list(
            "string"
          ),
          type = "BUILD"|"TEST",
          owner = "string",
          dateCreated = "string"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_components(
      owner = "Self"|"Shared"|"Amazon"|"ThirdParty",
      filters = list(
        list(
          name = "string",
          values = list(
            "string"
          )
        )
      ),
      byName = TRUE|FALSE,
      maxResults = 123,
      nextToken = "string"
    )
