<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_delete_topic_refresh_schedule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a topic refresh schedule

### Description

Deletes a topic refresh schedule.

### Usage

    quicksight_delete_topic_refresh_schedule(AwsAccountId, TopicId,
      DatasetId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_delete_topic_refresh_schedule_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The Amazon Web Services account ID.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_delete_topic_refresh_schedule_:_TopicId">TopicId</code></td>
<td><p>[required] The ID of the topic that you want to modify. This ID
is unique per Amazon Web Services Region for each Amazon Web Services
account.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_delete_topic_refresh_schedule_:_DatasetId">DatasetId</code></td>
<td><p>[required] The ID of the dataset.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TopicId = "string",
      TopicArn = "string",
      DatasetArn = "string",
      Status = 123,
      RequestId = "string"
    )

### Request syntax

    svc$delete_topic_refresh_schedule(
      AwsAccountId = "string",
      TopicId = "string",
      DatasetId = "string"
    )
