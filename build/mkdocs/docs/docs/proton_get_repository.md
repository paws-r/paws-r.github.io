<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>proton_get_repository</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get detail data for a linked repository

### Description

Get detail data for a linked repository.

### Usage

    proton_get_repository(name, provider)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="proton_get_repository_:_name">name</code></td>
<td><p>[required] The repository name, for example
<code>myrepos/myrepo</code>.</p></td>
</tr>
<tr class="even">
<td><code id="proton_get_repository_:_provider">provider</code></td>
<td><p>[required] The repository provider.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      repository = list(
        arn = "string",
        connectionArn = "string",
        encryptionKey = "string",
        name = "string",
        provider = "GITHUB"|"GITHUB_ENTERPRISE"|"BITBUCKET"
      )
    )

### Request syntax

    svc$get_repository(
      name = "string",
      provider = "GITHUB"|"GITHUB_ENTERPRISE"|"BITBUCKET"
    )
