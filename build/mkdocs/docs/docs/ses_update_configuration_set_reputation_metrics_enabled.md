<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ses_update_configuration_set_reputation_metrics_enabled</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Enables or disables the publishing of reputation metrics for emails sent using a specific configuration set in a given AWS Region

### Description

Enables or disables the publishing of reputation metrics for emails sent
using a specific configuration set in a given AWS Region. Reputation
metrics include bounce and complaint rates. These metrics are published
to Amazon CloudWatch. By using CloudWatch, you can create alarms when
bounce or complaint rates exceed certain thresholds.

You can execute this operation no more than once per second.

### Usage

    ses_update_configuration_set_reputation_metrics_enabled(
      ConfigurationSetName, Enabled)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ses_update_configuration_set_reputation_metrics_enabled_:_ConfigurationSetName">ConfigurationSetName</code></td>
<td><p>[required] The name of the configuration set that you want to
update.</p></td>
</tr>
<tr class="even">
<td><code
id="ses_update_configuration_set_reputation_metrics_enabled_:_Enabled">Enabled</code></td>
<td><p>[required] Describes whether or not Amazon SES will publish
reputation metrics for the configuration set, such as bounce and
complaint rates, to Amazon CloudWatch.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_configuration_set_reputation_metrics_enabled(
      ConfigurationSetName = "string",
      Enabled = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # Set the reputationMetricsEnabled flag for a specific configuration set.
    svc$update_configuration_set_reputation_metrics_enabled(
      ConfigurationSetName = "foo",
      Enabled = TRUE
    )

    ## End(Not run)
