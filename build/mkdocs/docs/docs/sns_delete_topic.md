<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sns_delete_topic</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a topic and all its subscriptions

### Description

Deletes a topic and all its subscriptions. Deleting a topic might
prevent some messages previously sent to the topic from being delivered
to subscribers. This action is idempotent, so deleting a topic that does
not exist does not result in an error.

### Usage

    sns_delete_topic(TopicArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sns_delete_topic_:_TopicArn">TopicArn</code></td>
<td><p>[required] The ARN of the topic you want to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_topic(
      TopicArn = "string"
    )
