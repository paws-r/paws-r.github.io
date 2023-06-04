<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_delete_hsm_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified Amazon Redshift HSM configuration

### Description

Deletes the specified Amazon Redshift HSM configuration.

### Usage

    redshift_delete_hsm_configuration(HsmConfigurationIdentifier)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_delete_hsm_configuration_:_HsmConfigurationIdentifier">HsmConfigurationIdentifier</code></td>
<td><p>[required] The identifier of the Amazon Redshift HSM
configuration to be deleted.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_hsm_configuration(
      HsmConfigurationIdentifier = "string"
    )
