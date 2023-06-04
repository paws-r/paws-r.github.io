<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codeartifact_delete_repository_permissions_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the resource policy that is set on a repository

### Description

Deletes the resource policy that is set on a repository. After a
resource policy is deleted, the permissions allowed and denied by the
deleted policy are removed. The effect of deleting a resource policy
might not be immediate.

Use `delete_repository_permissions_policy` with caution. After a policy
is deleted, Amazon Web Services users, roles, and accounts lose
permissions to perform the repository actions granted by the deleted
policy.

### Usage

    codeartifact_delete_repository_permissions_policy(domain, domainOwner,
      repository, policyRevision)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codeartifact_delete_repository_permissions_policy_:_domain">domain</code></td>
<td><p>[required] The name of the domain that contains the repository
associated with the resource policy to be deleted.</p></td>
</tr>
<tr class="even">
<td><code
id="codeartifact_delete_repository_permissions_policy_:_domainOwner">domainOwner</code></td>
<td><p>The 12-digit account number of the Amazon Web Services account
that owns the domain. It does not include dashes or spaces.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeartifact_delete_repository_permissions_policy_:_repository">repository</code></td>
<td><p>[required] The name of the repository that is associated with the
resource policy to be deleted</p></td>
</tr>
<tr class="even">
<td><code
id="codeartifact_delete_repository_permissions_policy_:_policyRevision">policyRevision</code></td>
<td><p>The revision of the repository's resource policy to be deleted.
This revision is used for optimistic locking, which prevents others from
accidentally overwriting your changes to the repository's resource
policy.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      policy = list(
        resourceArn = "string",
        revision = "string",
        document = "string"
      )
    )

### Request syntax

    svc$delete_repository_permissions_policy(
      domain = "string",
      domainOwner = "string",
      repository = "string",
      policyRevision = "string"
    )
