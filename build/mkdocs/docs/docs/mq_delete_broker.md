<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>mq_delete_broker</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a broker

### Description

Deletes a broker. Note: This API is asynchronous.

### Usage

    mq_delete_broker(BrokerId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="mq_delete_broker_:_BrokerId">BrokerId</code></td>
<td><p>[required] The unique ID that Amazon MQ generates for the
broker.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      BrokerId = "string"
    )

### Request syntax

    svc$delete_broker(
      BrokerId = "string"
    )
