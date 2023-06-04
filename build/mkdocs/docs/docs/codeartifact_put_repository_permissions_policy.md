<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codeartifact_put_repository_permissions_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sets the resource policy on a repository that specifies permissions to access it

### Description

Sets the resource policy on a repository that specifies permissions to
access it.

When you call `put_repository_permissions_policy`, the resource policy
on the repository is ignored when evaluting permissions. This ensures
that the owner of a repository cannot lock themselves out of the
repository, which would prevent them from being able to update the
resource policy.

### Usage

    codeartifact_put_repository_permissions_policy(domain, domainOwner,
      repository, policyRevision, policyDocument)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codeartifact_put_repository_permissions_policy_:_domain">domain</code></td>
<td><p>[required] The name of the domain containing the repository to
set the resource policy on.</p></td>
</tr>
<tr class="even">
<td><code
id="codeartifact_put_repository_permissions_policy_:_domainOwner">domainOwner</code></td>
<td><p>The 12-digit account number of the Amazon Web Services account
that owns the domain. It does not include dashes or spaces.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeartifact_put_repository_permissions_policy_:_repository">repository</code></td>
<td><p>[required] The name of the repository to set the resource policy
on.</p></td>
</tr>
<tr class="even">
<td><code
id="codeartifact_put_repository_permissions_policy_:_policyRevision">policyRevision</code></td>
<td><p>Sets the revision of the resource policy that specifies
permissions to access the repository. This revision is used for
optimistic locking, which prevents others from overwriting your changes
to the repository's resource policy.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeartifact_put_repository_permissions_policy_:_policyDocument">policyDocument</code></td>
<td><p>[required] A valid displayable JSON Aspen policy string to be set
as the access control resource policy on the provided
repository.</p></td>
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

    svc$put_repository_permissions_policy(
      domain = "string",
      domainOwner = "string",
      repository = "string",
      policyRevision = "string",
      policyDocument = "string"
    )
