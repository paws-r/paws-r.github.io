<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>applicationautoscaling_put_scheduled_action</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates or updates a scheduled action for an Application Auto Scaling scalable target

### Description

Creates or updates a scheduled action for an Application Auto Scaling
scalable target.

Each scalable target is identified by a service namespace, resource ID,
and scalable dimension. A scheduled action applies to the scalable
target identified by those three attributes. You cannot create a
scheduled action until you have registered the resource as a scalable
target.

When you specify start and end times with a recurring schedule using a
cron expression or rates, they form the boundaries for when the
recurring action starts and stops.

To update a scheduled action, specify the parameters that you want to
change. If you don't specify start and end times, the old values are
deleted.

For more information, see [Scheduled
scaling](https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-scheduled-scaling.html)
in the *Application Auto Scaling User Guide*.

If a scalable target is deregistered, the scalable target is no longer
available to run scheduled actions. Any scheduled actions that were
specified for the scalable target are deleted.

### Usage

    applicationautoscaling_put_scheduled_action(ServiceNamespace, Schedule,
      Timezone, ScheduledActionName, ResourceId, ScalableDimension, StartTime,
      EndTime, ScalableTargetAction)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="applicationautoscaling_put_scheduled_action_:_ServiceNamespace">ServiceNamespace</code></td>
