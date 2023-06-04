<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecr_delete_repository_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the repository policy associated with the specified repository

### Description

Deletes the repository policy associated with the specified repository.

### Usage

    ecr_delete_repository_policy(registryId, repositoryName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ecr_delete_repository_policy_:_registryId">registryId</code></td>
<td><p>The Amazon Web Services account ID associated with the registry
that contains the repository policy to delete. If you do not specify a
registry, the default registry is assumed.</p></td>
</tr>
<tr class="even">
<td><code
id="ecr_delete_repository_policy_:_repositoryName">repositoryName</code></td>
<td><p>[required] The name of the repository that is associated with the
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

### Examples

    ## Not run: 
    # This example deletes the policy associated with the repository named
    # ubuntu in the current account.
    svc$delete_repository_policy(
      repositoryName = "ubuntu"
    )

    ## End(Not run)
