<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_modify_aqua_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This operation is retired

### Description

This operation is retired. Calling this operation does not change AQUA
configuration. Amazon Redshift automatically determines whether to use
AQUA (Advanced Query Accelerator).

### Usage

    redshift_modify_aqua_configuration(ClusterIdentifier,
      AquaConfigurationStatus)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_modify_aqua_configuration_:_ClusterIdentifier">ClusterIdentifier</code></td>
<td><p>[required] The identifier of the cluster to be modified.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_modify_aqua_configuration_:_AquaConfigurationStatus">AquaConfigurationStatus</code></td>
<td><p>This parameter is retired. Amazon Redshift automatically
determines whether to use AQUA (Advanced Query Accelerator).</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AquaConfiguration = list(
        AquaStatus = "enabled"|"disabled"|"applying",
        AquaConfigurationStatus = "enabled"|"disabled"|"auto"
      )
    )

### Request syntax

    svc$modify_aqua_configuration(
      ClusterIdentifier = "string",
      AquaConfigurationStatus = "enabled"|"disabled"|"auto"
    )
