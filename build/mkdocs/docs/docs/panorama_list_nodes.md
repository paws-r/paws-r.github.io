<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>panorama_list_nodes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of nodes

### Description

Returns a list of nodes.

### Usage

    panorama_list_nodes(Category, MaxResults, NextToken, OwnerAccount,
      PackageName, PackageVersion, PatchVersion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="panorama_list_nodes_:_Category">Category</code></td>
<td><p>Search for nodes by category.</p></td>
</tr>
<tr class="even">
<td><code id="panorama_list_nodes_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of nodes to return in one page of
results.</p></td>
</tr>
<tr class="odd">
<td><code id="panorama_list_nodes_:_NextToken">NextToken</code></td>
<td><p>Specify the pagination token from a previous request to retrieve
the next page of results.</p></td>
</tr>
<tr class="even">
<td><code
id="panorama_list_nodes_:_OwnerAccount">OwnerAccount</code></td>
<td><p>Search for nodes by the account ID of the nodes' owner.</p></td>
</tr>
<tr class="odd">
<td><code id="panorama_list_nodes_:_PackageName">PackageName</code></td>
<td><p>Search for nodes by name.</p></td>
</tr>
<tr class="even">
<td><code
id="panorama_list_nodes_:_PackageVersion">PackageVersion</code></td>
<td><p>Search for nodes by version.</p></td>
</tr>
<tr class="odd">
<td><code
id="panorama_list_nodes_:_PatchVersion">PatchVersion</code></td>
<td><p>Search for nodes by patch version.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      Nodes = list(
        list(
          Category = "BUSINESS_LOGIC"|"ML_MODEL"|"MEDIA_SOURCE"|"MEDIA_SINK",
          CreatedTime = as.POSIXct(
            "2015-01-01"
          ),
          Description = "string",
          Name = "string",
          NodeId = "string",
          OwnerAccount = "string",
          PackageArn = "string",
          PackageId = "string",
          PackageName = "string",
          PackageVersion = "string",
          PatchVersion = "string"
        )
      )
    )

### Request syntax

    svc$list_nodes(
      Category = "BUSINESS_LOGIC"|"ML_MODEL"|"MEDIA_SOURCE"|"MEDIA_SINK",
      MaxResults = 123,
      NextToken = "string",
      OwnerAccount = "string",
      PackageName = "string",
      PackageVersion = "string",
      PatchVersion = "string"
    )
