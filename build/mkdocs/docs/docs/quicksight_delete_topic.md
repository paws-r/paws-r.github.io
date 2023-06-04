<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_delete_topic</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a topic

### Description

Deletes a topic.

### Usage

    quicksight_delete_topic(AwsAccountId, TopicId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_delete_topic_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID of the Amazon Web Services account that
contains the topic that you want to delete.</p></td>
</tr>
<tr class="even">
<td><code id="quicksight_delete_topic_:_TopicId">TopicId</code></td>
<td><p>[required] The ID of the topic that you want to delete. This ID
is unique per Amazon Web Services Region for each Amazon Web Services
account.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Arn = "string",
      TopicId = "string",
      RequestId = "string",
      Status = 123
    )

### Request syntax

    svc$delete_topic(
      AwsAccountId = "string",
      TopicId = "string"
    )
