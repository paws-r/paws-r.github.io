<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>inspector2_update_organization_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the configurations for your Amazon Inspector organization

### Description

Updates the configurations for your Amazon Inspector organization.

### Usage

    inspector2_update_organization_configuration(autoEnable)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="inspector2_update_organization_configuration_:_autoEnable">autoEnable</code></td>
<td><p>[required] Defines which scan types are enabled automatically for
new members of your Amazon Inspector organization.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      autoEnable = list(
        ec2 = TRUE|FALSE,
        ecr = TRUE|FALSE,
        lambda = TRUE|FALSE
      )
    )

### Request syntax

    svc$update_organization_configuration(
      autoEnable = list(
        ec2 = TRUE|FALSE,
        ecr = TRUE|FALSE,
        lambda = TRUE|FALSE
      )
    )
