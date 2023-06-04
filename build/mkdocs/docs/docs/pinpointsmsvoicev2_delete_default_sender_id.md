<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointsmsvoicev2_delete_default_sender_id</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an existing default sender ID on a configuration set

### Description

Deletes an existing default sender ID on a configuration set.

A default sender ID is the identity that appears on recipients' devices
when they receive SMS messages. Support for sender ID capabilities
varies by country or region.

### Usage

    pinpointsmsvoicev2_delete_default_sender_id(ConfigurationSetName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_delete_default_sender_id_:_ConfigurationSetName">ConfigurationSetName</code></td>
<td><p>[required] The name of the configuration set or the configuration
set Amazon Resource Name (ARN) to delete the default sender ID from. The
ConfigurationSetName and ConfigurationSetArn can be found using the
<code>describe_configuration_sets</code> action.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ConfigurationSetArn = "string",
      ConfigurationSetName = "string",
      SenderId = "string"
    )

### Request syntax

    svc$delete_default_sender_id(
      ConfigurationSetName = "string"
    )
