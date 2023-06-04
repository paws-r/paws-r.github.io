<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecrpublic_delete_repository_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the repository policy that's associated with the specified repository

### Description

Deletes the repository policy that's associated with the specified
repository.

### Usage

    ecrpublic_delete_repository_policy(registryId, repositoryName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ecrpublic_delete_repository_policy_:_registryId">registryId</code></td>
<td><p>The Amazon Web Services account ID that's associated with the
public registry that contains the repository policy to delete. If you do
not specify a registry, the default public registry is assumed.</p></td>
</tr>
<tr class="even">
<td><code
id="ecrpublic_delete_repository_policy_:_repositoryName">repositoryName</code></td>
<td><p>[required] The name of the repository that's associated with the
repository policy to delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      registryId = "string",
      repositoryName = "string",
      policyText = "string"
    )

### Request syntax

    svc$delete_repository_policy(
      registryId = "string",
      repositoryName = "string"
    )
