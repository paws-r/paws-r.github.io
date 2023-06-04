<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>inspector2_update_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates setting configurations for your Amazon Inspector account

### Description

Updates setting configurations for your Amazon Inspector account. When
you use this API as an Amazon Inspector delegated administrator this
updates the setting for all accounts you manage. Member accounts in an
organization cannot update this setting.

### Usage

    inspector2_update_configuration(ecrConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="inspector2_update_configuration_:_ecrConfiguration">ecrConfiguration</code></td>
<td><p>[required] Specifies how the ECR automated re-scan will be
updated for your environment.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_configuration(
      ecrConfiguration = list(
        rescanDuration = "LIFETIME"|"DAYS_30"|"DAYS_180"
      )
    )
