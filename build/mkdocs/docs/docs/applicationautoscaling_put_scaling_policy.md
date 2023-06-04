<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>applicationautoscaling_put_scaling_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates or updates a scaling policy for an Application Auto Scaling scalable target

### Description

Creates or updates a scaling policy for an Application Auto Scaling
scalable target.

Each scalable target is identified by a service namespace, resource ID,
and scalable dimension. A scaling policy applies to the scalable target
identified by those three attributes. You cannot create a scaling policy
until you have registered the resource as a scalable target.

Multiple scaling policies can be in force at the same time for the same
scalable target. You can have one or more target tracking scaling
policies, one or more step scaling policies, or both. However, there is
a chance that multiple policies could conflict, instructing the scalable
target to scale out or in at the same time. Application Auto Scaling
gives precedence to the policy that provides the largest capacity for
both scale out and scale in. For example, if one policy increases
capacity by 3, another policy increases capacity by 200 percent, and the
current capacity is 10, Application Auto Scaling uses the policy with
the highest calculated capacity (200% of 10 = 20) and scales out to 30.

We recommend caution, however, when using target tracking scaling
policies with step scaling policies because conflicts between these
policies can cause undesirable behavior. For example, if the step
scaling policy initiates a scale-in activity before the target tracking
policy is ready to scale in, the scale-in activity will not be blocked.
After the scale-in activity completes, the target tracking policy could
instruct the scalable target to scale out again.

For more information, see [Target tracking scaling
policies](https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-target-tracking.html)
and [Step scaling
policies](https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-step-scaling-policies.html)
in the *Application Auto Scaling User Guide*.

If a scalable target is deregistered, the scalable target is no longer
available to use scaling policies. Any scaling policies that were
specified for the scalable target are deleted.

### Usage

    applicationautoscaling_put_scaling_policy(PolicyName, ServiceNamespace,
      ResourceId, ScalableDimension, PolicyType,
      StepScalingPolicyConfiguration,
      TargetTrackingScalingPolicyConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="applicationautoscaling_put_scaling_policy_:_PolicyName">PolicyName</code></td>
<td><p>[required] The name of the scaling policy.</p>
<p>You cannot change the name of a scaling policy, but you can delete
the original scaling policy and create a new scaling policy with the
same settings and a different name.</p></td>
</tr>
<tr class="even">
<td><code
id="applicationautoscaling_put_scaling_policy_:_ServiceNamespace">ServiceNamespace</code></td>
<td><p>[required] The namespace of the Amazon Web Services service that
provides the resource. For a resource provided by your own application
or service, use <code>custom-resource</code> instead.</p></td>
</tr>
<tr class="odd">
<td><code
id="applicationautoscaling_put_scaling_policy_:_ResourceId">ResourceId</code></td>
<td><p>[required] The identifier of the resource associated with the
scaling policy. This string consists of the resource type and unique
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
id="applicationautoscaling_put_scaling_policy_:_ScalableDimension">ScalableDimension</code></td>
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
id="applicationautoscaling_put_scaling_policy_:_PolicyType">PolicyType</code></td>
<td><p>The scaling policy type. This parameter is required if you are
creating a scaling policy.</p>
<p>The following policy types are supported:</p>
<p><code>TargetTrackingScaling</code>—Not supported for Amazon EMR</p>
<p><code>StepScaling</code>—Not supported for DynamoDB, Amazon
Comprehend, Lambda, Amazon Keyspaces, Amazon MSK, Amazon ElastiCache, or
Neptune.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-target-tracking.html">Target
tracking scaling policies</a> and <a
href="https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-step-scaling-policies.html">Step
scaling policies</a> in the <em>Application Auto Scaling User
Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="applicationautoscaling_put_scaling_policy_:_StepScalingPolicyConfiguration">StepScalingPolicyConfiguration</code></td>
<td><p>A step scaling policy.</p>
<p>This parameter is required if you are creating a policy and the
policy type is <code>StepScaling</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="applicationautoscaling_put_scaling_policy_:_TargetTrackingScalingPolicyConfiguration">TargetTrackingScalingPolicyConfiguration</code></td>
<td><p>A target tracking scaling policy. Includes support for predefined
or customized metrics.</p>
<p>This parameter is required if you are creating a policy and the
policy type is <code>TargetTrackingScaling</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PolicyARN = "string",
      Alarms = list(
        list(
          AlarmName = "string",
          AlarmARN = "string"
        )
      )
    )

