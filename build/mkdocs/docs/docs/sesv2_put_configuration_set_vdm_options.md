<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sesv2_put_configuration_set_vdm_options</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Specify VDM preferences for email that you send using the configuration set

### Description

Specify VDM preferences for email that you send using the configuration
set.

You can execute this operation no more than once per second.

### Usage

    sesv2_put_configuration_set_vdm_options(ConfigurationSetName,
      VdmOptions)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sesv2_put_configuration_set_vdm_options_:_ConfigurationSetName">ConfigurationSetName</code></td>
<td><p>[required] The name of the configuration set.</p></td>
</tr>
<tr class="even">
<td><code
id="sesv2_put_configuration_set_vdm_options_:_VdmOptions">VdmOptions</code></td>
<td><p>The VDM options to apply to the configuration set.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_configuration_set_vdm_options(
      ConfigurationSetName = "string",
      VdmOptions = list(
        DashboardOptions = list(
          EngagementMetrics = "ENABLED"|"DISABLED"
        ),
        GuardianOptions = list(
          OptimizedSharedDelivery = "ENABLED"|"DISABLED"
        )
      )
    )
