<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_delete_configuration_recorder</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the configuration recorder

### Description

Deletes the configuration recorder.

After the configuration recorder is deleted, Config will not record
resource configuration changes until you create a new configuration
recorder.

This action does not delete the configuration information that was
previously recorded. You will be able to access the previously recorded
information by using the `get_resource_config_history` action, but you
will not be able to access this information in the Config console until
you create a new configuration recorder.

### Usage

    configservice_delete_configuration_recorder(ConfigurationRecorderName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="configservice_delete_configuration_recorder_:_ConfigurationRecorderName">ConfigurationRecorderName</code></td>
<td><p>[required] The name of the configuration recorder to be deleted.
You can retrieve the name of your configuration recorder by using the
<code>describe_configuration_recorders</code> action.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_configuration_recorder(
      ConfigurationRecorderName = "string"
    )
