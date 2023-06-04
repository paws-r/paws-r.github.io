<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codeartifact_get_repository_permissions_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the resource policy that is set on a repository

### Description

Returns the resource policy that is set on a repository.

### Usage

    codeartifact_get_repository_permissions_policy(domain, domainOwner,
      repository)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codeartifact_get_repository_permissions_policy_:_domain">domain</code></td>
<td><p>[required] The name of the domain containing the repository whose
associated resource policy is to be retrieved.</p></td>
</tr>
<tr class="even">
<td><code
id="codeartifact_get_repository_permissions_policy_:_domainOwner">domainOwner</code></td>
<td><p>The 12-digit account number of the Amazon Web Services account
that owns the domain. It does not include dashes or spaces.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeartifact_get_repository_permissions_policy_:_repository">repository</code></td>
<td><p>[required] The name of the repository whose associated resource
policy is to be retrieved.</p></td>
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

    svc$get_repository_permissions_policy(
      domain = "string",
      domainOwner = "string",
      repository = "string"
    )
