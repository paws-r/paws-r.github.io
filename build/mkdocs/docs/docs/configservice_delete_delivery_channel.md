<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_delete_delivery_channel</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the delivery channel

### Description

Deletes the delivery channel.

Before you can delete the delivery channel, you must stop the
configuration recorder by using the `stop_configuration_recorder`
action.

### Usage

    configservice_delete_delivery_channel(DeliveryChannelName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="configservice_delete_delivery_channel_:_DeliveryChannelName">DeliveryChannelName</code></td>
<td><p>[required] The name of the delivery channel to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_delivery_channel(
      DeliveryChannelName = "string"
    )
