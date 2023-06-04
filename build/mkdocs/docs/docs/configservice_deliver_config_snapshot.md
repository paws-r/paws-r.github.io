<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_deliver_config_snapshot</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Schedules delivery of a configuration snapshot to the Amazon S3 bucket in the specified delivery channel

### Description

Schedules delivery of a configuration snapshot to the Amazon S3 bucket
in the specified delivery channel. After the delivery has started,
Config sends the following notifications using an Amazon SNS topic that
you have specified.

-   Notification of the start of the delivery.

-   Notification of the completion of the delivery, if the delivery was
    successfully completed.

-   Notification of delivery failure, if the delivery failed.

### Usage

    configservice_deliver_config_snapshot(deliveryChannelName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="configservice_deliver_config_snapshot_:_deliveryChannelName">deliveryChannelName</code></td>
<td><p>[required] The name of the delivery channel through which the
snapshot is delivered.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      configSnapshotId = "string"
    )

### Request syntax

    svc$deliver_config_snapshot(
      deliveryChannelName = "string"
    )
