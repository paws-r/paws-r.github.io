<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>autoscaling</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Auto Scaling

### Description

Amazon EC2 Auto Scaling

Amazon EC2 Auto Scaling is designed to automatically launch and
terminate EC2 instances based on user-defined scaling policies,
scheduled actions, and health checks.

For more information, see the [Amazon EC2 Auto Scaling User
Guide](https://docs.aws.amazon.com/autoscaling/ec2/userguide/) and the
[Amazon EC2 Auto Scaling API
Reference](https://docs.aws.amazon.com/autoscaling/ec2/APIReference/Welcome.html).

### Usage

    autoscaling(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="autoscaling_:_config">config</code></td>
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

    svc <- autoscaling(
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
<td style="text-align: left;"><a href="../autoscaling_attach_instances/"> attach_instances </a></td>
<td style="text-align: left;">Attaches one or more EC2 instances to the
specified Auto Scaling group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../autoscaling_attach_load_balancers/"> attach_load_balancers </a></td>
<td style="text-align: left;">This API operation is superseded by
AttachTrafficSources, which can attach multiple traffic sources
types</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../autoscaling_attach_load_balancer_target_groups/"> attach_load_balancer_target_groups </a></td>
<td style="text-align: left;">This API operation is superseded by
AttachTrafficSources, which can attach multiple traffic sources
types</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../autoscaling_attach_traffic_sources/"> attach_traffic_sources </a></td>
<td style="text-align: left;">Attaches one or more traffic sources to
the specified Auto Scaling group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../autoscaling_batch_delete_scheduled_action/"> batch_delete_scheduled_action </a></td>
<td style="text-align: left;">Deletes one or more scheduled actions for
the specified Auto Scaling group</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../autoscaling_batch_put_scheduled_update_group_action/"> batch_put_scheduled_update_group_action </a></td>
<td style="text-align: left;">Creates or updates one or more scheduled
scaling actions for an Auto Scaling group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../autoscaling_cancel_instance_refresh/"> cancel_instance_refresh </a></td>
<td style="text-align: left;">Cancels an instance refresh or rollback
that is in progress</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../autoscaling_complete_lifecycle_action/"> complete_lifecycle_action </a></td>
<td style="text-align: left;">Completes the lifecycle action for the
specified token or instance with the specified result</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../autoscaling_create_auto_scaling_group/"> create_auto_scaling_group </a></td>
<td style="text-align: left;">We strongly recommend using a launch
template when calling this operation to ensure full functionality for
Amazon EC2 Auto Scaling and Amazon EC2</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../autoscaling_create_launch_configuration/"> create_launch_configuration </a></td>
<td style="text-align: left;">Creates a launch configuration</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../autoscaling_create_or_update_tags/"> create_or_update_tags </a></td>
<td style="text-align: left;">Creates or updates tags for the specified
Auto Scaling group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../autoscaling_delete_auto_scaling_group/"> delete_auto_scaling_group </a></td>
<td style="text-align: left;">Deletes the specified Auto Scaling
group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../autoscaling_delete_launch_configuration/"> delete_launch_configuration </a></td>
<td style="text-align: left;">Deletes the specified launch
configuration</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../autoscaling_delete_lifecycle_hook/"> delete_lifecycle_hook </a></td>
<td style="text-align: left;">Deletes the specified lifecycle hook</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../autoscaling_delete_notification_configuration/"> delete_notification_configuration </a></td>
<td style="text-align: left;">Deletes the specified notification</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../autoscaling_delete_policy/"> delete_policy </a></td>
<td style="text-align: left;">Deletes the specified scaling policy</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../autoscaling_delete_scheduled_action/"> delete_scheduled_action </a></td>
<td style="text-align: left;">Deletes the specified scheduled
action</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../autoscaling_delete_tags/"> delete_tags </a></td>
<td style="text-align: left;">Deletes the specified tags</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../autoscaling_delete_warm_pool/"> delete_warm_pool </a></td>
<td style="text-align: left;">Deletes the warm pool for the specified
Auto Scaling group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../autoscaling_describe_account_limits/"> describe_account_limits </a></td>
<td style="text-align: left;">Describes the current Amazon EC2 Auto
Scaling resource quotas for your account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../autoscaling_describe_adjustment_types/"> describe_adjustment_types </a></td>
<td style="text-align: left;">Describes the available adjustment types
for step scaling and simple scaling policies</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../autoscaling_describe_auto_scaling_groups/"> describe_auto_scaling_groups </a></td>
<td style="text-align: left;">Gets information about the Auto Scaling
groups in the account and Region</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../autoscaling_describe_auto_scaling_instances/"> describe_auto_scaling_instances </a></td>
<td style="text-align: left;">Gets information about the Auto Scaling
instances in the account and Region</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../autoscaling_describe_auto_scaling_notification_types/"> describe_auto_scaling_notification_types </a></td>
<td style="text-align: left;">Describes the notification types that are
supported by Amazon EC2 Auto Scaling</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../autoscaling_describe_instance_refreshes/"> describe_instance_refreshes </a></td>
<td style="text-align: left;">Gets information about the instance
refreshes for the specified Auto Scaling group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../autoscaling_describe_launch_configurations/"> describe_launch_configurations </a></td>
<td style="text-align: left;">Gets information about the launch
configurations in the account and Region</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../autoscaling_describe_lifecycle_hooks/"> describe_lifecycle_hooks </a></td>
<td style="text-align: left;">Gets information about the lifecycle hooks
for the specified Auto Scaling group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../autoscaling_describe_lifecycle_hook_types/"> describe_lifecycle_hook_types </a></td>
<td style="text-align: left;">Describes the available types of lifecycle
hooks</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../autoscaling_describe_load_balancers/"> describe_load_balancers </a></td>
<td style="text-align: left;">This API operation is superseded by
DescribeTrafficSources, which can describe multiple traffic sources
types</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../autoscaling_describe_load_balancer_target_groups/"> describe_load_balancer_target_groups </a></td>
<td style="text-align: left;">This API operation is superseded by
DescribeTrafficSources, which can describe multiple traffic sources
types</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../autoscaling_describe_metric_collection_types/"> describe_metric_collection_types </a></td>
<td style="text-align: left;">Describes the available CloudWatch metrics
for Amazon EC2 Auto Scaling</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../autoscaling_describe_notification_configurations/"> describe_notification_configurations </a></td>
<td style="text-align: left;">Gets information about the Amazon SNS
notifications that are configured for one or more Auto Scaling
groups</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../autoscaling_describe_policies/"> describe_policies </a></td>
<td style="text-align: left;">Gets information about the scaling
policies in the account and Region</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../autoscaling_describe_scaling_activities/"> describe_scaling_activities </a></td>
<td style="text-align: left;">Gets information about the scaling
activities in the account and Region</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../autoscaling_describe_scaling_process_types/"> describe_scaling_process_types </a></td>
<td style="text-align: left;">Describes the scaling process types for
use with the ResumeProcesses and SuspendProcesses APIs</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../autoscaling_describe_scheduled_actions/"> describe_scheduled_actions </a></td>
<td style="text-align: left;">Gets information about the scheduled
actions that haven't run or that have not reached their end time</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../autoscaling_describe_tags/"> describe_tags </a></td>
<td style="text-align: left;">Describes the specified tags</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../autoscaling_describe_termination_policy_types/"> describe_termination_policy_types </a></td>
<td style="text-align: left;">Describes the termination policies
supported by Amazon EC2 Auto Scaling</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../autoscaling_describe_traffic_sources/"> describe_traffic_sources </a></td>
<td style="text-align: left;">Gets information about the traffic sources
for the specified Auto Scaling group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../autoscaling_describe_warm_pool/"> describe_warm_pool </a></td>
<td style="text-align: left;">Gets information about a warm pool and its
instances</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../autoscaling_detach_instances/"> detach_instances </a></td>
<td style="text-align: left;">Removes one or more instances from the
specified Auto Scaling group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../autoscaling_detach_load_balancers/"> detach_load_balancers </a></td>
<td style="text-align: left;">This API operation is superseded by
DetachTrafficSources, which can detach multiple traffic sources
types</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../autoscaling_detach_load_balancer_target_groups/"> detach_load_balancer_target_groups </a></td>
<td style="text-align: left;">This API operation is superseded by
DetachTrafficSources, which can detach multiple traffic sources
types</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../autoscaling_detach_traffic_sources/"> detach_traffic_sources </a></td>
<td style="text-align: left;">Detaches one or more traffic sources from
the specified Auto Scaling group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../autoscaling_disable_metrics_collection/"> disable_metrics_collection </a></td>
<td style="text-align: left;">Disables group metrics collection for the
specified Auto Scaling group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../autoscaling_enable_metrics_collection/"> enable_metrics_collection </a></td>
<td style="text-align: left;">Enables group metrics collection for the
specified Auto Scaling group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../autoscaling_enter_standby/"> enter_standby </a></td>
<td style="text-align: left;">Moves the specified instances into the
standby state</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../autoscaling_execute_policy/"> execute_policy </a></td>
<td style="text-align: left;">Executes the specified policy</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../autoscaling_exit_standby/"> exit_standby </a></td>
<td style="text-align: left;">Moves the specified instances out of the
standby state</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../autoscaling_get_predictive_scaling_forecast/"> get_predictive_scaling_forecast </a></td>
<td style="text-align: left;">Retrieves the forecast data for a
predictive scaling policy</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../autoscaling_put_lifecycle_hook/"> put_lifecycle_hook </a></td>
<td style="text-align: left;">Creates or updates a lifecycle hook for
the specified Auto Scaling group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../autoscaling_put_notification_configuration/"> put_notification_configuration </a></td>
<td style="text-align: left;">Configures an Auto Scaling group to send
notifications when specified events take place</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../autoscaling_put_scaling_policy/"> put_scaling_policy </a></td>
<td style="text-align: left;">Creates or updates a scaling policy for an
Auto Scaling group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../autoscaling_put_scheduled_update_group_action/"> put_scheduled_update_group_action </a></td>
<td style="text-align: left;">Creates or updates a scheduled scaling
action for an Auto Scaling group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../autoscaling_put_warm_pool/"> put_warm_pool </a></td>
<td style="text-align: left;">Creates or updates a warm pool for the
specified Auto Scaling group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../autoscaling_record_lifecycle_action_heartbeat/"> record_lifecycle_action_heartbeat </a></td>
<td style="text-align: left;">Records a heartbeat for the lifecycle
action associated with the specified token or instance</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../autoscaling_resume_processes/"> resume_processes </a></td>
<td style="text-align: left;">Resumes the specified suspended auto
scaling processes, or all suspended process, for the specified Auto
Scaling group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../autoscaling_rollback_instance_refresh/"> rollback_instance_refresh </a></td>
<td style="text-align: left;">Cancels an instance refresh that is in
progress and rolls back any changes that it made</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../autoscaling_set_desired_capacity/"> set_desired_capacity </a></td>
<td style="text-align: left;">Sets the size of the specified Auto
Scaling group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../autoscaling_set_instance_health/"> set_instance_health </a></td>
<td style="text-align: left;">Sets the health status of the specified
instance</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../autoscaling_set_instance_protection/"> set_instance_protection </a></td>
<td style="text-align: left;">Updates the instance protection settings
of the specified instances</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../autoscaling_start_instance_refresh/"> start_instance_refresh </a></td>
<td style="text-align: left;">Starts an instance refresh</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../autoscaling_suspend_processes/"> suspend_processes </a></td>
<td style="text-align: left;">Suspends the specified auto scaling
processes, or all processes, for the specified Auto Scaling group</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../autoscaling_terminate_instance_in_auto_scaling_group/"> terminate_instance_in_auto_scaling_group </a></td>
<td style="text-align: left;">Terminates the specified instance and
optionally adjusts the desired group size</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../autoscaling_update_auto_scaling_group/"> update_auto_scaling_group </a></td>
<td style="text-align: left;">We strongly recommend that all Auto
Scaling groups use launch templates to ensure full functionality for
Amazon EC2 Auto Scaling and Amazon EC2</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- autoscaling()
    # This example attaches the specified instance to the specified Auto
    # Scaling group.
    svc$attach_instances(
      AutoScalingGroupName = "my-auto-scaling-group",
      InstanceIds = list(
        "i-93633f9b"
      )
    )

    ## End(Not run)
