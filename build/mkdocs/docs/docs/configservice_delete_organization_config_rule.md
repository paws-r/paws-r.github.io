<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_delete_organization_config_rule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified organization Config rule and all of its evaluation results from all member accounts in that organization

### Description

Deletes the specified organization Config rule and all of its evaluation
results from all member accounts in that organization.

Only a management account and a delegated administrator account can
delete an organization Config rule. When calling this API with a
delegated administrator, you must ensure Organizations
`ListDelegatedAdministrator` permissions are added.

Config sets the state of a rule to DELETE\_IN\_PROGRESS until the
deletion is complete. You cannot update a rule while it is in this
state.

### Usage

    configservice_delete_organization_config_rule(
      OrganizationConfigRuleName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="configservice_delete_organization_config_rule_:_OrganizationConfigRuleName">OrganizationConfigRuleName</code></td>
<td><p>[required] The name of organization Config rule that you want to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_organization_config_rule(
      OrganizationConfigRuleName = "string"
    )
