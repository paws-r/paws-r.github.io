<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatch_describe_alarms</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the specified alarms

### Description

Retrieves the specified alarms. You can filter the results by specifying
a prefix for the alarm name, the alarm state, or a prefix for any
action.

To use this operation and return information about composite alarms, you
must be signed on with the `cloudwatch:DescribeAlarms` permission that
is scoped to `*`. You can't return information about composite alarms if
your `cloudwatch:DescribeAlarms` permission has a narrower scope.

### Usage

    cloudwatch_describe_alarms(AlarmNames, AlarmNamePrefix, AlarmTypes,
      ChildrenOfAlarmName, ParentsOfAlarmName, StateValue, ActionPrefix,
      MaxRecords, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatch_describe_alarms_:_AlarmNames">AlarmNames</code></td>
<td><p>The names of the alarms to retrieve information about.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatch_describe_alarms_:_AlarmNamePrefix">AlarmNamePrefix</code></td>
<td><p>An alarm name prefix. If you specify this parameter, you receive
information about all alarms that have names that start with this
prefix.</p>
<p>If this parameter is specified, you cannot specify
<code>AlarmNames</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatch_describe_alarms_:_AlarmTypes">AlarmTypes</code></td>
<td><p>Use this parameter to specify whether you want the operation to
return metric alarms or composite alarms. If you omit this parameter,
only metric alarms are returned.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatch_describe_alarms_:_ChildrenOfAlarmName">ChildrenOfAlarmName</code></td>
<td><p>If you use this parameter and specify the name of a composite
alarm, the operation returns information about the "children" alarms of
the alarm you specify. These are the metric alarms and composite alarms
referenced in the <code>AlarmRule</code> field of the composite alarm
that you specify in <code>ChildrenOfAlarmName</code>. Information about
the composite alarm that you name in <code>ChildrenOfAlarmName</code> is
not returned.</p>
<p>If you specify <code>ChildrenOfAlarmName</code>, you cannot specify
any other parameters in the request except for <code>MaxRecords</code>
and <code>NextToken</code>. If you do so, you receive a validation
error.</p>
<p>Only the <code style="white-space: pre;">⁠Alarm Name⁠</code>,
<code>ARN</code>, <code>StateValue</code> (OK/ALARM/INSUFFICIENT_DATA),
and <code>StateUpdatedTimestamp</code> information are returned by this
operation when you use this parameter. To get complete information about
these alarms, perform another <code>describe_alarms</code> operation and
specify the parent alarm names in the <code>AlarmNames</code>
parameter.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatch_describe_alarms_:_ParentsOfAlarmName">ParentsOfAlarmName</code></td>
<td><p>If you use this parameter and specify the name of a metric or
composite alarm, the operation returns information about the "parent"
alarms of the alarm you specify. These are the composite alarms that
have <code>AlarmRule</code> parameters that reference the alarm named in
<code>ParentsOfAlarmName</code>. Information about the alarm that you
specify in <code>ParentsOfAlarmName</code> is not returned.</p>
<p>If you specify <code>ParentsOfAlarmName</code>, you cannot specify
any other parameters in the request except for <code>MaxRecords</code>
and <code>NextToken</code>. If you do so, you receive a validation
error.</p>
<p>Only the Alarm Name and ARN are returned by this operation when you
use this parameter. To get complete information about these alarms,
perform another <code>describe_alarms</code> operation and specify the
parent alarm names in the <code>AlarmNames</code> parameter.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatch_describe_alarms_:_StateValue">StateValue</code></td>
<td><p>Specify this parameter to receive information only about alarms
that are currently in the state that you specify.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatch_describe_alarms_:_ActionPrefix">ActionPrefix</code></td>
<td><p>Use this parameter to filter the results of the operation to only
those alarms that use a certain alarm action. For example, you could
specify the ARN of an SNS topic to find all alarms that send
notifications to that topic.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatch_describe_alarms_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of alarm descriptions to retrieve.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatch_describe_alarms_:_NextToken">NextToken</code></td>
<td><p>The token returned by a previous call to indicate that there is
more data available.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CompositeAlarms = list(
        list(
          ActionsEnabled = TRUE|FALSE,
          AlarmActions = list(
            "string"
          ),
          AlarmArn = "string",
          AlarmConfigurationUpdatedTimestamp = as.POSIXct(
            "2015-01-01"
          ),
          AlarmDescription = "string",
          AlarmName = "string",
          AlarmRule = "string",
          InsufficientDataActions = list(
            "string"
          ),
          OKActions = list(
            "string"
          ),
          StateReason = "string",
          StateReasonData = "string",
          StateUpdatedTimestamp = as.POSIXct(
            "2015-01-01"
          ),
          StateValue = "OK"|"ALARM"|"INSUFFICIENT_DATA",
          StateTransitionedTimestamp = as.POSIXct(
            "2015-01-01"
          ),
          ActionsSuppressedBy = "WaitPeriod"|"ExtensionPeriod"|"Alarm",
          ActionsSuppressedReason = "string",
          ActionsSuppressor = "string",
          ActionsSuppressorWaitPeriod = 123,
          ActionsSuppressorExtensionPeriod = 123
        )
      ),
      MetricAlarms = list(
        list(
          AlarmName = "string",
          AlarmArn = "string",
          AlarmDescription = "string",
          AlarmConfigurationUpdatedTimestamp = as.POSIXct(
            "2015-01-01"
          ),
          ActionsEnabled = TRUE|FALSE,
          OKActions = list(
            "string"
          ),
          AlarmActions = list(
            "string"
          ),
          InsufficientDataActions = list(
            "string"
          ),
          StateValue = "OK"|"ALARM"|"INSUFFICIENT_DATA",
          StateReason = "string",
          StateReasonData = "string",
          StateUpdatedTimestamp = as.POSIXct(
            "2015-01-01"
          ),
          MetricName = "string",
          Namespace = "string",
          Statistic = "SampleCount"|"Average"|"Sum"|"Minimum"|"Maximum",
          ExtendedStatistic = "string",
          Dimensions = list(
            list(
              Name = "string",
              Value = "string"
            )
          ),
          Period = 123,
          Unit = "Seconds"|"Microseconds"|"Milliseconds"|"Bytes"|"Kilobytes"|"Megabytes"|"Gigabytes"|"Terabytes"|"Bits"|"Kilobits"|"Megabits"|"Gigabits"|"Terabits"|"Percent"|"Count"|"Bytes/Second"|"Kilobytes/Second"|"Megabytes/Second"|"Gigabytes/Second"|"Terabytes/Second"|"Bits/Second"|"Kilobits/Second"|"Megabits/Second"|"Gigabits/Second"|"Terabits/Second"|"Count/Second"|"None",
          EvaluationPeriods = 123,
          DatapointsToAlarm = 123,
          Threshold = 123.0,
          ComparisonOperator = "GreaterThanOrEqualToThreshold"|"GreaterThanThreshold"|"LessThanThreshold"|"LessThanOrEqualToThreshold"|"LessThanLowerOrGreaterThanUpperThreshold"|"LessThanLowerThreshold"|"GreaterThanUpperThreshold",
          TreatMissingData = "string",
          EvaluateLowSampleCountPercentile = "string",
          Metrics = list(
            list(
              Id = "string",
              MetricStat = list(
                Metric = list(
                  Namespace = "string",
                  MetricName = "string",
                  Dimensions = list(
                    list(
                      Name = "string",
                      Value = "string"
                    )
                  )
                ),
                Period = 123,
                Stat = "string",
                Unit = "Seconds"|"Microseconds"|"Milliseconds"|"Bytes"|"Kilobytes"|"Megabytes"|"Gigabytes"|"Terabytes"|"Bits"|"Kilobits"|"Megabits"|"Gigabits"|"Terabits"|"Percent"|"Count"|"Bytes/Second"|"Kilobytes/Second"|"Megabytes/Second"|"Gigabytes/Second"|"Terabytes/Second"|"Bits/Second"|"Kilobits/Second"|"Megabits/Second"|"Gigabits/Second"|"Terabits/Second"|"Count/Second"|"None"
              ),
              Expression = "string",
              Label = "string",
              ReturnData = TRUE|FALSE,
              Period = 123,
              AccountId = "string"
            )
          ),
          ThresholdMetricId = "string",
          EvaluationState = "PARTIAL_DATA",
          StateTransitionedTimestamp = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_alarms(
      AlarmNames = list(
        "string"
      ),
      AlarmNamePrefix = "string",
      AlarmTypes = list(
        "CompositeAlarm"|"MetricAlarm"
      ),
      ChildrenOfAlarmName = "string",
      ParentsOfAlarmName = "string",
      StateValue = "OK"|"ALARM"|"INSUFFICIENT_DATA",
      ActionPrefix = "string",
      MaxRecords = 123,
      NextToken = "string"
    )
