<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_update_topic_refresh_schedule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a topic refresh schedule

### Description

Updates a topic refresh schedule.

### Usage

    quicksight_update_topic_refresh_schedule(AwsAccountId, TopicId,
      DatasetId, RefreshSchedule)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_update_topic_refresh_schedule_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID of the Amazon Web Services account that
contains the topic whose refresh schedule you want to update.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_update_topic_refresh_schedule_:_TopicId">TopicId</code></td>
<td><p>[required] The ID of the topic that you want to modify. This ID
is unique per Amazon Web Services Region for each Amazon Web Services
account.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_update_topic_refresh_schedule_:_DatasetId">DatasetId</code></td>
<td><p>[required] The ID of the dataset.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_update_topic_refresh_schedule_:_RefreshSchedule">RefreshSchedule</code></td>
<td><p>[required] The definition of a refresh schedule.</p></td>
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

    svc$update_topic_refresh_schedule(
      AwsAccountId = "string",
      TopicId = "string",
      DatasetId = "string",
      RefreshSchedule = list(
        IsEnabled = TRUE|FALSE,
        BasedOnSpiceSchedule = TRUE|FALSE,
        StartingAt = as.POSIXct(
          "2015-01-01"
        ),
        Timezone = "string",
        RepeatAt = "string",
        TopicScheduleType = "HOURLY"|"DAILY"|"WEEKLY"|"MONTHLY"
      )
    )
