<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecr_put_registry_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates or updates the permissions policy for your registry

### Description

Creates or updates the permissions policy for your registry.

A registry policy is used to specify permissions for another Amazon Web
Services account and is used when configuring cross-account replication.
For more information, see [Registry
permissions](https://docs.aws.amazon.com/AmazonECR/latest/userguide/registry-permissions.html)
in the *Amazon Elastic Container Registry User Guide*.

### Usage

    ecr_put_registry_policy(policyText)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ecr_put_registry_policy_:_policyText">policyText</code></td>
<td><p>[required] The JSON policy text to apply to your registry. The
policy text follows the same format as IAM policy text. For more
information, see <a
href="https://docs.aws.amazon.com/AmazonECR/latest/userguide/registry-permissions.html">Registry
permissions</a> in the <em>Amazon Elastic Container Registry User
Guide</em>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      registryId = "string",
      policyText = "string"
    )

### Request syntax

    svc$put_registry_policy(
      policyText = "string"
    )
