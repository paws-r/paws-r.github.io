<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudtrail_deregister_organization_delegated_admin</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes CloudTrail delegated administrator permissions from a member account in an organization

### Description

Removes CloudTrail delegated administrator permissions from a member
account in an organization.

### Usage

    cloudtrail_deregister_organization_delegated_admin(
      DelegatedAdminAccountId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudtrail_deregister_organization_delegated_admin_:_DelegatedAdminAccountId">DelegatedAdminAccountId</code></td>
<td><p>[required] A delegated administrator account ID. This is a member
account in an organization that is currently designated as a delegated
administrator.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$deregister_organization_delegated_admin(
      DelegatedAdminAccountId = "string"
    )
