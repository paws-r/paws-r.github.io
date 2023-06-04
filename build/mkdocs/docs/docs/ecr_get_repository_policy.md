<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecr_get_repository_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the repository policy for the specified repository

### Description

Retrieves the repository policy for the specified repository.

### Usage

    ecr_get_repository_policy(registryId, repositoryName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ecr_get_repository_policy_:_registryId">registryId</code></td>
<td><p>The Amazon Web Services account ID associated with the registry
that contains the repository. If you do not specify a registry, the
default registry is assumed.</p></td>
</tr>
<tr class="even">
<td><code
id="ecr_get_repository_policy_:_repositoryName">repositoryName</code></td>
<td><p>[required] The name of the repository with the policy to
retrieve.</p></td>
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

    svc$get_repository_policy(
      registryId = "string",
      repositoryName = "string"
    )

### Examples

    ## Not run: 
    # This example obtains the repository policy for the repository named
    # ubuntu.
    svc$get_repository_policy(
      repositoryName = "ubuntu"
    )

    ## End(Not run)
