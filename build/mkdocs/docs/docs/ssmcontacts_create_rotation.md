<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssmcontacts_create_rotation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a rotation in an on-call schedule

### Description

Creates a rotation in an on-call schedule.

### Usage

    ssmcontacts_create_rotation(Name, ContactIds, StartTime, TimeZoneId,
      Recurrence, Tags, IdempotencyToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ssmcontacts_create_rotation_:_Name">Name</code></td>
<td><p>[required] The name of the rotation.</p></td>
</tr>
<tr class="even">
<td><code
id="ssmcontacts_create_rotation_:_ContactIds">ContactIds</code></td>
<td><p>[required] The Amazon Resource Names (ARNs) of the contacts to
add to the rotation.</p>
<p>The order that you list the contacts in is their shift order in the
rotation schedule. To change the order of the contact's shifts, use the
<code>update_rotation</code> operation.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssmcontacts_create_rotation_:_StartTime">StartTime</code></td>
<td><p>The date and time that the rotation goes into effect.</p></td>
</tr>
<tr class="even">
<td><code
id="ssmcontacts_create_rotation_:_TimeZoneId">TimeZoneId</code></td>
<td><p>[required] The time zone to base the rotation’s activity on in
Internet Assigned Numbers Authority (IANA) format. For example:
"America/Los_Angeles", "UTC", or "Asia/Seoul". For more information, see
the <a href="https://www.iana.org/time-zones">Time Zone Database</a> on
the IANA website.</p>
<p>Designators for time zones that don’t support Daylight Savings Time
rules, such as Pacific Standard Time (PST) and Pacific Daylight Time
(PDT), are not supported.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssmcontacts_create_rotation_:_Recurrence">Recurrence</code></td>
<td><p>[required] Information about the rule that specifies when a
shift's team members rotate.</p></td>
</tr>
<tr class="even">
<td><code id="ssmcontacts_create_rotation_:_Tags">Tags</code></td>
<td><p>Optional metadata to assign to the rotation. Tags enable you to
categorize a resource in different ways, such as by purpose, owner, or
environment. For more information, see <a
href="https://docs.aws.amazon.com/incident-manager/latest/userguide/tagging.html">Tagging
Incident Manager resources</a> in the <em>Incident Manager User
Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssmcontacts_create_rotation_:_IdempotencyToken">IdempotencyToken</code></td>
<td><p>A token that ensures that the operation is called only once with
the specified details.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RotationArn = "string"
    )

### Request syntax

    svc$create_rotation(
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
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      IdempotencyToken = "string"
    )
