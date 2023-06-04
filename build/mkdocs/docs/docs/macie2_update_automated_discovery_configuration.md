<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie2_update_automated_discovery_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Enables or disables automated sensitive data discovery for an account

### Description

Enables or disables automated sensitive data discovery for an account.

### Usage

    macie2_update_automated_discovery_configuration(status)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="macie2_update_automated_discovery_configuration_:_status">status</code></td>
<td><p>[required] The new status of automated sensitive data discovery
for the account. Valid values are: ENABLED, start or resume automated
sensitive data discovery activities for the account; and, DISABLED, stop
performing automated sensitive data discovery activities for the
account.</p>
<p>When you enable automated sensitive data discovery for the first
time, Amazon Macie uses default configuration settings to determine
which data sources to analyze and which managed data identifiers to use.
To change these settings, use the UpdateClassificationScope and
UpdateSensitivityInspectionTemplate operations, respectively. If you
change the settings and subsequently disable the configuration, Amazon
Macie retains your changes.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_automated_discovery_configuration(
      status = "ENABLED"|"DISABLED"
    )
