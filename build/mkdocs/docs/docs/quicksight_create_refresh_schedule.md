<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_create_refresh_schedule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a refresh schedule for a dataset

### Description

Creates a refresh schedule for a dataset. You can create up to 5
different schedules for a single dataset.

### Usage

    quicksight_create_refresh_schedule(DataSetId, AwsAccountId, Schedule)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_create_refresh_schedule_:_DataSetId">DataSetId</code></td>
<td><p>[required] The ID of the dataset.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_create_refresh_schedule_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The Amazon Web Services account ID.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_create_refresh_schedule_:_Schedule">Schedule</code></td>
<td><p>[required] The refresh schedule.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Status = 123,
      RequestId = "string",
      ScheduleId = "string",
      Arn = "string"
    )

### Request syntax

    svc$create_refresh_schedule(
      DataSetId = "string",
      AwsAccountId = "string",
      Schedule = list(
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
      )
    )
