<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecr_start_lifecycle_policy_preview</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts a preview of a lifecycle policy for the specified repository

### Description

Starts a preview of a lifecycle policy for the specified repository.
This allows you to see the results before associating the lifecycle
policy with the repository.

### Usage

    ecr_start_lifecycle_policy_preview(registryId, repositoryName,
      lifecyclePolicyText)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ecr_start_lifecycle_policy_preview_:_registryId">registryId</code></td>
<td><p>The Amazon Web Services account ID associated with the registry
that contains the repository. If you do not specify a registry, the
default registry is assumed.</p></td>
</tr>
<tr class="even">
<td><code
id="ecr_start_lifecycle_policy_preview_:_repositoryName">repositoryName</code></td>
<td><p>[required] The name of the repository to be evaluated.</p></td>
</tr>
<tr class="odd">
<td><code
id="ecr_start_lifecycle_policy_preview_:_lifecyclePolicyText">lifecyclePolicyText</code></td>
<td><p>The policy to be evaluated against. If you do not specify a
policy, the current policy for the repository is used.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      registryId = "string",
      repositoryName = "string",
      lifecyclePolicyText = "string",
      status = "IN_PROGRESS"|"COMPLETE"|"EXPIRED"|"FAILED"
    )

### Request syntax

    svc$start_lifecycle_policy_preview(
      registryId = "string",
      repositoryName = "string",
      lifecyclePolicyText = "string"
    )
