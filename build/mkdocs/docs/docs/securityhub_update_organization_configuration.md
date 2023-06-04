<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>securityhub_update_organization_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Used to update the configuration related to Organizations

### Description

Used to update the configuration related to Organizations. Can only be
called from a Security Hub administrator account.

### Usage

    securityhub_update_organization_configuration(AutoEnable,
      AutoEnableStandards)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="securityhub_update_organization_configuration_:_AutoEnable">AutoEnable</code></td>
<td><p>[required] Whether to automatically enable Security Hub for new
accounts in the organization.</p>
<p>By default, this is <code>false</code>, and new accounts are not
added automatically.</p>
<p>To automatically enable Security Hub for new accounts, set this to
<code>true</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="securityhub_update_organization_configuration_:_AutoEnableStandards">AutoEnableStandards</code></td>
<td><p>Whether to automatically enable Security Hub <a
href="https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-standards-enable-disable.html">default
standards</a> for new member accounts in the organization.</p>
<p>By default, this parameter is equal to <code>DEFAULT</code>, and new
member accounts are automatically enabled with default Security Hub
standards.</p>
<p>To opt out of enabling default standards for new member accounts, set
this parameter equal to <code>NONE</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_organization_configuration(
      AutoEnable = TRUE|FALSE,
      AutoEnableStandards = "NONE"|"DEFAULT"
    )

### Examples

    ## Not run: 
    # The following example updates the configuration for an organization so
    # that Security Hub is automatically activated for new member accounts.
    # Only the Security Hub administrator account can call this operation.
    svc$update_organization_configuration(
      AutoEnable = TRUE
    )

    ## End(Not run)
