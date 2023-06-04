<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lightsail_put_alarm</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates or updates an alarm, and associates it with the specified metric

### Description

Creates or updates an alarm, and associates it with the specified
metric.

An alarm is used to monitor a single metric for one of your resources.
When a metric condition is met, the alarm can notify you by email, SMS
text message, and a banner displayed on the Amazon Lightsail console.
For more information, see Alarms in Amazon Lightsail.

When this action creates an alarm, the alarm state is immediately set to
`INSUFFICIENT_DATA`. The alarm is then evaluated and its state is set
appropriately. Any actions associated with the new state are then
executed.

When you update an existing alarm, its state is left unchanged, but the
update completely overwrites the previous configuration of the alarm.
The alarm is then evaluated with the updated configuration.

### Usage

    lightsail_put_alarm(alarmName, metricName, monitoredResourceName,
      comparisonOperator, threshold, evaluationPeriods, datapointsToAlarm,
      treatMissingData, contactProtocols, notificationTriggers,
      notificationEnabled)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="lightsail_put_alarm_:_alarmName">alarmName</code></td>
<td><p>[required] The name for the alarm. Specify the name of an
existing alarm to update, and overwrite the previous configuration of
the alarm.</p></td>
</tr>
<tr class="even">
<td><code id="lightsail_put_alarm_:_metricName">metricName</code></td>
<td><p>[required] The name of the metric to associate with the
alarm.</p>
<p>You can configure up to two alarms per metric.</p>
<p>The following metrics are available for each resource type:</p>
<ul>
<li><p><strong>Instances</strong>: <code>BurstCapacityPercentage</code>,
<code>BurstCapacityTime</code>, <code>CPUUtilization</code>,
<code>NetworkIn</code>, <code>NetworkOut</code>,
<code>StatusCheckFailed</code>, <code>StatusCheckFailed_Instance</code>,
and <code>StatusCheckFailed_System</code>.</p></li>
<li><p><strong>Load balancers</strong>:
<code>ClientTLSNegotiationErrorCount</code>,
<code>HealthyHostCount</code>, <code>UnhealthyHostCount</code>,
<code>HTTPCode_LB_4XX_Count</code>, <code>HTTPCode_LB_5XX_Count</code>,
<code>HTTPCode_Instance_2XX_Count</code>,
<code>HTTPCode_Instance_3XX_Count</code>,
<code>HTTPCode_Instance_4XX_Count</code>,
<code>HTTPCode_Instance_5XX_Count</code>,
<code>InstanceResponseTime</code>, <code>RejectedConnectionCount</code>,
and <code>RequestCount</code>.</p></li>
<li><p><strong>Relational databases</strong>:
<code>CPUUtilization</code>, <code>DatabaseConnections</code>,
<code>DiskQueueDepth</code>, <code>FreeStorageSpace</code>,
<code>NetworkReceiveThroughput</code>, and
<code>NetworkTransmitThroughput</code>.</p></li>
</ul>
<p>For more information about these metrics, see Metrics available in
Lightsail.</p></td>
</tr>
<tr class="odd">
<td><code
id="lightsail_put_alarm_:_monitoredResourceName">monitoredResourceName</code></td>
<td><p>[required] The name of the Lightsail resource that will be
monitored.</p>
<p>Instances, load balancers, and relational databases are the only
Lightsail resources that can currently be monitored by alarms.</p></td>
</tr>
<tr class="even">
<td><code
id="lightsail_put_alarm_:_comparisonOperator">comparisonOperator</code></td>
<td><p>[required] The arithmetic operation to use when comparing the
specified statistic to the threshold. The specified statistic value is
used as the first operand.</p></td>
</tr>
<tr class="odd">
<td><code id="lightsail_put_alarm_:_threshold">threshold</code></td>
<td><p>[required] The value against which the specified statistic is
compared.</p></td>
</tr>
<tr class="even">
<td><code
id="lightsail_put_alarm_:_evaluationPeriods">evaluationPeriods</code></td>
<td><p>[required] The number of most recent periods over which data is
compared to the specified threshold. If you are setting an "M out of N"
alarm, this value (<code>evaluationPeriods</code>) is the N.</p>
<p>If you are setting an alarm that requires that a number of
consecutive data points be breaching to trigger the alarm, this value
specifies the rolling period of time in which data points are
evaluated.</p>
<p>Each evaluation period is five minutes long. For example, specify an
evaluation period of 24 to evaluate a metric over a rolling period of
two hours.</p>
<p>You can specify a minimum valuation period of 1 (5 minutes), and a
maximum evaluation period of 288 (24 hours).</p></td>
</tr>
<tr class="odd">
<td><code
id="lightsail_put_alarm_:_datapointsToAlarm">datapointsToAlarm</code></td>
<td><p>The number of data points that must be not within the specified
threshold to trigger the alarm. If you are setting an "M out of N"
alarm, this value (<code>datapointsToAlarm</code>) is the M.</p></td>
</tr>
<tr class="even">
<td><code
id="lightsail_put_alarm_:_treatMissingData">treatMissingData</code></td>
<td><p>Sets how this alarm will handle missing data points.</p>
<p>An alarm can treat missing data in the following ways:</p>
<ul>
<li><p><code>breaching</code> - Assume the missing data is not within
the threshold. Missing data counts towards the number of times the
metric is not within the threshold.</p></li>
<li><p><code>notBreaching</code> - Assume the missing data is within the
threshold. Missing data does not count towards the number of times the
metric is not within the threshold.</p></li>
<li><p><code>ignore</code> - Ignore the missing data. Maintains the
current alarm state.</p></li>
<li><p><code>missing</code> - Missing data is treated as
missing.</p></li>
</ul>
<p>If <code>treatMissingData</code> is not specified, the default
behavior of <code>missing</code> is used.</p></td>
</tr>
<tr class="odd">
<td><code
id="lightsail_put_alarm_:_contactProtocols">contactProtocols</code></td>
<td><p>The contact protocols to use for the alarm, such as
<code>Email</code>, <code>SMS</code> (text messaging), or both.</p>
<p>A notification is sent via the specified contact protocol if
notifications are enabled for the alarm, and when the alarm is
triggered.</p>
<p>A notification is not sent if a contact protocol is not specified, if
the specified contact protocol is not configured in the Amazon Web
Services Region, or if notifications are not enabled for the alarm using
the <code>notificationEnabled</code> paramater.</p>
<p>Use the <code>create_contact_method</code> action to configure a
contact protocol in an Amazon Web Services Region.</p></td>
</tr>
<tr class="even">
<td><code
id="lightsail_put_alarm_:_notificationTriggers">notificationTriggers</code></td>
<td><p>The alarm states that trigger a notification.</p>
<p>An alarm has the following possible states:</p>
<ul>
<li><p><code>ALARM</code> - The metric is outside of the defined
threshold.</p></li>
<li><p><code>INSUFFICIENT_DATA</code> - The alarm has just started, the
metric is not available, or not enough data is available for the metric
to determine the alarm state.</p></li>
<li><p><code>OK</code> - The metric is within the defined
threshold.</p></li>
</ul>
<p>When you specify a notification trigger, the <code>ALARM</code> state
must be specified. The <code>INSUFFICIENT_DATA</code> and
<code>OK</code> states can be specified in addition to the
<code>ALARM</code> state.</p>
<ul>
<li><p>If you specify <code>OK</code> as an alarm trigger, a
notification is sent when the alarm switches from an <code>ALARM</code>
or <code>INSUFFICIENT_DATA</code> alarm state to an <code>OK</code>
state. This can be thought of as an <em>all clear</em> alarm
notification.</p></li>
<li><p>If you specify <code>INSUFFICIENT_DATA</code> as the alarm
trigger, a notification is sent when the alarm switches from an
<code>OK</code> or <code>ALARM</code> alarm state to an
<code>INSUFFICIENT_DATA</code> state.</p></li>
</ul>
<p>The notification trigger defaults to <code>ALARM</code> if you don't
specify this parameter.</p></td>
</tr>
<tr class="odd">
<td><code
id="lightsail_put_alarm_:_notificationEnabled">notificationEnabled</code></td>
<td><p>Indicates whether the alarm is enabled.</p>
<p>Notifications are enabled by default if you don't specify this
parameter.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      operations = list(
        list(
          id = "string",
          resourceName = "string",
          resourceType = "ContainerService"|"Instance"|"StaticIp"|"KeyPair"|"InstanceSnapshot"|"Domain"|"PeeredVpc"|"LoadBalancer"|"LoadBalancerTlsCertificate"|"Disk"|"DiskSnapshot"|"RelationalDatabase"|"RelationalDatabaseSnapshot"|"ExportSnapshotRecord"|"CloudFormationStackRecord"|"Alarm"|"ContactMethod"|"Distribution"|"Certificate"|"Bucket",
          createdAt = as.POSIXct(
            "2015-01-01"
          ),
          location = list(
            availabilityZone = "string",
            regionName = "us-east-1"|"us-east-2"|"us-west-1"|"us-west-2"|"eu-west-1"|"eu-west-2"|"eu-west-3"|"eu-central-1"|"ca-central-1"|"ap-south-1"|"ap-southeast-1"|"ap-southeast-2"|"ap-northeast-1"|"ap-northeast-2"|"eu-north-1"
          ),
          isTerminal = TRUE|FALSE,
          operationDetails = "string",
          operationType = "DeleteKnownHostKeys"|"DeleteInstance"|"CreateInstance"|"StopInstance"|"StartInstance"|"RebootInstance"|"OpenInstancePublicPorts"|"PutInstancePublicPorts"|"CloseInstancePublicPorts"|"AllocateStaticIp"|"ReleaseStaticIp"|"AttachStaticIp"|"DetachStaticIp"|"UpdateDomainEntry"|"DeleteDomainEntry"|"CreateDomain"|"DeleteDomain"|"CreateInstanceSnapshot"|"DeleteInstanceSnapshot"|"CreateInstancesFromSnapshot"|"CreateLoadBalancer"|"DeleteLoadBalancer"|"AttachInstancesToLoadBalancer"|"DetachInstancesFromLoadBalancer"|"UpdateLoadBalancerAttribute"|"CreateLoadBalancerTlsCertificate"|"DeleteLoadBalancerTlsCertificate"|"AttachLoadBalancerTlsCertificate"|"CreateDisk"|"DeleteDisk"|"AttachDisk"|"DetachDisk"|"CreateDiskSnapshot"|"DeleteDiskSnapshot"|"CreateDiskFromSnapshot"|"CreateRelationalDatabase"|"UpdateRelationalDatabase"|"DeleteRelationalDatabase"|"CreateRelationalDatabaseFromSnapshot"|"CreateRelationalDatabaseSnapshot"|"DeleteRelationalDatabaseSnapshot"|"UpdateRelationalDatabaseParameters"|"StartRelationalDatabase"|"RebootRelationalDatabase"|"StopRelationalDatabase"|"EnableAddOn"|"DisableAddOn"|"PutAlarm"|"GetAlarms"|"DeleteAlarm"|"TestAlarm"|"CreateContactMethod"|"GetContactMethods"|"SendContactMethodVerification"|"DeleteContactMethod"|"CreateDistribution"|"UpdateDistribution"|"DeleteDistribution"|"ResetDistributionCache"|"AttachCertificateToDistribution"|"DetachCertificateFromDistribution"|"UpdateDistributionBundle"|"SetIpAddressType"|"CreateCertificate"|"DeleteCertificate"|"CreateContainerService"|"UpdateContainerService"|"DeleteContainerService"|"CreateContainerServiceDeployment"|"CreateContainerServiceRegistryLogin"|"RegisterContainerImage"|"DeleteContainerImage"|"CreateBucket"|"DeleteBucket"|"CreateBucketAccessKey"|"DeleteBucketAccessKey"|"UpdateBucketBundle"|"UpdateBucket"|"SetResourceAccessForBucket"|"UpdateInstanceMetadataOptions"|"StartGUISession"|"StopGUISession",
          status = "NotStarted"|"Started"|"Failed"|"Completed"|"Succeeded",
          statusChangedAt = as.POSIXct(
            "2015-01-01"
          ),
          errorCode = "string",
          errorDetails = "string"
        )
      )
    )

