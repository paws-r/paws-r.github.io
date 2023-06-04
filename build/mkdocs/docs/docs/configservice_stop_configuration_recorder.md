<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_stop_configuration_recorder</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Stops recording configurations of the Amazon Web Services resources you have selected to record in your Amazon Web Services account

### Description

Stops recording configurations of the Amazon Web Services resources you
have selected to record in your Amazon Web Services account.

### Usage

    configservice_stop_configuration_recorder(ConfigurationRecorderName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="configservice_stop_configuration_recorder_:_ConfigurationRecorderName">ConfigurationRecorderName</code></td>
<td><p>[required] The name of the recorder object that records each
configuration change made to the resources.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$stop_configuration_recorder(
      ConfigurationRecorderName = "string"
    )
