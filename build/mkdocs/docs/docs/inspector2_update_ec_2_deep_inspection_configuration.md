<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>inspector2_update_ec_2_deep_inspection_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Activates, deactivates Amazon Inspector deep inspection, or updates custom paths for your account

### Description

Activates, deactivates Amazon Inspector deep inspection, or updates
custom paths for your account.

### Usage

    inspector2_update_ec_2_deep_inspection_configuration(
      activateDeepInspection, packagePaths)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="inspector2_update_ec_2_deep_inspection_configuration_:_activateDeepInspection">activateDeepInspection</code></td>
<td><p>Specify <code>TRUE</code> to activate Amazon Inspector deep
inspection in your account, or <code>FALSE</code> to deactivate. Member
accounts in an organization cannot deactivate deep inspection, instead
the delegated administrator for the organization can deactivate a member
account using
<code>batch_update_member_ec_2_deep_inspection_status</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="inspector2_update_ec_2_deep_inspection_configuration_:_packagePaths">packagePaths</code></td>
<td><p>The Amazon Inspector deep inspection custom paths you are adding
for your account.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      errorMessage = "string",
      orgPackagePaths = list(
        "string"
      ),
      packagePaths = list(
        "string"
      ),
      status = "ACTIVATED"|"DEACTIVATED"|"PENDING"|"FAILED"
    )

### Request syntax

    svc$update_ec_2_deep_inspection_configuration(
      activateDeepInspection = TRUE|FALSE,
      packagePaths = list(
        "string"
      )
    )
