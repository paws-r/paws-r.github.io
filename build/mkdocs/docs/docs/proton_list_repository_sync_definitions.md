<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>proton_list_repository_sync_definitions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List repository sync definitions with detail data

### Description

List repository sync definitions with detail data.

### Usage

    proton_list_repository_sync_definitions(nextToken, repositoryName,
      repositoryProvider, syncType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="proton_list_repository_sync_definitions_:_nextToken">nextToken</code></td>
<td><p>A token that indicates the location of the next repository sync
definition in the array of repository sync definitions, after the list
of repository sync definitions previously requested.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_list_repository_sync_definitions_:_repositoryName">repositoryName</code></td>
<td><p>[required] The repository name.</p></td>
</tr>
<tr class="odd">
<td><code
id="proton_list_repository_sync_definitions_:_repositoryProvider">repositoryProvider</code></td>
<td><p>[required] The repository provider.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_list_repository_sync_definitions_:_syncType">syncType</code></td>
<td><p>[required] The sync type. The only supported value is
<code>TEMPLATE_SYNC</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextToken = "string",
      syncDefinitions = list(
        list(
          branch = "string",
          directory = "string",
          parent = "string",
          target = "string"
        )
      )
    )

### Request syntax

    svc$list_repository_sync_definitions(
      nextToken = "string",
      repositoryName = "string",
      repositoryProvider = "GITHUB"|"GITHUB_ENTERPRISE"|"BITBUCKET",
      syncType = "TEMPLATE_SYNC"|"SERVICE_SYNC"
    )
