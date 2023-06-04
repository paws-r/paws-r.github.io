<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>mq_reboot_broker</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Reboots a broker

### Description

Reboots a broker. Note: This API is asynchronous.

### Usage

    mq_reboot_broker(BrokerId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="mq_reboot_broker_:_BrokerId">BrokerId</code></td>
<td><p>[required] The unique ID that Amazon MQ generates for the
broker.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$reboot_broker(
      BrokerId = "string"
    )
