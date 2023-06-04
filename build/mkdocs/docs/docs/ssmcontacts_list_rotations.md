<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssmcontacts_list_rotations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a list of on-call rotations

### Description

Retrieves a list of on-call rotations.

### Usage

    ssmcontacts_list_rotations(RotationNamePrefix, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssmcontacts_list_rotations_:_RotationNamePrefix">RotationNamePrefix</code></td>
<td><p>A filter to include rotations in list results based on their
common prefix. For example, entering prod returns a list of all rotation
names that begin with <code>prod</code>, such as <code>production</code>
and <code>prod-1</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ssmcontacts_list_rotations_:_NextToken">NextToken</code></td>
<td><p>A token to start the list. Use this token to get the next set of
results.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssmcontacts_list_rotations_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this call. The call
also returns a token that you can specify in a subsequent call to get
the next set of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      Rotations = list(
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
      )
    )

### Request syntax

    svc$list_rotations(
      RotationNamePrefix = "string",
      NextToken = "string",
      MaxResults = 123
    )
