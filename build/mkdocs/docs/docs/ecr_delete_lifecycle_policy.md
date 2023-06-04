<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecr_delete_lifecycle_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the lifecycle policy associated with the specified repository

### Description

Deletes the lifecycle policy associated with the specified repository.

### Usage

    ecr_delete_lifecycle_policy(registryId, repositoryName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ecr_delete_lifecycle_policy_:_registryId">registryId</code></td>
<td><p>The Amazon Web Services account ID associated with the registry
that contains the repository. If you do not specify a registry, the
default registry is assumed.</p></td>
</tr>
<tr class="even">
<td><code
id="ecr_delete_lifecycle_policy_:_repositoryName">repositoryName</code></td>
<td><p>[required] The name of the repository.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      registryId = "string",
      repositoryName = "string",
      lifecyclePolicyText = "string",
      lastEvaluatedAt = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$delete_lifecycle_policy(
      registryId = "string",
      repositoryName = "string"
    )
