<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssmcontacts_get_rotation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves information about an on-call rotation

### Description

Retrieves information about an on-call rotation.

### Usage

    ssmcontacts_get_rotation(RotationId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssmcontacts_get_rotation_:_RotationId">RotationId</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the on-call rotation
to retrieve information about.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RotationArn = "string",
      Name = "string",
      ContactIds = list(
        "string"
      ),
      StartTime = as.POSIXct(
        "2015-01-01"
      ),
      TimeZoneId = "string",
      Recurrence = list(
        MonthlySettings = list(
          list(
            DayOfMonth = 123,
            HandOffTime = list(
              HourOfDay = 123,
              MinuteOfHour = 123
            )
          )
        ),
        WeeklySettings = list(
          list(
            DayOfWeek = "MON"|"TUE"|"WED"|"THU"|"FRI"|"SAT"|"SUN",
            HandOffTime = list(
              HourOfDay = 123,
              MinuteOfHour = 123
            )
          )
        ),
        DailySettings = list(
          list(
            HourOfDay = 123,
            MinuteOfHour = 123
          )
        ),
        NumberOfOnCalls = 123,
        ShiftCoverages = list(
          list(
            list(
              Start = list(
                HourOfDay = 123,
                MinuteOfHour = 123
              ),
              End = list(
                HourOfDay = 123,
                MinuteOfHour = 123
              )
            )
          )
        ),
        RecurrenceMultiplier = 123
      )
    )

### Request syntax

    svc$get_rotation(
      RotationId = "string"
    )
