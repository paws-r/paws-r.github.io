<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>applicationautoscaling</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Application Auto Scaling

### Description

With Application Auto Scaling, you can configure automatic scaling for
the following resources:

-   Amazon AppStream 2.0 fleets

-   Amazon Aurora Replicas

-   Amazon Comprehend document classification and entity recognizer
    endpoints

-   Amazon DynamoDB tables and global secondary indexes throughput
    capacity

-   Amazon ECS services

-   Amazon ElastiCache for Redis clusters (replication groups)

-   Amazon EMR clusters

-   Amazon Keyspaces (for Apache Cassandra) tables

-   Lambda function provisioned concurrency

-   Amazon Managed Streaming for Apache Kafka broker storage

-   Amazon Neptune clusters

-   Amazon SageMaker endpoint variants

-   Amazon SageMaker Serverless endpoint provisioned concurrency

-   Spot Fleets (Amazon EC2)

-   Custom resources provided by your own applications or services

To learn more about Application Auto Scaling, see the [Application Auto
Scaling User
Guide](https://docs.aws.amazon.com/autoscaling/application/userguide/what-is-application-auto-scaling.html).

**API Summary**

The Application Auto Scaling service API includes three key sets of
actions:

-   Register and manage scalable targets - Register Amazon Web Services
    or custom resources as scalable targets (a resource that Application
    Auto Scaling can scale), set minimum and maximum capacity limits,
    and retrieve information on existing scalable targets.

-   Configure and manage automatic scaling - Define scaling policies to
    dynamically scale your resources in response to CloudWatch alarms,
    schedule one-time or recurring scaling actions, and retrieve your
    recent scaling activity history.

-   Suspend and resume scaling - Temporarily suspend and later resume
    automatic scaling by calling the `register_scalable_target` API
    action for any Application Auto Scaling scalable target. You can
    suspend and resume (individually or in combination) scale-out
    activities that are triggered by a scaling policy, scale-in
    activities that are triggered by a scaling policy, and scheduled
    scaling.

### Usage

    applicationautoscaling(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="applicationautoscaling_:_config">config</code></td>
<td><p>Optional configuration of credentials, endpoint, and/or
region.</p>
<ul>
<li><p><strong>access_key_id</strong>: AWS access key ID</p></li>
<li><p><strong>secret_access_key</strong>: AWS secret access
key</p></li>
<li><p><strong>session_token</strong>: AWS temporary session
token</p></li>
<li><p><strong>profile</strong>: The name of a profile to use. If not
given, then the default profile is used.</p></li>
<li><p><strong>anonymous</strong>: Set anonymous credentials.</p></li>
<li><p><strong>endpoint</strong>: The complete URL to use for the
constructed client.</p></li>
<li><p><strong>region</strong>: The AWS Region used in instantiating the
client.</p></li>
<li><p><strong>close_connection</strong>: Immediately close all HTTP
connections.</p></li>
<li><p><strong>timeout</strong>: The time in seconds till a timeout
exception is thrown when attempting to make a connection. The default is
60 seconds.</p></li>
<li><p><strong>s3_force_path_style</strong>: Set this to
<code>true</code> to force the request to use path-style addressing,
i.e., <code
style="white-space: pre;">⁠http://s3.amazonaws.com/BUCKET/KEY⁠</code>.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A client for the service. You can call the service's operations using
syntax like `svc$operation(...)`, where `svc` is the name you've
assigned to the client. The available operations are listed in the
Operations section.

### Service syntax

    svc <- applicationautoscaling(
      config = list(
        credentials = list(
          creds = list(
            access_key_id = "string",
            secret_access_key = "string",
            session_token = "string"
          ),
          profile = "string",
          anonymous = "logical"
        ),
        endpoint = "string",
        region = "string",
        close_connection = "logical",
        timeout = "numeric",
        s3_force_path_style = "logical"
      )
    )

### Operations

<table>
<tbody>
<tr class="odd">
<td style="text-align: left;"><a href="../applicationautoscaling_delete_scaling_policy/"> delete_scaling_policy </a></td>
<td style="text-align: left;">Deletes the specified scaling policy for
an Application Auto Scaling scalable target</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../applicationautoscaling_delete_scheduled_action/"> delete_scheduled_action </a></td>
<td style="text-align: left;">Deletes the specified scheduled action for
an Application Auto Scaling scalable target</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../applicationautoscaling_deregister_scalable_target/"> deregister_scalable_target </a></td>
<td style="text-align: left;">Deregisters an Application Auto Scaling
scalable target when you have finished using it</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../applicationautoscaling_describe_scalable_targets/"> describe_scalable_targets </a></td>
<td style="text-align: left;">Gets information about the scalable
targets in the specified namespace</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../applicationautoscaling_describe_scaling_activities/"> describe_scaling_activities </a></td>
<td style="text-align: left;">Provides descriptive information about the
scaling activities in the specified namespace from the previous six
weeks</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../applicationautoscaling_describe_scaling_policies/"> describe_scaling_policies </a></td>
<td style="text-align: left;">Describes the Application Auto Scaling
scaling policies for the specified service namespace</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../applicationautoscaling_describe_scheduled_actions/"> describe_scheduled_actions </a></td>
<td style="text-align: left;">Describes the Application Auto Scaling
scheduled actions for the specified service namespace</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../applicationautoscaling_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Returns all the tags on the specified
Application Auto Scaling scalable target</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../applicationautoscaling_put_scaling_policy/"> put_scaling_policy </a></td>
<td style="text-align: left;">Creates or updates a scaling policy for an
Application Auto Scaling scalable target</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../applicationautoscaling_put_scheduled_action/"> put_scheduled_action </a></td>
<td style="text-align: left;">Creates or updates a scheduled action for
an Application Auto Scaling scalable target</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../applicationautoscaling_register_scalable_target/"> register_scalable_target </a></td>
<td style="text-align: left;">Registers or updates a scalable target,
which is the resource that you want to scale</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../applicationautoscaling_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Adds or edits tags on an Application Auto
Scaling scalable target</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../applicationautoscaling_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Deletes tags from an Application Auto
Scaling scalable target</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- applicationautoscaling()
    # This example deletes a scaling policy for the Amazon ECS service called
    # web-app, which is running in the default cluster.
    svc$delete_scaling_policy(
      PolicyName = "web-app-cpu-lt-25",
      ResourceId = "service/default/web-app",
      ScalableDimension = "ecs:service:DesiredCount",
      ServiceNamespace = "ecs"
    )

    ## End(Not run)
