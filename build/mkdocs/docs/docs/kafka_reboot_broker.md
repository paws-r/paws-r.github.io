<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kafka_reboot_broker</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Reboots brokers

### Description

Reboots brokers.

### Usage

    kafka_reboot_broker(BrokerIds, ClusterArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kafka_reboot_broker_:_BrokerIds">BrokerIds</code></td>
<td><p>[required] The list of broker IDs to be rebooted. The
reboot-broker operation supports rebooting one broker at a
time.</p></td>
</tr>
<tr class="even">
<td><code id="kafka_reboot_broker_:_ClusterArn">ClusterArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the cluster to be
updated.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ClusterArn = "string",
      ClusterOperationArn = "string"
    )

### Request syntax

    svc$reboot_broker(
      BrokerIds = list(
        "string"
      ),
      ClusterArn = "string"
    )
