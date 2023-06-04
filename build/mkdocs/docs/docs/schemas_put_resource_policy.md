<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>schemas_put_resource_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The name of the policy

### Description

The name of the policy.

### Usage

    schemas_put_resource_policy(Policy, RegistryName, RevisionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="schemas_put_resource_policy_:_Policy">Policy</code></td>
<td><p>[required] The resource-based policy.</p></td>
</tr>
<tr class="even">
<td><code
id="schemas_put_resource_policy_:_RegistryName">RegistryName</code></td>
<td><p>The name of the registry.</p></td>
</tr>
<tr class="odd">
<td><code
id="schemas_put_resource_policy_:_RevisionId">RevisionId</code></td>
<td><p>The revision ID of the policy.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Policy = "string",
      RevisionId = "string"
    )

### Request syntax

    svc$put_resource_policy(
      Policy = "string",
      RegistryName = "string",
      RevisionId = "string"
    )
