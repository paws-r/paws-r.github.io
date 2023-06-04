<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_create_topic_refresh_schedule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a topic refresh schedule

### Description

Creates a topic refresh schedule.

### Usage

    quicksight_create_topic_refresh_schedule(AwsAccountId, TopicId,
      DatasetArn, DatasetName, RefreshSchedule)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_create_topic_refresh_schedule_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID of the Amazon Web Services account that
contains the topic you're creating a refresh schedule for.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_create_topic_refresh_schedule_:_TopicId">TopicId</code></td>
<td><p>[required] The ID of the topic that you want to modify. This ID
is unique per Amazon Web Services Region for each Amazon Web Services
account.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_create_topic_refresh_schedule_:_DatasetArn">DatasetArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the
dataset.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_create_topic_refresh_schedule_:_DatasetName">DatasetName</code></td>
<td><p>The name of the dataset.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_create_topic_refresh_schedule_:_RefreshSchedule">RefreshSchedule</code></td>
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

    svc$create_topic_refresh_schedule(
      AwsAccountId = "string",
      TopicId = "string",
      DatasetArn = "string",
      DatasetName = "string",
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
