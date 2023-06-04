<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssmcontacts_update_rotation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the information specified for an on-call rotation

### Description

Updates the information specified for an on-call rotation.

### Usage

    ssmcontacts_update_rotation(RotationId, ContactIds, StartTime,
      TimeZoneId, Recurrence)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssmcontacts_update_rotation_:_RotationId">RotationId</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the rotation to
update.</p></td>
</tr>
<tr class="even">
<td><code
id="ssmcontacts_update_rotation_:_ContactIds">ContactIds</code></td>
<td><p>The Amazon Resource Names (ARNs) of the contacts to include in
the updated rotation.</p>
<p>The order in which you list the contacts is their shift order in the
rotation schedule.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssmcontacts_update_rotation_:_StartTime">StartTime</code></td>
<td><p>The date and time the rotation goes into effect.</p></td>
</tr>
<tr class="even">
<td><code
id="ssmcontacts_update_rotation_:_TimeZoneId">TimeZoneId</code></td>
<td><p>The time zone to base the updated rotation’s activity on, in
Internet Assigned Numbers Authority (IANA) format. For example:
"America/Los_Angeles", "UTC", or "Asia/Seoul". For more information, see
the <a href="https://www.iana.org/time-zones">Time Zone Database</a> on
the IANA website.</p>
<p>Designators for time zones that don’t support Daylight Savings Time
Rules, such as Pacific Standard Time (PST) and Pacific Daylight Time
(PDT), aren't supported.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssmcontacts_update_rotation_:_Recurrence">Recurrence</code></td>
<td><p>[required] Information about how long the updated rotation lasts
before restarting at the beginning of the shift order.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_rotation(
      RotationId = "string",
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
