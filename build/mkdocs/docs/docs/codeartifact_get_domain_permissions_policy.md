<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codeartifact_get_domain_permissions_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the resource policy attached to the specified domain

### Description

Returns the resource policy attached to the specified domain.

The policy is a resource-based policy, not an identity-based policy. For
more information, see [Identity-based policies and resource-based
policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_identity-vs-resource.html)
in the *IAM User Guide*.

### Usage

    codeartifact_get_domain_permissions_policy(domain, domainOwner)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codeartifact_get_domain_permissions_policy_:_domain">domain</code></td>
<td><p>[required] The name of the domain to which the resource policy is
attached.</p></td>
</tr>
<tr class="even">
<td><code
id="codeartifact_get_domain_permissions_policy_:_domainOwner">domainOwner</code></td>
<td><p>The 12-digit account number of the Amazon Web Services account
that owns the domain. It does not include dashes or spaces.</p></td>
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

    svc$get_domain_permissions_policy(
      domain = "string",
      domainOwner = "string"
    )
