<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatch_put_metric_alarm</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates or updates an alarm and associates it with the specified metric, metric math expression, anomaly detection model, or Metrics Insights query

### Description

Creates or updates an alarm and associates it with the specified metric,
metric math expression, anomaly detection model, or Metrics Insights
query. For more information about using a Metrics Insights query for an
alarm, see [Create alarms on Metrics Insights
queries](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Create_Metrics_Insights_Alarm.html).

Alarms based on anomaly detection models cannot have Auto Scaling
actions.

When this operation creates an alarm, the alarm state is immediately set
to `INSUFFICIENT_DATA`. The alarm is then evaluated and its state is set
appropriately. Any actions associated with the new state are then
executed.

When you update an existing alarm, its state is left unchanged, but the
update completely overwrites the previous configuration of the alarm.

If you are an IAM user, you must have Amazon EC2 permissions for some
alarm operations:

-   The `iam:CreateServiceLinkedRole` permission for all alarms with EC2
    actions

-   The `iam:CreateServiceLinkedRole` permissions to create an alarm
    with Systems Manager OpsItem or response plan actions.

The first time you create an alarm in the Amazon Web Services Management
Console, the CLI, or by using the PutMetricAlarm API, CloudWatch creates
the necessary service-linked role for you. The service-linked roles are
called `AWSServiceRoleForCloudWatchEvents` and
`AWSServiceRoleForCloudWatchAlarms_ActionSSM`. For more information, see
[Amazon Web Services service-linked
role](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_terms-and-concepts.html#iam-term-service-linked-role).

Each `put_metric_alarm` action has a maximum uncompressed payload of 120
KB.

**Cross-account alarms**

You can set an alarm on metrics in the current account, or in another
account. To create a cross-account alarm that watches a metric in a
different account, you must have completed the following pre-requisites:

-   The account where the metrics are located (the *sharing account*)
    must already have a sharing role named
    **CloudWatch-CrossAccountSharingRole**. If it does not already have
    this role, you must create it using the instructions in **Set up a
    sharing account** in [Cross-account cross-Region CloudWatch
    console](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Cross-Account-Cross-Region.html#enable-cross-account-cross-Region).
    The policy for that role must grant access to the ID of the account
    where you are creating the alarm.

-   The account where you are creating the alarm (the *monitoring
    account*) must already have a service-linked role named
    **AWSServiceRoleForCloudWatchCrossAccount** to allow CloudWatch to
    assume the sharing role in the sharing account. If it does not, you
    must create it following the directions in **Set up a monitoring
    account** in [Cross-account cross-Region CloudWatch
    console](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Cross-Account-Cross-Region.html#enable-cross-account-cross-Region).

### Usage

    cloudwatch_put_metric_alarm(AlarmName, AlarmDescription, ActionsEnabled,
      OKActions, AlarmActions, InsufficientDataActions, MetricName, Namespace,
      Statistic, ExtendedStatistic, Dimensions, Period, Unit,
      EvaluationPeriods, DatapointsToAlarm, Threshold, ComparisonOperator,
      TreatMissingData, EvaluateLowSampleCountPercentile, Metrics, Tags,
      ThresholdMetricId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatch_put_metric_alarm_:_AlarmName">AlarmName</code></td>
<td><p>[required] The name for the alarm. This name must be unique
within the Region.</p>
<p>The name must contain only UTF-8 characters, and can't contain ASCII
control characters</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatch_put_metric_alarm_:_AlarmDescription">AlarmDescription</code></td>
<td><p>The description for the alarm.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatch_put_metric_alarm_:_ActionsEnabled">ActionsEnabled</code></td>
<td><p>Indicates whether actions should be executed during any changes
to the alarm state. The default is <code>TRUE</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatch_put_metric_alarm_:_OKActions">OKActions</code></td>
<td><p>The actions to execute when this alarm transitions to an
<code>OK</code> state from any other state. Each action is specified as
an Amazon Resource Name (ARN). Valid values:</p>
<p><strong>EC2 actions:</strong></p>
<ul>
<li><p><code>arn:aws:automate:region:ec2:stop</code></p></li>
<li><p><code>arn:aws:automate:region:ec2:terminate</code></p></li>
<li><p><code>arn:aws:automate:region:ec2:reboot</code></p></li>
<li><p><code>arn:aws:automate:region:ec2:recover</code></p></li>
<li><p><code>arn:aws:swf:region:account-id:action/actions/AWS_EC2.InstanceId.Stop/1.0</code></p></li>
<li><p><code>arn:aws:swf:region:account-id:action/actions/AWS_EC2.InstanceId.Terminate/1.0</code></p></li>
<li><p><code>arn:aws:swf:region:account-id:action/actions/AWS_EC2.InstanceId.Reboot/1.0</code></p></li>
<li><p><code>arn:aws:swf:region:account-id:action/actions/AWS_EC2.InstanceId.Recover/1.0</code></p></li>
</ul>
<p><strong>Autoscaling action:</strong></p>
<ul>
<li><p><code>arn:aws:autoscaling:region:account-id:scalingPolicy:policy-id:autoScalingGroupName/group-friendly-name:policyName/policy-friendly-name </code></p></li>
</ul>
<p><strong>SNS notification action:</strong></p>
<ul>
<li><p><code>arn:aws:sns:region:account-id:sns-topic-name:autoScalingGroupName/group-friendly-name:policyName/policy-friendly-name </code></p></li>
</ul>
<p><strong>SSM integration actions:</strong></p>
<ul>
<li><p><code>arn:aws:ssm:region:account-id:opsitem:severity#CATEGORY=category-name </code></p></li>
<li><p><code>arn:aws:ssm-incidents::account-id:responseplan/response-plan-name </code></p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatch_put_metric_alarm_:_AlarmActions">AlarmActions</code></td>
<td><p>The actions to execute when this alarm transitions to the
<code>ALARM</code> state from any other state. Each action is specified
as an Amazon Resource Name (ARN). Valid values:</p>
<p><strong>EC2 actions:</strong></p>
<ul>
<li><p><code>arn:aws:automate:region:ec2:stop</code></p></li>
<li><p><code>arn:aws:automate:region:ec2:terminate</code></p></li>
<li><p><code>arn:aws:automate:region:ec2:reboot</code></p></li>
<li><p><code>arn:aws:automate:region:ec2:recover</code></p></li>
<li><p><code>arn:aws:swf:region:account-id:action/actions/AWS_EC2.InstanceId.Stop/1.0</code></p></li>
<li><p><code>arn:aws:swf:region:account-id:action/actions/AWS_EC2.InstanceId.Terminate/1.0</code></p></li>
<li><p><code>arn:aws:swf:region:account-id:action/actions/AWS_EC2.InstanceId.Reboot/1.0</code></p></li>
<li><p><code>arn:aws:swf:region:account-id:action/actions/AWS_EC2.InstanceId.Recover/1.0</code></p></li>
</ul>
<p><strong>Autoscaling action:</strong></p>
<ul>
<li><p><code>arn:aws:autoscaling:region:account-id:scalingPolicy:policy-id:autoScalingGroupName/group-friendly-name:policyName/policy-friendly-name </code></p></li>
</ul>
<p><strong>SNS notification action:</strong></p>
<ul>
<li><p><code>arn:aws:sns:region:account-id:sns-topic-name:autoScalingGroupName/group-friendly-name:policyName/policy-friendly-name </code></p></li>
</ul>
<p><strong>SSM integration actions:</strong></p>
<ul>
<li><p><code>arn:aws:ssm:region:account-id:opsitem:severity#CATEGORY=category-name </code></p></li>
<li><p><code>arn:aws:ssm-incidents::account-id:responseplan/response-plan-name </code></p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="cloudwatch_put_metric_alarm_:_InsufficientDataActions">InsufficientDataActions</code></td>
<td><p>The actions to execute when this alarm transitions to the
<code>INSUFFICIENT_DATA</code> state from any other state. Each action
is specified as an Amazon Resource Name (ARN). Valid values:</p>
<p><strong>EC2 actions:</strong></p>
<ul>
<li><p><code>arn:aws:automate:region:ec2:stop</code></p></li>
<li><p><code>arn:aws:automate:region:ec2:terminate</code></p></li>
<li><p><code>arn:aws:automate:region:ec2:reboot</code></p></li>
<li><p><code>arn:aws:automate:region:ec2:recover</code></p></li>
<li><p><code>arn:aws:swf:region:account-id:action/actions/AWS_EC2.InstanceId.Stop/1.0</code></p></li>
<li><p><code>arn:aws:swf:region:account-id:action/actions/AWS_EC2.InstanceId.Terminate/1.0</code></p></li>
<li><p><code>arn:aws:swf:region:account-id:action/actions/AWS_EC2.InstanceId.Reboot/1.0</code></p></li>
<li><p><code>arn:aws:swf:region:account-id:action/actions/AWS_EC2.InstanceId.Recover/1.0</code></p></li>
</ul>
<p><strong>Autoscaling action:</strong></p>
<ul>
<li><p><code>arn:aws:autoscaling:region:account-id:scalingPolicy:policy-id:autoScalingGroupName/group-friendly-name:policyName/policy-friendly-name </code></p></li>
</ul>
<p><strong>SNS notification action:</strong></p>
<ul>
<li><p><code>arn:aws:sns:region:account-id:sns-topic-name:autoScalingGroupName/group-friendly-name:policyName/policy-friendly-name </code></p></li>
</ul>
<p><strong>SSM integration actions:</strong></p>
<ul>
<li><p><code>arn:aws:ssm:region:account-id:opsitem:severity#CATEGORY=category-name </code></p></li>
<li><p><code>arn:aws:ssm-incidents::account-id:responseplan/response-plan-name </code></p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatch_put_metric_alarm_:_MetricName">MetricName</code></td>
<td><p>The name for the metric associated with the alarm. For each
<code>put_metric_alarm</code> operation, you must specify either
<code>MetricName</code> or a <code>Metrics</code> array.</p>
<p>If you are creating an alarm based on a math expression, you cannot
specify this parameter, or any of the <code>Dimensions</code>,
<code>Period</code>, <code>Namespace</code>, <code>Statistic</code>, or
<code>ExtendedStatistic</code> parameters. Instead, you specify all this
information in the <code>Metrics</code> array.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatch_put_metric_alarm_:_Namespace">Namespace</code></td>
<td><p>The namespace for the metric associated specified in
<code>MetricName</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatch_put_metric_alarm_:_Statistic">Statistic</code></td>
<td><p>The statistic for the metric specified in
<code>MetricName</code>, other than percentile. For percentile
statistics, use <code>ExtendedStatistic</code>. When you call
<code>put_metric_alarm</code> and specify a <code>MetricName</code>, you
must specify either <code>Statistic</code> or <code
style="white-space: pre;">⁠ExtendedStatistic,⁠</code> but not
both.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatch_put_metric_alarm_:_ExtendedStatistic">ExtendedStatistic</code></td>
<td><p>The percentile statistic for the metric specified in
<code>MetricName</code>. Specify a value between p0.0 and p100. When you
call <code>put_metric_alarm</code> and specify a
<code>MetricName</code>, you must specify either <code>Statistic</code>
or <code style="white-space: pre;">⁠ExtendedStatistic,⁠</code> but not
both.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatch_put_metric_alarm_:_Dimensions">Dimensions</code></td>
<td><p>The dimensions for the metric specified in
<code>MetricName</code>.</p></td>
</tr>
<tr class="even">
<td><code id="cloudwatch_put_metric_alarm_:_Period">Period</code></td>
<td><p>The length, in seconds, used each time the metric specified in
<code>MetricName</code> is evaluated. Valid values are 10, 30, and any
multiple of 60.</p>
<p><code>Period</code> is required for alarms based on static
thresholds. If you are creating an alarm based on a metric math
expression, you specify the period for each metric within the objects in
the <code>Metrics</code> array.</p>
<p>Be sure to specify 10 or 30 only for metrics that are stored by a
<code>put_metric_data</code> call with a <code>StorageResolution</code>
of 1. If you specify a period of 10 or 30 for a metric that does not
have sub-minute resolution, the alarm still attempts to gather data at
the period rate that you specify. In this case, it does not receive data
for the attempts that do not correspond to a one-minute data resolution,
and the alarm might often lapse into INSUFFICENT_DATA status. Specifying
10 or 30 also sets this alarm as a high-resolution alarm, which has a
higher charge than other alarms. For more information about pricing, see
<a href="https://aws.amazon.com/cloudwatch/pricing/">Amazon CloudWatch
Pricing</a>.</p>
<p>An alarm's total current evaluation period can be no longer than one
day, so <code>Period</code> multiplied by <code>EvaluationPeriods</code>
cannot be more than 86,400 seconds.</p></td>
</tr>
<tr class="odd">
<td><code id="cloudwatch_put_metric_alarm_:_Unit">Unit</code></td>
<td><p>The unit of measure for the statistic. For example, the units for
the Amazon EC2 NetworkIn metric are Bytes because NetworkIn tracks the
number of bytes that an instance receives on all network interfaces. You
can also specify a unit when you create a custom metric. Units help
provide conceptual meaning to your data. Metric data points that specify
a unit of measure, such as Percent, are aggregated separately.</p>
<p>If you don't specify <code>Unit</code>, CloudWatch retrieves all unit
types that have been published for the metric and attempts to evaluate
the alarm. Usually, metrics are published with only one unit, so the
alarm works as intended.</p>
<p>However, if the metric is published with multiple types of units and
you don't specify a unit, the alarm's behavior is not defined and it
behaves unpredictably.</p>
<p>We recommend omitting <code>Unit</code> so that you don't
inadvertently specify an incorrect unit that is not published for this
metric. Doing so causes the alarm to be stuck in the <code
style="white-space: pre;">⁠INSUFFICIENT DATA⁠</code> state.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatch_put_metric_alarm_:_EvaluationPeriods">EvaluationPeriods</code></td>
<td><p>[required] The number of periods over which data is compared to
the specified threshold. If you are setting an alarm that requires that
a number of consecutive data points be breaching to trigger the alarm,
this value specifies that number. If you are setting an "M out of N"
alarm, this value is the N.</p>
<p>An alarm's total current evaluation period can be no longer than one
day, so this number multiplied by <code>Period</code> cannot be more
than 86,400 seconds.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatch_put_metric_alarm_:_DatapointsToAlarm">DatapointsToAlarm</code></td>
<td><p>The number of data points that must be breaching to trigger the
alarm. This is used only if you are setting an "M out of N" alarm. In
that case, this value is the M. For more information, see <a
href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/AlarmThatSendsEmail.html#alarm-evaluation">Evaluating
an Alarm</a> in the <em>Amazon CloudWatch User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatch_put_metric_alarm_:_Threshold">Threshold</code></td>
<td><p>The value against which the specified statistic is compared.</p>
<p>This parameter is required for alarms based on static thresholds, but
should not be used for alarms based on anomaly detection
models.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatch_put_metric_alarm_:_ComparisonOperator">ComparisonOperator</code></td>
<td><p>[required] The arithmetic operation to use when comparing the
specified statistic and threshold. The specified statistic value is used
as the first operand.</p>
<p>The values <code>LessThanLowerOrGreaterThanUpperThreshold</code>,
<code>LessThanLowerThreshold</code>, and
<code>GreaterThanUpperThreshold</code> are used only for alarms based on
anomaly detection models.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatch_put_metric_alarm_:_TreatMissingData">TreatMissingData</code></td>
<td><p>Sets how this alarm is to handle missing data points. If
<code>TreatMissingData</code> is omitted, the default behavior of
<code>missing</code> is used. For more information, see <a
href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/AlarmThatSendsEmail.html#alarms-and-missing-data">Configuring
How CloudWatch Alarms Treats Missing Data</a>.</p>
<p>Valid Values:
<code>breaching | notBreaching | ignore | missing</code></p>
<p>Alarms that evaluate metrics in the <code>AWS/DynamoDB</code>
namespace always <code>ignore</code> missing data even if you choose a
different option for <code>TreatMissingData</code>. When an
<code>AWS/DynamoDB</code> metric has missing data, alarms that evaluate
that metric remain in their current state.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatch_put_metric_alarm_:_EvaluateLowSampleCountPercentile">EvaluateLowSampleCountPercentile</code></td>
<td><p>Used only for alarms based on percentiles. If you specify
<code>ignore</code>, the alarm state does not change during periods with
too few data points to be statistically significant. If you specify
<code>evaluate</code> or omit this parameter, the alarm is always
evaluated and possibly changes state no matter how many data points are
available. For more information, see <a
href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/AlarmThatSendsEmail.html#percentiles-with-low-samples">Percentile-Based
CloudWatch Alarms and Low Data Samples</a>.</p>
<p>Valid Values: <code>evaluate | ignore</code></p></td>
</tr>
<tr class="even">
<td><code id="cloudwatch_put_metric_alarm_:_Metrics">Metrics</code></td>
<td><p>An array of <code>MetricDataQuery</code> structures that enable
you to create an alarm based on the result of a metric math expression.
For each <code>put_metric_alarm</code> operation, you must specify
either <code>MetricName</code> or a <code>Metrics</code> array.</p>
<p>Each item in the <code>Metrics</code> array either retrieves a metric
or performs a math expression.</p>
<p>One item in the <code>Metrics</code> array is the expression that the
alarm watches. You designate this expression by setting
<code>ReturnData</code> to true for this object in the array. For more
information, see <a
href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_MetricDataQuery.html">MetricDataQuery</a>.</p>
<p>If you use the <code>Metrics</code> parameter, you cannot include the
<code>MetricName</code>, <code>Dimensions</code>, <code>Period</code>,
<code>Namespace</code>, <code>Statistic</code>, or
<code>ExtendedStatistic</code> parameters of
<code>put_metric_alarm</code> in the same operation. Instead, you
retrieve the metrics you are using in your math expression as part of
the <code>Metrics</code> array.</p></td>
</tr>
<tr class="odd">
<td><code id="cloudwatch_put_metric_alarm_:_Tags">Tags</code></td>
<td><p>A list of key-value pairs to associate with the alarm. You can
associate as many as 50 tags with an alarm.</p>
<p>Tags can help you organize and categorize your resources. You can
also use them to scope user permissions by granting a user permission to
access or change only resources with certain tag values.</p>
<p>If you are using this operation to update an existing alarm, any tags
you specify in this parameter are ignored. To change the tags of an
existing alarm, use <code>tag_resource</code> or
<code>untag_resource</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatch_put_metric_alarm_:_ThresholdMetricId">ThresholdMetricId</code></td>
<td><p>If this is an alarm based on an anomaly detection model, make
this value match the ID of the <code>ANOMALY_DETECTION_BAND</code>
function.</p>
<p>For an example of how to use this parameter, see the <strong>Anomaly
Detection Model Alarm</strong> example on this page.</p>
<p>If your alarm uses this parameter, it cannot have Auto Scaling
actions.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_metric_alarm(
      AlarmName = "string",
      AlarmDescription = "string",
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
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      ThresholdMetricId = "string"
    )
