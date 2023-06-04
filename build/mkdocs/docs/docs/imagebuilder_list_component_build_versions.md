<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>imagebuilder_list_component_build_versions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the list of component build versions for the specified semantic version

### Description

Returns the list of component build versions for the specified semantic
version.

The semantic version has four nodes:
\\major\\.\\minor\\.\\patch\\/\\build\\. You can assign values for the
first three, and can filter on all of them.

**Filtering:** With semantic versioning, you have the flexibility to use
wildcards (x) to specify the most recent versions or nodes when
selecting the base image or components for your recipe. When you use a
wildcard in any node, all nodes to the right of the first wildcard must
also be wildcards.

### Usage

    imagebuilder_list_component_build_versions(componentVersionArn,
      maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="imagebuilder_list_component_build_versions_:_componentVersionArn">componentVersionArn</code></td>
<td><p>[required] The component version Amazon Resource Name (ARN) whose
versions you want to list.</p></td>
</tr>
<tr class="even">
<td><code
id="imagebuilder_list_component_build_versions_:_maxResults">maxResults</code></td>
<td><p>The maximum items to return in a request.</p></td>
</tr>
<tr class="odd">
<td><code
id="imagebuilder_list_component_build_versions_:_nextToken">nextToken</code></td>
<td><p>A token to specify where to start paginating. This is the
NextToken from a previously truncated response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      requestId = "string",
      componentSummaryList = list(
        list(
          arn = "string",
          name = "string",
          version = "string",
          platform = "Windows"|"Linux",
          supportedOsVersions = list(
            "string"
          ),
          state = list(
            status = "DEPRECATED",
            reason = "string"
          ),
          type = "BUILD"|"TEST",
          owner = "string",
          description = "string",
          changeDescription = "string",
          dateCreated = "string",
          tags = list(
            "string"
          ),
          publisher = "string",
          obfuscate = TRUE|FALSE
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_component_build_versions(
      componentVersionArn = "string",
      maxResults = 123,
      nextToken = "string"
    )
