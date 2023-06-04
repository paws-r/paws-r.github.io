<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_describe_refresh_schedule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides a summary of a refresh schedule

### Description

Provides a summary of a refresh schedule.

### Usage

    quicksight_describe_refresh_schedule(AwsAccountId, DataSetId,
      ScheduleId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_describe_refresh_schedule_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The Amazon Web Services account ID.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_describe_refresh_schedule_:_DataSetId">DataSetId</code></td>
<td><p>[required] The ID of the dataset.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_describe_refresh_schedule_:_ScheduleId">ScheduleId</code></td>
<td><p>[required] The ID of the refresh schedule.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RefreshSchedule = list(
        ScheduleId = "string",
        ScheduleFrequency = list(
          Interval = "MINUTE15"|"MINUTE30"|"HOURLY"|"DAILY"|"WEEKLY"|"MONTHLY",
          RefreshOnDay = list(
            DayOfWeek = "SUNDAY"|"MONDAY"|"TUESDAY"|"WEDNESDAY"|"THURSDAY"|"FRIDAY"|"SATURDAY",
            DayOfMonth = "string"
          ),
          Timezone = "string",
          TimeOfTheDay = "string"
        ),
        StartAfterDateTime = as.POSIXct(
          "2015-01-01"
        ),
        RefreshType = "INCREMENTAL_REFRESH"|"FULL_REFRESH",
        Arn = "string"
      ),
      Status = 123,
      RequestId = "string",
      Arn = "string"
    )

### Request syntax

    svc$describe_refresh_schedule(
      AwsAccountId = "string",
      DataSetId = "string",
      ScheduleId = "string"
    )
