<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecr_put_lifecycle_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates or updates the lifecycle policy for the specified repository

### Description

Creates or updates the lifecycle policy for the specified repository.
For more information, see [Lifecycle policy
template](https://docs.aws.amazon.com/AmazonECR/latest/userguide/LifecyclePolicies.html).

### Usage

    ecr_put_lifecycle_policy(registryId, repositoryName,
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
id="ecr_put_lifecycle_policy_:_registryId">registryId</code></td>
<td><p>The Amazon Web Services account ID associated with the registry
that contains the repository. If you do not specify a registry, the
default registry is assumed.</p></td>
</tr>
<tr class="even">
<td><code
id="ecr_put_lifecycle_policy_:_repositoryName">repositoryName</code></td>
<td><p>[required] The name of the repository to receive the
policy.</p></td>
</tr>
<tr class="odd">
<td><code
id="ecr_put_lifecycle_policy_:_lifecyclePolicyText">lifecyclePolicyText</code></td>
<td><p>[required] The JSON repository policy text to apply to the
repository.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      registryId = "string",
      repositoryName = "string",
      lifecyclePolicyText = "string"
    )

### Request syntax

    svc$put_lifecycle_policy(
      registryId = "string",
      repositoryName = "string",
      lifecyclePolicyText = "string"
    )
