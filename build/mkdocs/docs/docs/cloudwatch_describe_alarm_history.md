<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatch_describe_alarm_history</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the history for the specified alarm

### Description

Retrieves the history for the specified alarm. You can filter the
results by date range or item type. If an alarm name is not specified,
the histories for either all metric alarms or all composite alarms are
returned.

CloudWatch retains the history of an alarm even if you delete the alarm.

To use this operation and return information about a composite alarm,
you must be signed on with the `cloudwatch:DescribeAlarmHistory`
permission that is scoped to `*`. You can't return information about
composite alarms if your `cloudwatch:DescribeAlarmHistory` permission
has a narrower scope.

### Usage

    cloudwatch_describe_alarm_history(AlarmName, AlarmTypes,
      HistoryItemType, StartDate, EndDate, MaxRecords, NextToken, ScanBy)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatch_describe_alarm_history_:_AlarmName">AlarmName</code></td>
<td><p>The name of the alarm.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatch_describe_alarm_history_:_AlarmTypes">AlarmTypes</code></td>
<td><p>Use this parameter to specify whether you want the operation to
return metric alarms or composite alarms. If you omit this parameter,
only metric alarms are returned.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatch_describe_alarm_history_:_HistoryItemType">HistoryItemType</code></td>
<td><p>The type of alarm histories to retrieve.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatch_describe_alarm_history_:_StartDate">StartDate</code></td>
<td><p>The starting date to retrieve alarm history.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatch_describe_alarm_history_:_EndDate">EndDate</code></td>
<td><p>The ending date to retrieve alarm history.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatch_describe_alarm_history_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of alarm history records to retrieve.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatch_describe_alarm_history_:_NextToken">NextToken</code></td>
<td><p>The token returned by a previous call to indicate that there is
more data available.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatch_describe_alarm_history_:_ScanBy">ScanBy</code></td>
<td><p>Specified whether to return the newest or oldest alarm history
first. Specify <code>TimestampDescending</code> to have the newest event
history returned first, and specify <code>TimestampAscending</code> to
have the oldest history returned first.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AlarmHistoryItems = list(
        list(
          AlarmName = "string",
          AlarmType = "CompositeAlarm"|"MetricAlarm",
          Timestamp = as.POSIXct(
            "2015-01-01"
          ),
          HistoryItemType = "ConfigurationUpdate"|"StateUpdate"|"Action",
          HistorySummary = "string",
          HistoryData = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_alarm_history(
      AlarmName = "string",
      AlarmTypes = list(
        "CompositeAlarm"|"MetricAlarm"
      ),
      HistoryItemType = "ConfigurationUpdate"|"StateUpdate"|"Action",
      StartDate = as.POSIXct(
        "2015-01-01"
      ),
      EndDate = as.POSIXct(
        "2015-01-01"
      ),
      MaxRecords = 123,
      NextToken = "string",
      ScanBy = "TimestampDescending"|"TimestampAscending"
    )
