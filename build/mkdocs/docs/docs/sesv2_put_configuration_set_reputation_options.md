<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sesv2_put_configuration_set_reputation_options</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Enable or disable collection of reputation metrics for emails that you send using a particular configuration set in a specific Amazon Web Services Region

### Description

Enable or disable collection of reputation metrics for emails that you
send using a particular configuration set in a specific Amazon Web
Services Region.

### Usage

    sesv2_put_configuration_set_reputation_options(ConfigurationSetName,
      ReputationMetricsEnabled)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sesv2_put_configuration_set_reputation_options_:_ConfigurationSetName">ConfigurationSetName</code></td>
<td><p>[required] The name of the configuration set.</p></td>
</tr>
<tr class="even">
<td><code
id="sesv2_put_configuration_set_reputation_options_:_ReputationMetricsEnabled">ReputationMetricsEnabled</code></td>
<td><p>If <code>true</code>, tracking of reputation metrics is enabled
for the configuration set. If <code>false</code>, tracking of reputation
metrics is disabled for the configuration set.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_configuration_set_reputation_options(
      ConfigurationSetName = "string",
      ReputationMetricsEnabled = TRUE|FALSE
    )