### Request syntax

    svc$put_scaling_policy(
      PolicyName = "string",
      ServiceNamespace = "ecs"|"elasticmapreduce"|"ec2"|"appstream"|"dynamodb"|"rds"|"sagemaker"|"custom-resource"|"comprehend"|"lambda"|"cassandra"|"kafka"|"elasticache"|"neptune",
      ResourceId = "string",
      ScalableDimension = "ecs:service:DesiredCount"|"ec2:spot-fleet-request:TargetCapacity"|"elasticmapreduce:instancegroup:InstanceCount"|"appstream:fleet:DesiredCapacity"|"dynamodb:table:ReadCapacityUnits"|"dynamodb:table:WriteCapacityUnits"|"dynamodb:index:ReadCapacityUnits"|"dynamodb:index:WriteCapacityUnits"|"rds:cluster:ReadReplicaCount"|"sagemaker:variant:DesiredInstanceCount"|"custom-resource:ResourceType:Property"|"comprehend:document-classifier-endpoint:DesiredInferenceUnits"|"comprehend:entity-recognizer-endpoint:DesiredInferenceUnits"|"lambda:function:ProvisionedConcurrency"|"cassandra:table:ReadCapacityUnits"|"cassandra:table:WriteCapacityUnits"|"kafka:broker-storage:VolumeSize"|"elasticache:replication-group:NodeGroups"|"elasticache:replication-group:Replicas"|"neptune:cluster:ReadReplicaCount"|"sagemaker:variant:DesiredProvisionedConcurrency",
      PolicyType = "StepScaling"|"TargetTrackingScaling",
      StepScalingPolicyConfiguration = list(
        AdjustmentType = "ChangeInCapacity"|"PercentChangeInCapacity"|"ExactCapacity",
        StepAdjustments = list(
          list(
            MetricIntervalLowerBound = 123.0,
            MetricIntervalUpperBound = 123.0,
            ScalingAdjustment = 123
          )
        ),
        MinAdjustmentMagnitude = 123,
        Cooldown = 123,
        MetricAggregationType = "Average"|"Minimum"|"Maximum"
      ),
      TargetTrackingScalingPolicyConfiguration = list(
        TargetValue = 123.0,
        PredefinedMetricSpecification = list(
          PredefinedMetricType = "DynamoDBReadCapacityUtilization"|"DynamoDBWriteCapacityUtilization"|"ALBRequestCountPerTarget"|"RDSReaderAverageCPUUtilization"|"RDSReaderAverageDatabaseConnections"|"EC2SpotFleetRequestAverageCPUUtilization"|"EC2SpotFleetRequestAverageNetworkIn"|"EC2SpotFleetRequestAverageNetworkOut"|"SageMakerVariantInvocationsPerInstance"|"ECSServiceAverageCPUUtilization"|"ECSServiceAverageMemoryUtilization"|"AppStreamAverageCapacityUtilization"|"ComprehendInferenceUtilization"|"LambdaProvisionedConcurrencyUtilization"|"CassandraReadCapacityUtilization"|"CassandraWriteCapacityUtilization"|"KafkaBrokerStorageUtilization"|"ElastiCachePrimaryEngineCPUUtilization"|"ElastiCacheReplicaEngineCPUUtilization"|"ElastiCacheDatabaseMemoryUsageCountedForEvictPercentage"|"NeptuneReaderAverageCPUUtilization"|"SageMakerVariantProvisionedConcurrencyUtilization"|"ElastiCacheDatabaseCapacityUsageCountedForEvictPercentage",
          ResourceLabel = "string"
        ),
        CustomizedMetricSpecification = list(
          MetricName = "string",
          Namespace = "string",
          Dimensions = list(
            list(
              Name = "string",
              Value = "string"
            )
          ),
          Statistic = "Average"|"Minimum"|"Maximum"|"SampleCount"|"Sum",
          Unit = "string",
          Metrics = list(
            list(
              Expression = "string",
              Id = "string",
              Label = "string",
              MetricStat = list(
                Metric = list(
                  Dimensions = list(
                    list(
                      Name = "string",
                      Value = "string"
                    )
                  ),
                  MetricName = "string",
                  Namespace = "string"
                ),
                Stat = "string",
                Unit = "string"
              ),
              ReturnData = TRUE|FALSE
            )
          )
        ),
        ScaleOutCooldown = 123,
        ScaleInCooldown = 123,
        DisableScaleIn = TRUE|FALSE
      )
    )

### Examples

    ## Not run: 
    # The following example applies a target tracking scaling policy with a
    # predefined metric specification to an Amazon ECS service called web-app
    # in the default cluster. The policy keeps the average CPU utilization of
    # the service at 75 percent, with scale-out and scale-in cooldown periods
    # of 60 seconds.
    svc$put_scaling_policy(
      PolicyName = "cpu75-target-tracking-scaling-policy",
      PolicyType = "TargetTrackingScaling",
      ResourceId = "service/default/web-app",
      ScalableDimension = "ecs:service:DesiredCount",
      ServiceNamespace = "ecs",
      TargetTrackingScalingPolicyConfiguration = list(
        PredefinedMetricSpecification = list(
          PredefinedMetricType = "ECSServiceAverageCPUUtilization"
        ),
        ScaleInCooldown = 60L,
        ScaleOutCooldown = 60L,
        TargetValue = 75L
      )
    )

    ## End(Not run)
