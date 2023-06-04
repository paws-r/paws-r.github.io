<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_delete_retention_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified retention policy from the specified organization

### Description

Deletes the specified retention policy from the specified organization.

### Usage

    workmail_delete_retention_policy(OrganizationId, Id)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workmail_delete_retention_policy_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The organization ID.</p></td>
</tr>
<tr class="even">
<td><code id="workmail_delete_retention_policy_:_Id">Id</code></td>
<td><p>[required] The retention policy ID.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_retention_policy(
      OrganizationId = "string",
      Id = "string"
    )
