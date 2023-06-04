<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_list_topic_refresh_schedules</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all of the refresh schedules for a topic

### Description

Lists all of the refresh schedules for a topic.

### Usage

    quicksight_list_topic_refresh_schedules(AwsAccountId, TopicId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_list_topic_refresh_schedules_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID of the Amazon Web Services account that
contains the topic whose refresh schedule you want described.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_list_topic_refresh_schedules_:_TopicId">TopicId</code></td>
<td><p>[required] The ID for the topic that you want to describe. This
ID is unique per Amazon Web Services Region for each Amazon Web Services
account.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TopicId = "string",
      TopicArn = "string",
      RefreshSchedules = list(
        list(
          DatasetId = "string",
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
      ),
      Status = 123,
      RequestId = "string"
    )

### Request syntax

    svc$list_topic_refresh_schedules(
      AwsAccountId = "string",
      TopicId = "string"
    )
