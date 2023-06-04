<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecr_set_repository_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Applies a repository policy to the specified repository to control access permissions

### Description

Applies a repository policy to the specified repository to control
access permissions. For more information, see [Amazon ECR Repository
policies](https://docs.aws.amazon.com/AmazonECR/latest/userguide/repository-policies.html)
in the *Amazon Elastic Container Registry User Guide*.

### Usage

    ecr_set_repository_policy(registryId, repositoryName, policyText, force)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ecr_set_repository_policy_:_registryId">registryId</code></td>
<td><p>The Amazon Web Services account ID associated with the registry
that contains the repository. If you do not specify a registry, the
default registry is assumed.</p></td>
</tr>
<tr class="even">
<td><code
id="ecr_set_repository_policy_:_repositoryName">repositoryName</code></td>
<td><p>[required] The name of the repository to receive the
policy.</p></td>
</tr>
<tr class="odd">
<td><code
id="ecr_set_repository_policy_:_policyText">policyText</code></td>
<td><p>[required] The JSON repository policy text to apply to the
repository. For more information, see <a
href="https://docs.aws.amazon.com/AmazonECR/latest/userguide/repository-policy-examples.html">Amazon
ECR repository policies</a> in the <em>Amazon Elastic Container Registry
User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code id="ecr_set_repository_policy_:_force">force</code></td>
<td><p>If the policy you are attempting to set on a repository policy
would prevent you from setting another policy in the future, you must
force the <code>set_repository_policy</code> operation. This is intended
to prevent accidental repository lock outs.</p></td>
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

    svc$set_repository_policy(
      registryId = "string",
      repositoryName = "string",
      policyText = "string",
      force = TRUE|FALSE
    )
