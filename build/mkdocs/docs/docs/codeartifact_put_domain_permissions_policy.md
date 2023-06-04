<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codeartifact_put_domain_permissions_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sets a resource policy on a domain that specifies permissions to access it

### Description

Sets a resource policy on a domain that specifies permissions to access
it.

When you call `put_domain_permissions_policy`, the resource policy on
the domain is ignored when evaluting permissions. This ensures that the
owner of a domain cannot lock themselves out of the domain, which would
prevent them from being able to update the resource policy.

### Usage

    codeartifact_put_domain_permissions_policy(domain, domainOwner,
      policyRevision, policyDocument)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codeartifact_put_domain_permissions_policy_:_domain">domain</code></td>
<td><p>[required] The name of the domain on which to set the resource
policy.</p></td>
</tr>
<tr class="even">
<td><code
id="codeartifact_put_domain_permissions_policy_:_domainOwner">domainOwner</code></td>
<td><p>The 12-digit account number of the Amazon Web Services account
that owns the domain. It does not include dashes or spaces.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeartifact_put_domain_permissions_policy_:_policyRevision">policyRevision</code></td>
<td><p>The current revision of the resource policy to be set. This
revision is used for optimistic locking, which prevents others from
overwriting your changes to the domain's resource policy.</p></td>
</tr>
<tr class="even">
<td><code
id="codeartifact_put_domain_permissions_policy_:_policyDocument">policyDocument</code></td>
<td><p>[required] A valid displayable JSON Aspen policy string to be set
as the access control resource policy on the provided domain.</p></td>
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

    svc$put_domain_permissions_policy(
      domain = "string",
      domainOwner = "string",
      policyRevision = "string",
      policyDocument = "string"
    )
