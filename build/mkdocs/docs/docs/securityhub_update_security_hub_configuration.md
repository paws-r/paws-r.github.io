<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>securityhub_update_security_hub_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates configuration options for Security Hub

### Description

Updates configuration options for Security Hub.

### Usage

    securityhub_update_security_hub_configuration(AutoEnableControls,
      ControlFindingGenerator)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="securityhub_update_security_hub_configuration_:_AutoEnableControls">AutoEnableControls</code></td>
<td><p>Whether to automatically enable new controls when they are added
to standards that are enabled.</p>
<p>By default, this is set to <code>true</code>, and new controls are
enabled automatically. To not automatically enable new controls, set
this to <code>false</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="securityhub_update_security_hub_configuration_:_ControlFindingGenerator">ControlFindingGenerator</code></td>
<td><p>Updates whether the calling account has consolidated control
findings turned on. If the value for this field is set to
<code>SECURITY_CONTROL</code>, Security Hub generates a single finding
for a control check even when the check applies to multiple enabled
standards.</p>
<p>If the value for this field is set to <code>STANDARD_CONTROL</code>,
Security Hub generates separate findings for a control check when the
check applies to multiple enabled standards.</p>
<p>For accounts that are part of an organization, this value can only be
updated in the administrator account.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_security_hub_configuration(
      AutoEnableControls = TRUE|FALSE,
      ControlFindingGenerator = "STANDARD_CONTROL"|"SECURITY_CONTROL"
    )

### Examples

    ## Not run: 
    # The following example updates Security Hub settings to turn on
    # consolidated control findings, and to automatically enable new controls
    # in enabled standards.
    svc$update_security_hub_configuration(
      AutoEnableControls = TRUE,
      ControlFindingGenerator = "SECURITY_CONTROL"
    )

    ## End(Not run)