### Request syntax

    svc$put_alarm(
      alarmName = "string",
      metricName = "CPUUtilization"|"NetworkIn"|"NetworkOut"|"StatusCheckFailed"|"StatusCheckFailed_Instance"|"StatusCheckFailed_System"|"ClientTLSNegotiationErrorCount"|"HealthyHostCount"|"UnhealthyHostCount"|"HTTPCode_LB_4XX_Count"|"HTTPCode_LB_5XX_Count"|"HTTPCode_Instance_2XX_Count"|"HTTPCode_Instance_3XX_Count"|"HTTPCode_Instance_4XX_Count"|"HTTPCode_Instance_5XX_Count"|"InstanceResponseTime"|"RejectedConnectionCount"|"RequestCount"|"DatabaseConnections"|"DiskQueueDepth"|"FreeStorageSpace"|"NetworkReceiveThroughput"|"NetworkTransmitThroughput"|"BurstCapacityTime"|"BurstCapacityPercentage",
      monitoredResourceName = "string",
      comparisonOperator = "GreaterThanOrEqualToThreshold"|"GreaterThanThreshold"|"LessThanThreshold"|"LessThanOrEqualToThreshold",
      threshold = 123.0,
      evaluationPeriods = 123,
      datapointsToAlarm = 123,
      treatMissingData = "breaching"|"notBreaching"|"ignore"|"missing",
      contactProtocols = list(
        "Email"|"SMS"
      ),
      notificationTriggers = list(
        "OK"|"ALARM"|"INSUFFICIENT_DATA"
      ),
      notificationEnabled = TRUE|FALSE
    )
