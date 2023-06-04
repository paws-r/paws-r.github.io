<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_list_refresh_schedules</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the refresh schedules of a dataset

### Description

Lists the refresh schedules of a dataset. Each dataset can have up to 5
schedules.

### Usage

    quicksight_list_refresh_schedules(AwsAccountId, DataSetId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_list_refresh_schedules_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The Amazon Web Services account ID.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_list_refresh_schedules_:_DataSetId">DataSetId</code></td>
<td><p>[required] The ID of the dataset.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RefreshSchedules = list(
        list(
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
      ),
      Status = 123,
      RequestId = "string"
    )

### Request syntax

    svc$list_refresh_schedules(
      AwsAccountId = "string",
      DataSetId = "string"
    )
