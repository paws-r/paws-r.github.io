<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>eks_describe_addon_versions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the versions for an add-on

### Description

Describes the versions for an add-on. Information such as the Kubernetes
versions that you can use the add-on with, the `owner`, `publisher`, and
the `type` of the add-on are returned.

### Usage

    eks_describe_addon_versions(kubernetesVersion, maxResults, nextToken,
      addonName, types, publishers, owners)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="eks_describe_addon_versions_:_kubernetesVersion">kubernetesVersion</code></td>
<td><p>The Kubernetes versions that you can use the add-on
with.</p></td>
</tr>
<tr class="even">
<td><code
id="eks_describe_addon_versions_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results to return.</p></td>
</tr>
<tr class="odd">
<td><code
id="eks_describe_addon_versions_:_nextToken">nextToken</code></td>
<td><p>The <code>nextToken</code> value returned from a previous
paginated <code>DescribeAddonVersionsRequest</code> where
<code>maxResults</code> was used and the results exceeded the value of
that parameter. Pagination continues from the end of the previous
results that returned the <code>nextToken</code> value.</p>
<p>This token should be treated as an opaque identifier that is used
only to retrieve the next items in a list and not for other programmatic
purposes.</p></td>
</tr>
<tr class="even">
<td><code
id="eks_describe_addon_versions_:_addonName">addonName</code></td>
<td><p>The name of the add-on. The name must match one of the names
returned by <a
href="https://docs.aws.amazon.com/eks/latest/APIReference/API_ListAddons.html"><code>list_addons</code></a>
.</p></td>
</tr>
<tr class="odd">
<td><code id="eks_describe_addon_versions_:_types">types</code></td>
<td><p>The type of the add-on. For valid <code>types</code>, don't
specify a value for this property.</p></td>
</tr>
<tr class="even">
<td><code
id="eks_describe_addon_versions_:_publishers">publishers</code></td>
<td><p>The publisher of the add-on. For valid <code>publishers</code>,
don't specify a value for this property.</p></td>
</tr>
<tr class="odd">
<td><code id="eks_describe_addon_versions_:_owners">owners</code></td>
<td><p>The owner of the add-on. For valid <code>owners</code>, don't
specify a value for this property.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      addons = list(
        list(
          addonName = "string",
          type = "string",
          addonVersions = list(
            list(
              addonVersion = "string",
              architecture = list(
                "string"
              ),
              compatibilities = list(
                list(
                  clusterVersion = "string",
                  platformVersions = list(
                    "string"
                  ),
                  defaultVersion = TRUE|FALSE
                )
              ),
              requiresConfiguration = TRUE|FALSE
            )
          ),
          publisher = "string",
          owner = "string",
          marketplaceInformation = list(
            productId = "string",
            productUrl = "string"
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$describe_addon_versions(
      kubernetesVersion = "string",
      maxResults = 123,
      nextToken = "string",
      addonName = "string",
      types = list(
        "string"
      ),
      publishers = list(
        "string"
      ),
      owners = list(
        "string"
      )
    )
