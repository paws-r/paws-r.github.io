<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie2_update_organization_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the Amazon Macie configuration settings for an organization in Organizations

### Description

Updates the Amazon Macie configuration settings for an organization in
Organizations.

### Usage

    macie2_update_organization_configuration(autoEnable)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="macie2_update_organization_configuration_:_autoEnable">autoEnable</code></td>
<td><p>[required] Specifies whether to enable Amazon Macie automatically
for an account when the account is added to the organization in
Organizations.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_organization_configuration(
      autoEnable = TRUE|FALSE
    )
