<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sqs_purge_queue</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the messages in a queue specified by the QueueURL parameter

### Description

Deletes the messages in a queue specified by the `QueueURL` parameter.

When you use the `purge_queue` action, you can't retrieve any messages
deleted from a queue.

The message deletion process takes up to 60 seconds. We recommend
waiting for 60 seconds regardless of your queue's size.

Messages sent to the queue *before* you call `purge_queue` might be
received but are deleted within the next minute.

Messages sent to the queue *after* you call `purge_queue` might be
deleted while the queue is being purged.

### Usage

    sqs_purge_queue(QueueUrl)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sqs_purge_queue_:_QueueUrl">QueueUrl</code></td>
<td><p>[required] The URL of the queue from which the
<code>purge_queue</code> action deletes messages.</p>
<p>Queue URLs and names are case-sensitive.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$purge_queue(
      QueueUrl = "string"
    )
