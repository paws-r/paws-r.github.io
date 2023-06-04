<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>detective_update_organization_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the configuration for the Organizations integration in the current Region

### Description

Updates the configuration for the Organizations integration in the
current Region. Can only be called by the Detective administrator
account for the organization.

### Usage

    detective_update_organization_configuration(GraphArn, AutoEnable)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="detective_update_organization_configuration_:_GraphArn">GraphArn</code></td>
<td><p>[required] The ARN of the organization behavior graph.</p></td>
</tr>
<tr class="even">
<td><code
id="detective_update_organization_configuration_:_AutoEnable">AutoEnable</code></td>
<td><p>Indicates whether to automatically enable new organization
accounts as member accounts in the organization behavior graph.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_organization_configuration(
      GraphArn = "string",
      AutoEnable = TRUE|FALSE
    )
