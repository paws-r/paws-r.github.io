<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon EC2 Container Service

### Description

Amazon Elastic Container Service

Amazon Elastic Container Service (Amazon ECS) is a highly scalable,
fast, container management service. It makes it easy to run, stop, and
manage Docker containers. You can host your cluster on a serverless
infrastructure that's managed by Amazon ECS by launching your services
or tasks on Fargate. For more control, you can host your tasks on a
cluster of Amazon Elastic Compute Cloud (Amazon EC2) or External
(on-premises) instances that you manage.

Amazon ECS makes it easy to launch and stop container-based applications
with simple API calls. This makes it easy to get the state of your
cluster from a centralized service, and gives you access to many
familiar Amazon EC2 features.

You can use Amazon ECS to schedule the placement of containers across
your cluster based on your resource needs, isolation policies, and
availability requirements. With Amazon ECS, you don't need to operate
your own cluster management and configuration management systems. You
also don't need to worry about scaling your management infrastructure.

### Usage

    ecs(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ecs_:_config">config</code></td>
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

    svc <- ecs(
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
<td style="text-align: left;"><a href="../ecs_create_capacity_provider/"> create_capacity_provider </a></td>
<td style="text-align: left;">Creates a new capacity provider</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ecs_create_cluster/"> create_cluster </a></td>
<td style="text-align: left;">Creates a new Amazon ECS cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ecs_create_service/"> create_service </a></td>
<td style="text-align: left;">Runs and maintains your desired number of
tasks from a specified task definition</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ecs_create_task_set/"> create_task_set </a></td>
<td style="text-align: left;">Create a task set in the specified cluster
and service</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ecs_delete_account_setting/"> delete_account_setting </a></td>
<td style="text-align: left;">Disables an account setting for a
specified user, role, or the root user for an account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ecs_delete_attributes/"> delete_attributes </a></td>
<td style="text-align: left;">Deletes one or more custom attributes from
an Amazon ECS resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ecs_delete_capacity_provider/"> delete_capacity_provider </a></td>
<td style="text-align: left;">Deletes the specified capacity
provider</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ecs_delete_cluster/"> delete_cluster </a></td>
<td style="text-align: left;">Deletes the specified cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ecs_delete_service/"> delete_service </a></td>
<td style="text-align: left;">Deletes a specified service within a
cluster</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ecs_delete_task_definitions/"> delete_task_definitions </a></td>
<td style="text-align: left;">Deletes one or more task definitions</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ecs_delete_task_set/"> delete_task_set </a></td>
<td style="text-align: left;">Deletes a specified task set within a
service</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ecs_deregister_container_instance/"> deregister_container_instance </a></td>
<td style="text-align: left;">Deregisters an Amazon ECS container
instance from the specified cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ecs_deregister_task_definition/"> deregister_task_definition </a></td>
<td style="text-align: left;">Deregisters the specified task definition
by family and revision</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ecs_describe_capacity_providers/"> describe_capacity_providers </a></td>
<td style="text-align: left;">Describes one or more of your capacity
providers</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ecs_describe_clusters/"> describe_clusters </a></td>
<td style="text-align: left;">Describes one or more of your
clusters</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ecs_describe_container_instances/"> describe_container_instances </a></td>
<td style="text-align: left;">Describes one or more container
instances</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ecs_describe_services/"> describe_services </a></td>
<td style="text-align: left;">Describes the specified services running
in your cluster</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ecs_describe_task_definition/"> describe_task_definition </a></td>
<td style="text-align: left;">Describes a task definition</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ecs_describe_tasks/"> describe_tasks </a></td>
<td style="text-align: left;">Describes a specified task or tasks</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ecs_describe_task_sets/"> describe_task_sets </a></td>
<td style="text-align: left;">Describes the task sets in the specified
cluster and service</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ecs_discover_poll_endpoint/"> discover_poll_endpoint </a></td>
<td style="text-align: left;">This action is only used by the Amazon ECS
agent, and it is not intended for use outside of the agent</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ecs_execute_command/"> execute_command </a></td>
<td style="text-align: left;">Runs a command remotely on a container
within a task</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ecs_get_task_protection/"> get_task_protection </a></td>
<td style="text-align: left;">Retrieves the protection status of tasks
in an Amazon ECS service</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ecs_list_account_settings/"> list_account_settings </a></td>
<td style="text-align: left;">Lists the account settings for a specified
principal</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ecs_list_attributes/"> list_attributes </a></td>
<td style="text-align: left;">Lists the attributes for Amazon ECS
resources within a specified target type and cluster</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ecs_list_clusters/"> list_clusters </a></td>
<td style="text-align: left;">Returns a list of existing clusters</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ecs_list_container_instances/"> list_container_instances </a></td>
<td style="text-align: left;">Returns a list of container instances in a
specified cluster</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ecs_list_services/"> list_services </a></td>
<td style="text-align: left;">Returns a list of services</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ecs_list_services_by_namespace/"> list_services_by_namespace </a></td>
<td style="text-align: left;">This operation lists all of the services
that are associated with a Cloud Map namespace</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ecs_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">List the tags for an Amazon ECS
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ecs_list_task_definition_families/"> list_task_definition_families </a></td>
<td style="text-align: left;">Returns a list of task definition families
that are registered to your account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ecs_list_task_definitions/"> list_task_definitions </a></td>
<td style="text-align: left;">Returns a list of task definitions that
are registered to your account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ecs_list_tasks/"> list_tasks </a></td>
<td style="text-align: left;">Returns a list of tasks</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ecs_put_account_setting/"> put_account_setting </a></td>
<td style="text-align: left;">Modifies an account setting</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ecs_put_account_setting_default/"> put_account_setting_default </a></td>
<td style="text-align: left;">Modifies an account setting for all users
on an account for whom no individual account setting has been
specified</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ecs_put_attributes/"> put_attributes </a></td>
<td style="text-align: left;">Create or update an attribute on an Amazon
ECS resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ecs_put_cluster_capacity_providers/"> put_cluster_capacity_providers </a></td>
<td style="text-align: left;">Modifies the available capacity providers
and the default capacity provider strategy for a cluster</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ecs_register_container_instance/"> register_container_instance </a></td>
<td style="text-align: left;">This action is only used by the Amazon ECS
agent, and it is not intended for use outside of the agent</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ecs_register_task_definition/"> register_task_definition </a></td>
<td style="text-align: left;">Registers a new task definition from the
supplied family and containerDefinitions</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ecs_run_task/"> run_task </a></td>
<td style="text-align: left;">Starts a new task using the specified task
definition</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ecs_start_task/"> start_task </a></td>
<td style="text-align: left;">Starts a new task from the specified task
definition on the specified container instance or instances</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ecs_stop_task/"> stop_task </a></td>
<td style="text-align: left;">Stops a running task</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ecs_submit_attachment_state_changes/"> submit_attachment_state_changes </a></td>
<td style="text-align: left;">This action is only used by the Amazon ECS
agent, and it is not intended for use outside of the agent</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ecs_submit_container_state_change/"> submit_container_state_change </a></td>
<td style="text-align: left;">This action is only used by the Amazon ECS
agent, and it is not intended for use outside of the agent</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ecs_submit_task_state_change/"> submit_task_state_change </a></td>
<td style="text-align: left;">This action is only used by the Amazon ECS
agent, and it is not intended for use outside of the agent</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ecs_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Associates the specified tags to a
resource with the specified resourceArn</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ecs_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Deletes specified tags from a
resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ecs_update_capacity_provider/"> update_capacity_provider </a></td>
<td style="text-align: left;">Modifies the parameters for a capacity
provider</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ecs_update_cluster/"> update_cluster </a></td>
<td style="text-align: left;">Updates the cluster</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ecs_update_cluster_settings/"> update_cluster_settings </a></td>
<td style="text-align: left;">Modifies the settings to use for a
cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ecs_update_container_agent/"> update_container_agent </a></td>
<td style="text-align: left;">Updates the Amazon ECS container agent on
a specified container instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ecs_update_container_instances_state/"> update_container_instances_state </a></td>
<td style="text-align: left;">Modifies the status of an Amazon ECS
container instance</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ecs_update_service/"> update_service </a></td>
<td style="text-align: left;">Modifies the parameters of a service</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ecs_update_service_primary_task_set/"> update_service_primary_task_set </a></td>
<td style="text-align: left;">Modifies which task set in a service is
the primary task set</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ecs_update_task_protection/"> update_task_protection </a></td>
<td style="text-align: left;">Updates the protection status of a
task</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ecs_update_task_set/"> update_task_set </a></td>
<td style="text-align: left;">Modifies a task set</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- ecs()
    # This example creates a cluster in your default region.
    svc$create_cluster(
      clusterName = "my_cluster"
    )

    ## End(Not run)
