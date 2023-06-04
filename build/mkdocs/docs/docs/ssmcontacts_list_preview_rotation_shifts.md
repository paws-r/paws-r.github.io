<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssmcontacts_list_preview_rotation_shifts</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of shifts based on rotation configuration parameters

### Description

Returns a list of shifts based on rotation configuration parameters.

The Incident Manager primarily uses this operation to populate the
**Preview** calendar. It is not typically run by end users.

### Usage

    ssmcontacts_list_preview_rotation_shifts(RotationStartTime, StartTime,
      EndTime, Members, TimeZoneId, Recurrence, Overrides, NextToken,
      MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssmcontacts_list_preview_rotation_shifts_:_RotationStartTime">RotationStartTime</code></td>
<td><p>The date and time a rotation would begin. The first shift is
calculated from this date and time.</p></td>
</tr>
<tr class="even">
<td><code
id="ssmcontacts_list_preview_rotation_shifts_:_StartTime">StartTime</code></td>
<td><p>Used to filter the range of calculated shifts before sending the
response back to the user.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssmcontacts_list_preview_rotation_shifts_:_EndTime">EndTime</code></td>
<td><p>[required] The date and time a rotation shift would end.</p></td>
</tr>
<tr class="even">
<td><code
id="ssmcontacts_list_preview_rotation_shifts_:_Members">Members</code></td>
<td><p>[required] The contacts that would be assigned to a
rotation.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssmcontacts_list_preview_rotation_shifts_:_TimeZoneId">TimeZoneId</code></td>
<td><p>[required] The time zone the rotation’s activity would be based
on, in Internet Assigned Numbers Authority (IANA) format. For example:
"America/Los_Angeles", "UTC", or "Asia/Seoul".</p></td>
</tr>
<tr class="even">
<td><code
id="ssmcontacts_list_preview_rotation_shifts_:_Recurrence">Recurrence</code></td>
<td><p>[required] Information about how long a rotation would last
before restarting at the beginning of the shift order.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssmcontacts_list_preview_rotation_shifts_:_Overrides">Overrides</code></td>
<td><p>Information about changes that would be made in a rotation
override.</p></td>
</tr>
<tr class="even">
<td><code
id="ssmcontacts_list_preview_rotation_shifts_:_NextToken">NextToken</code></td>
<td><p>A token to start the list. This token is used to get the next set
of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssmcontacts_list_preview_rotation_shifts_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this call. The call
also returns a token that can be specified in a subsequent call to get
the next set of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RotationShifts = list(
        list(
          ContactIds = list(
            "string"
          ),
          StartTime = as.POSIXct(
            "2015-01-01"
          ),
          EndTime = as.POSIXct(
            "2015-01-01"
          ),
          Type = "REGULAR"|"OVERRIDDEN",
          ShiftDetails = list(
            OverriddenContactIds = list(
              "string"
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_preview_rotation_shifts(
      RotationStartTime = as.POSIXct(
        "2015-01-01"
      ),
      StartTime = as.POSIXct(
        "2015-01-01"
      ),
      EndTime = as.POSIXct(
        "2015-01-01"
      ),
      Members = list(
        "string"
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
      Overrides = list(
        list(
          NewMembers = list(
            "string"
          ),
          StartTime = as.POSIXct(
            "2015-01-01"
          ),
          EndTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string",
      MaxResults = 123
    )
