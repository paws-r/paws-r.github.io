<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_delete_organization_conformance_pack</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified organization conformance pack and all of the Config rules and remediation actions from all member accounts in that organization

### Description

Deletes the specified organization conformance pack and all of the
Config rules and remediation actions from all member accounts in that
organization.

Only a management account or a delegated administrator account can
delete an organization conformance pack. When calling this API with a
delegated administrator, you must ensure Organizations
`ListDelegatedAdministrator` permissions are added.

Config sets the state of a conformance pack to DELETE\_IN\_PROGRESS
until the deletion is complete. You cannot update a conformance pack
while it is in this state.

### Usage

    configservice_delete_organization_conformance_pack(
      OrganizationConformancePackName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="configservice_delete_organization_conformance_pack_:_OrganizationConformancePackName">OrganizationConformancePackName</code></td>
<td><p>[required] The name of organization conformance pack that you
want to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_organization_conformance_pack(
      OrganizationConformancePackName = "string"
    )
