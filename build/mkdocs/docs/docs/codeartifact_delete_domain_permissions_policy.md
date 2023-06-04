<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codeartifact_delete_domain_permissions_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the resource policy set on a domain

### Description

Deletes the resource policy set on a domain.

### Usage

    codeartifact_delete_domain_permissions_policy(domain, domainOwner,
      policyRevision)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codeartifact_delete_domain_permissions_policy_:_domain">domain</code></td>
<td><p>[required] The name of the domain associated with the resource
policy to be deleted.</p></td>
</tr>
<tr class="even">
<td><code
id="codeartifact_delete_domain_permissions_policy_:_domainOwner">domainOwner</code></td>
<td><p>The 12-digit account number of the Amazon Web Services account
that owns the domain. It does not include dashes or spaces.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeartifact_delete_domain_permissions_policy_:_policyRevision">policyRevision</code></td>
<td><p>The current revision of the resource policy to be deleted. This
revision is used for optimistic locking, which prevents others from
overwriting your changes to the domain's resource policy.</p></td>
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

    svc$delete_domain_permissions_policy(
      domain = "string",
      domainOwner = "string",
      policyRevision = "string"
    )