<td><p>[required] The namespace of the Amazon Web Services service that
provides the resource. For a resource provided by your own application
or service, use <code>custom-resource</code> instead.</p></td>
</tr>
<tr class="even">
<td><code
id="applicationautoscaling_put_scheduled_action_:_Schedule">Schedule</code></td>
<td><p>The schedule for this action. The following formats are
supported:</p>
<ul>
<li><p>At expressions - "<code>at(yyyy-mm-ddThh:mm:ss)</code>"</p></li>
<li><p>Rate expressions - "<code
style="white-space: pre;">⁠rate(value unit)⁠</code>"</p></li>
<li><p>Cron expressions - "<code>cron(fields)</code>"</p></li>
</ul>
<p>At expressions are useful for one-time schedules. Cron expressions
are useful for scheduled actions that run periodically at a specified
date and time, and rate expressions are useful for scheduled actions
that run at a regular interval.</p>
<p>At and cron expressions use Universal Coordinated Time (UTC) by
default.</p>
<p>The cron format consists of six fields separated by white spaces:
[Minutes] [Hours] [Day_of_Month] [Month] [Day_of_Week] [Year].</p>
<p>For rate expressions, <em>value</em> is a positive integer and
<em>unit</em> is <code>minute</code> | <code>minutes</code> |
<code>hour</code> | <code>hours</code> | <code>day</code> |
<code>days</code>.</p>
<p>For more information and examples, see <a
href="https://docs.aws.amazon.com/autoscaling/application/userguide/examples-scheduled-actions.html">Example
scheduled actions for Application Auto Scaling</a> in the
<em>Application Auto Scaling User Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="applicationautoscaling_put_scheduled_action_:_Timezone">Timezone</code></td>
<td><p>Specifies the time zone used when setting a scheduled action by
using an at or cron expression. If a time zone is not provided, UTC is
used by default.</p>
<p>Valid values are the canonical names of the IANA time zones supported
by Joda-Time (such as <code>Etc/GMT+9</code> or
<code>Pacific/Tahiti</code>). For more information, see <a
href="https://www.joda.org/joda-time/timezones.html">https://www.joda.org/joda-time/timezones.html</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="applicationautoscaling_put_scheduled_action_:_ScheduledActionName">ScheduledActionName</code></td>
<td><p>[required] The name of the scheduled action. This name must be
unique among all other scheduled actions on the specified scalable
target.</p></td>
</tr>
<tr class="odd">
<td><code
id="applicationautoscaling_put_scheduled_action_:_ResourceId">ResourceId</code></td>
<td><p>[required] The identifier of the resource associated with the
scheduled action. This string consists of the resource type and unique
identifier.</p>
<ul>
<li><p>ECS service - The resource type is <code>service</code> and the
unique identifier is the cluster name and service name. Example:
<code>service/default/sample-webapp</code>.</p></li>
<li><p>Spot Fleet - The resource type is <code>spot-fleet-request</code>
and the unique identifier is the Spot Fleet request ID. Example: <code
style="white-space: pre;">⁠spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE⁠</code>.</p></li>
<li><p>EMR cluster - The resource type is <code>instancegroup</code> and
the unique identifier is the cluster ID and instance group ID. Example:
<code
style="white-space: pre;">⁠instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0⁠</code>.</p></li>
<li><p>AppStream 2.0 fleet - The resource type is <code>fleet</code> and
the unique identifier is the fleet name. Example:
<code>fleet/sample-fleet</code>.</p></li>
<li><p>DynamoDB table - The resource type is <code>table</code> and the
unique identifier is the table name. Example:
<code>table/my-table</code>.</p></li>
<li><p>DynamoDB global secondary index - The resource type is
<code>index</code> and the unique identifier is the index name. Example:
<code>table/my-table/index/my-table-index</code>.</p></li>
<li><p>Aurora DB cluster - The resource type is <code>cluster</code> and
the unique identifier is the cluster name. Example:
<code>cluster:my-db-cluster</code>.</p></li>
<li><p>SageMaker endpoint variant - The resource type is
<code>variant</code> and the unique identifier is the resource ID.
Example:
<code>endpoint/my-end-point/variant/KMeansClustering</code>.</p></li>
<li><p>Custom resources are not supported with a resource type. This
parameter must specify the <code>OutputValue</code> from the
CloudFormation template stack used to access the resources. The unique
identifier is defined by the service provider. More information is
available in our <a
href="https://github.com/aws/aws-auto-scaling-custom-resource">GitHub
repository</a>.</p></li>
<li><p>Amazon Comprehend document classification endpoint - The resource
type and unique identifier are specified using the endpoint ARN.
Example:
<code>arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE</code>.</p></li>
<li><p>Amazon Comprehend entity recognizer endpoint - The resource type
and unique identifier are specified using the endpoint ARN. Example:
<code>arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE</code>.</p></li>
<li><p>Lambda provisioned concurrency - The resource type is
<code>function</code> and the unique identifier is the function name
with a function version or alias name suffix that is not <code
style="white-space: pre;">⁠$LATEST⁠</code>. Example: <code
style="white-space: pre;">⁠function:my-function:prod⁠</code> or <code
style="white-space: pre;">⁠function:my-function:1⁠</code>.</p></li>
<li><p>Amazon Keyspaces table - The resource type is <code>table</code>
and the unique identifier is the table name. Example:
<code>keyspace/mykeyspace/table/mytable</code>.</p></li>
<li><p>Amazon MSK cluster - The resource type and unique identifier are
specified using the cluster ARN. Example: <code
style="white-space: pre;">⁠arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5⁠</code>.</p></li>
<li><p>Amazon ElastiCache replication group - The resource type is
<code>replication-group</code> and the unique identifier is the
replication group name. Example:
<code>replication-group/mycluster</code>.</p></li>
<li><p>Neptune cluster - The resource type is <code>cluster</code> and
the unique identifier is the cluster name. Example:
<code>cluster:mycluster</code>.</p></li>
<li><p>SageMaker Serverless endpoint - The resource type is
<code>variant</code> and the unique identifier is the resource ID.
Example:
<code>endpoint/my-end-point/variant/KMeansClustering</code>.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="applicationautoscaling_put_scheduled_action_:_ScalableDimension">ScalableDimension</code></td>
<td><p>[required] The scalable dimension. This string consists of the
service namespace, resource type, and scaling property.</p>
<ul>
<li><p><code>ecs:service:DesiredCount</code> - The desired task count of
an ECS service.</p></li>
<li><p><code>elasticmapreduce:instancegroup:InstanceCount</code> - The
instance count of an EMR Instance Group.</p></li>
<li><p><code>ec2:spot-fleet-request:TargetCapacity</code> - The target
capacity of a Spot Fleet.</p></li>
<li><p><code>appstream:fleet:DesiredCapacity</code> - The desired
capacity of an AppStream 2.0 fleet.</p></li>
<li><p><code>dynamodb:table:ReadCapacityUnits</code> - The provisioned
read capacity for a DynamoDB table.</p></li>
<li><p><code>dynamodb:table:WriteCapacityUnits</code> - The provisioned
write capacity for a DynamoDB table.</p></li>
<li><p><code>dynamodb:index:ReadCapacityUnits</code> - The provisioned
read capacity for a DynamoDB global secondary index.</p></li>
<li><p><code>dynamodb:index:WriteCapacityUnits</code> - The provisioned
write capacity for a DynamoDB global secondary index.</p></li>
<li><p><code>rds:cluster:ReadReplicaCount</code> - The count of Aurora
Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible
edition and Aurora PostgreSQL-compatible edition.</p></li>
<li><p><code>sagemaker:variant:DesiredInstanceCount</code> - The number
of EC2 instances for a SageMaker model endpoint variant.</p></li>
<li><p><code>custom-resource:ResourceType:Property</code> - The scalable
dimension for a custom resource provided by your own application or
service.</p></li>
<li><p><code>comprehend:document-classifier-endpoint:DesiredInferenceUnits</code>
- The number of inference units for an Amazon Comprehend document
classification endpoint.</p></li>
<li><p><code>comprehend:entity-recognizer-endpoint:DesiredInferenceUnits</code>
- The number of inference units for an Amazon Comprehend entity
recognizer endpoint.</p></li>
<li><p><code
style="white-space: pre;">⁠lambda:function:ProvisionedConcurrency⁠</code>
- The provisioned concurrency for a Lambda function.</p></li>
<li><p><code>cassandra:table:ReadCapacityUnits</code> - The provisioned
read capacity for an Amazon Keyspaces table.</p></li>
<li><p><code>cassandra:table:WriteCapacityUnits</code> - The provisioned
write capacity for an Amazon Keyspaces table.</p></li>
<li><p><code>kafka:broker-storage:VolumeSize</code> - The provisioned
volume size (in GiB) for brokers in an Amazon MSK cluster.</p></li>
<li><p><code>elasticache:replication-group:NodeGroups</code> - The
number of node groups for an Amazon ElastiCache replication
group.</p></li>
<li><p><code>elasticache:replication-group:Replicas</code> - The number
of replicas per node group for an Amazon ElastiCache replication
group.</p></li>
<li><p><code>neptune:cluster:ReadReplicaCount</code> - The count of read
replicas in an Amazon Neptune DB cluster.</p></li>
<li><p><code>sagemaker:variant:DesiredProvisionedConcurrency</code> -
The provisioned concurrency for a SageMaker Serverless
endpoint.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="applicationautoscaling_put_scheduled_action_:_StartTime">StartTime</code></td>
<td><p>The date and time for this scheduled action to start, in
UTC.</p></td>
</tr>
<tr class="even">
<td><code
id="applicationautoscaling_put_scheduled_action_:_EndTime">EndTime</code></td>
<td><p>The date and time for the recurring schedule to end, in
UTC.</p></td>
</tr>
<tr class="odd">
<td><code
id="applicationautoscaling_put_scheduled_action_:_ScalableTargetAction">ScalableTargetAction</code></td>
<td><p>The new minimum and maximum capacity. You can set both values or
just one. At the scheduled time, if the current capacity is below the
minimum capacity, Application Auto Scaling scales out to the minimum
capacity. If the current capacity is above the maximum capacity,
Application Auto Scaling scales in to the maximum capacity.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_scheduled_action(
      ServiceNamespace = "ecs"|"elasticmapreduce"|"ec2"|"appstream"|"dynamodb"|"rds"|"sagemaker"|"custom-resource"|"comprehend"|"lambda"|"cassandra"|"kafka"|"elasticache"|"neptune",
      Schedule = "string",
      Timezone = "string",
      ScheduledActionName = "string",
      ResourceId = "string",
      ScalableDimension = "ecs:service:DesiredCount"|"ec2:spot-fleet-request:TargetCapacity"|"elasticmapreduce:instancegroup:InstanceCount"|"appstream:fleet:DesiredCapacity"|"dynamodb:table:ReadCapacityUnits"|"dynamodb:table:WriteCapacityUnits"|"dynamodb:index:ReadCapacityUnits"|"dynamodb:index:WriteCapacityUnits"|"rds:cluster:ReadReplicaCount"|"sagemaker:variant:DesiredInstanceCount"|"custom-resource:ResourceType:Property"|"comprehend:document-classifier-endpoint:DesiredInferenceUnits"|"comprehend:entity-recognizer-endpoint:DesiredInferenceUnits"|"lambda:function:ProvisionedConcurrency"|"cassandra:table:ReadCapacityUnits"|"cassandra:table:WriteCapacityUnits"|"kafka:broker-storage:VolumeSize"|"elasticache:replication-group:NodeGroups"|"elasticache:replication-group:Replicas"|"neptune:cluster:ReadReplicaCount"|"sagemaker:variant:DesiredProvisionedConcurrency",
      StartTime = as.POSIXct(
        "2015-01-01"
      ),
      EndTime = as.POSIXct(
        "2015-01-01"
      ),
      ScalableTargetAction = list(
        MinCapacity = 123,
        MaxCapacity = 123
      )
    )

### Examples

    ## Not run: 
    # This example adds a scheduled action to a DynamoDB table called
    # TestTable to scale out on a recurring schedule. On the specified
    # schedule (every day at 12:15pm UTC), if the current capacity is below
    # the value specified for MinCapacity, Application Auto Scaling scales out
    # to the value specified by MinCapacity.
    svc$put_scheduled_action(
      ResourceId = "table/TestTable",
      ScalableDimension = "dynamodb:table:WriteCapacityUnits",
      ScalableTargetAction = list(
        MinCapacity = 6L
      ),
      Schedule = "cron(15 12 * * ? *)",
      ScheduledActionName = "my-recurring-action",
      ServiceNamespace = "dynamodb"
    )

    ## End(Not run)
