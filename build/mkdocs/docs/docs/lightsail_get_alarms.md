<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lightsail_get_alarms</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about the configured alarms

### Description

Returns information about the configured alarms. Specify an alarm name
in your request to return information about a specific alarm, or specify
a monitored resource name to return information about all alarms for a
specific resource.

An alarm is used to monitor a single metric for one of your resources.
When a metric condition is met, the alarm can notify you by email, SMS
text message, and a banner displayed on the Amazon Lightsail console.
For more information, see Alarms in Amazon Lightsail.

### Usage

    lightsail_get_alarms(alarmName, pageToken, monitoredResourceName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="lightsail_get_alarms_:_alarmName">alarmName</code></td>
<td><p>The name of the alarm.</p>
<p>Specify an alarm name to return information about a specific
alarm.</p></td>
</tr>
<tr class="even">
<td><code id="lightsail_get_alarms_:_pageToken">pageToken</code></td>
<td><p>The token to advance to the next page of results from your
request.</p>
<p>To get a page token, perform an initial <code>get_alarms</code>
request. If your results are paginated, the response will return a next
page token that you can specify as the page token in a subsequent
request.</p></td>
</tr>
<tr class="odd">
<td><code
id="lightsail_get_alarms_:_monitoredResourceName">monitoredResourceName</code></td>
<td><p>The name of the Lightsail resource being monitored by the
alarm.</p>
<p>Specify a monitored resource name to return information about all
alarms for a specific resource.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      alarms = list(
        list(
          name = "string",
          arn = "string",
          createdAt = as.POSIXct(
            "2015-01-01"
          ),
          location = list(
            availabilityZone = "string",
            regionName = "us-east-1"|"us-east-2"|"us-west-1"|"us-west-2"|"eu-west-1"|"eu-west-2"|"eu-west-3"|"eu-central-1"|"ca-central-1"|"ap-south-1"|"ap-southeast-1"|"ap-southeast-2"|"ap-northeast-1"|"ap-northeast-2"|"eu-north-1"
          ),
          resourceType = "ContainerService"|"Instance"|"StaticIp"|"KeyPair"|"InstanceSnapshot"|"Domain"|"PeeredVpc"|"LoadBalancer"|"LoadBalancerTlsCertificate"|"Disk"|"DiskSnapshot"|"RelationalDatabase"|"RelationalDatabaseSnapshot"|"ExportSnapshotRecord"|"CloudFormationStackRecord"|"Alarm"|"ContactMethod"|"Distribution"|"Certificate"|"Bucket",
          supportCode = "string",
          monitoredResourceInfo = list(
            arn = "string",
            name = "string",
            resourceType = "ContainerService"|"Instance"|"StaticIp"|"KeyPair"|"InstanceSnapshot"|"Domain"|"PeeredVpc"|"LoadBalancer"|"LoadBalancerTlsCertificate"|"Disk"|"DiskSnapshot"|"RelationalDatabase"|"RelationalDatabaseSnapshot"|"ExportSnapshotRecord"|"CloudFormationStackRecord"|"Alarm"|"ContactMethod"|"Distribution"|"Certificate"|"Bucket"
          ),
          comparisonOperator = "GreaterThanOrEqualToThreshold"|"GreaterThanThreshold"|"LessThanThreshold"|"LessThanOrEqualToThreshold",
          evaluationPeriods = 123,
          period = 123,
          threshold = 123.0,
          datapointsToAlarm = 123,
          treatMissingData = "breaching"|"notBreaching"|"ignore"|"missing",
          statistic = "Minimum"|"Maximum"|"Sum"|"Average"|"SampleCount",
          metricName = "CPUUtilization"|"NetworkIn"|"NetworkOut"|"StatusCheckFailed"|"StatusCheckFailed_Instance"|"StatusCheckFailed_System"|"ClientTLSNegotiationErrorCount"|"HealthyHostCount"|"UnhealthyHostCount"|"HTTPCode_LB_4XX_Count"|"HTTPCode_LB_5XX_Count"|"HTTPCode_Instance_2XX_Count"|"HTTPCode_Instance_3XX_Count"|"HTTPCode_Instance_4XX_Count"|"HTTPCode_Instance_5XX_Count"|"InstanceResponseTime"|"RejectedConnectionCount"|"RequestCount"|"DatabaseConnections"|"DiskQueueDepth"|"FreeStorageSpace"|"NetworkReceiveThroughput"|"NetworkTransmitThroughput"|"BurstCapacityTime"|"BurstCapacityPercentage",
          state = "OK"|"ALARM"|"INSUFFICIENT_DATA",
          unit = "Seconds"|"Microseconds"|"Milliseconds"|"Bytes"|"Kilobytes"|"Megabytes"|"Gigabytes"|"Terabytes"|"Bits"|"Kilobits"|"Megabits"|"Gigabits"|"Terabits"|"Percent"|"Count"|"Bytes/Second"|"Kilobytes/Second"|"Megabytes/Second"|"Gigabytes/Second"|"Terabytes/Second"|"Bits/Second"|"Kilobits/Second"|"Megabits/Second"|"Gigabits/Second"|"Terabits/Second"|"Count/Second"|"None",
          contactProtocols = list(
            "Email"|"SMS"
          ),
          notificationTriggers = list(
            "OK"|"ALARM"|"INSUFFICIENT_DATA"
          ),
          notificationEnabled = TRUE|FALSE
        )
      ),
      nextPageToken = "string"
    )

### Request syntax

    svc$get_alarms(
      alarmName = "string",
      pageToken = "string",
      monitoredResourceName = "string"
    )
