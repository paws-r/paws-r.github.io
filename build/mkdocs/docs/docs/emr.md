<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emr</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon EMR

### Description

Amazon EMR is a web service that makes it easier to process large
amounts of data efficiently. Amazon EMR uses Hadoop processing combined
with several Amazon Web Services services to do tasks such as web
indexing, data mining, log file analysis, machine learning, scientific
simulation, and data warehouse management.

### Usage

    emr(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="emr_:_config">config</code></td>
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

    svc <- emr(
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
<td style="text-align: left;"><a href="../emr_add_instance_fleet/"> add_instance_fleet </a></td>
<td style="text-align: left;">Adds an instance fleet to a running
cluster</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../emr_add_instance_groups/"> add_instance_groups </a></td>
<td style="text-align: left;">Adds one or more instance groups to a
running cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../emr_add_job_flow_steps/"> add_job_flow_steps </a></td>
<td style="text-align: left;">AddJobFlowSteps adds new steps to a
running cluster</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../emr_add_tags/"> add_tags </a></td>
<td style="text-align: left;">Adds tags to an Amazon EMR resource, such
as a cluster or an Amazon EMR Studio</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../emr_cancel_steps/"> cancel_steps </a></td>
<td style="text-align: left;">Cancels a pending step or steps in a
running cluster</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../emr_create_security_configuration/"> create_security_configuration </a></td>
<td style="text-align: left;">Creates a security configuration, which is
stored in the service and can be specified when a cluster is
created</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../emr_create_studio/"> create_studio </a></td>
<td style="text-align: left;">Creates a new Amazon EMR Studio</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../emr_create_studio_session_mapping/"> create_studio_session_mapping </a></td>
<td style="text-align: left;">Maps a user or group to the Amazon EMR
Studio specified by StudioId, and applies a session policy to refine
Studio permissions for that user or group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../emr_delete_security_configuration/"> delete_security_configuration </a></td>
<td style="text-align: left;">Deletes a security configuration</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../emr_delete_studio/"> delete_studio </a></td>
<td style="text-align: left;">Removes an Amazon EMR Studio from the
Studio metadata store</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../emr_delete_studio_session_mapping/"> delete_studio_session_mapping </a></td>
<td style="text-align: left;">Removes a user or group from an Amazon EMR
Studio</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../emr_describe_cluster/"> describe_cluster </a></td>
<td style="text-align: left;">Provides cluster-level details including
status, hardware and software configuration, VPC settings, and so
on</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../emr_describe_job_flows/"> describe_job_flows </a></td>
<td style="text-align: left;">This API is no longer supported and will
eventually be removed</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../emr_describe_notebook_execution/"> describe_notebook_execution </a></td>
<td style="text-align: left;">Provides details of a notebook
execution</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../emr_describe_release_label/"> describe_release_label </a></td>
<td style="text-align: left;">Provides Amazon EMR release label details,
such as the releases available the Region where the API request is run,
and the available applications for a specific Amazon EMR release
label</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../emr_describe_security_configuration/"> describe_security_configuration </a></td>
<td style="text-align: left;">Provides the details of a security
configuration by returning the configuration JSON</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../emr_describe_step/"> describe_step </a></td>
<td style="text-align: left;">Provides more detail about the cluster
step</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../emr_describe_studio/"> describe_studio </a></td>
<td style="text-align: left;">Returns details for the specified Amazon
EMR Studio including ID, Name, VPC, Studio access URL, and so on</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../emr_get_auto_termination_policy/"> get_auto_termination_policy </a></td>
<td style="text-align: left;">Returns the auto-termination policy for an
Amazon EMR cluster</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../emr_get_block_public_access_configuration/"> get_block_public_access_configuration </a></td>
<td style="text-align: left;">Returns the Amazon EMR block public access
configuration for your Amazon Web Services account in the current
Region</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../emr_get_cluster_session_credentials/"> get_cluster_session_credentials </a></td>
<td style="text-align: left;">Provides temporary, HTTP basic credentials
that are associated with a given runtime IAM role and used by a cluster
with fine-grained access control activated</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../emr_get_managed_scaling_policy/"> get_managed_scaling_policy </a></td>
<td style="text-align: left;">Fetches the attached managed scaling
policy for an Amazon EMR cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../emr_get_studio_session_mapping/"> get_studio_session_mapping </a></td>
<td style="text-align: left;">Fetches mapping details for the specified
Amazon EMR Studio and identity (user or group)</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../emr_list_bootstrap_actions/"> list_bootstrap_actions </a></td>
<td style="text-align: left;">Provides information about the bootstrap
actions associated with a cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../emr_list_clusters/"> list_clusters </a></td>
<td style="text-align: left;">Provides the status of all clusters
visible to this Amazon Web Services account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../emr_list_instance_fleets/"> list_instance_fleets </a></td>
<td style="text-align: left;">Lists all available details about the
instance fleets in a cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../emr_list_instance_groups/"> list_instance_groups </a></td>
<td style="text-align: left;">Provides all available details about the
instance groups in a cluster</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../emr_list_instances/"> list_instances </a></td>
<td style="text-align: left;">Provides information for all active Amazon
EC2 instances and Amazon EC2 instances terminated in the last 30 days,
up to a maximum of 2,000</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../emr_list_notebook_executions/"> list_notebook_executions </a></td>
<td style="text-align: left;">Provides summaries of all notebook
executions</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../emr_list_release_labels/"> list_release_labels </a></td>
<td style="text-align: left;">Retrieves release labels of Amazon EMR
services in the Region where the API is called</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../emr_list_security_configurations/"> list_security_configurations </a></td>
<td style="text-align: left;">Lists all the security configurations
visible to this account, providing their creation dates and times, and
their names</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../emr_list_steps/"> list_steps </a></td>
<td style="text-align: left;">Provides a list of steps for the cluster
in reverse order unless you specify stepIds with the request or filter
by StepStates</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../emr_list_studios/"> list_studios </a></td>
<td style="text-align: left;">Returns a list of all Amazon EMR Studios
associated with the Amazon Web Services account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../emr_list_studio_session_mappings/"> list_studio_session_mappings </a></td>
<td style="text-align: left;">Returns a list of all user or group
session mappings for the Amazon EMR Studio specified by StudioId</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../emr_modify_cluster/"> modify_cluster </a></td>
<td style="text-align: left;">Modifies the number of steps that can be
executed concurrently for the cluster specified using ClusterID</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../emr_modify_instance_fleet/"> modify_instance_fleet </a></td>
<td style="text-align: left;">Modifies the target On-Demand and target
Spot capacities for the instance fleet with the specified
InstanceFleetID within the cluster specified using ClusterID</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../emr_modify_instance_groups/"> modify_instance_groups </a></td>
<td style="text-align: left;">ModifyInstanceGroups modifies the number
of nodes and configuration settings of an instance group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../emr_put_auto_scaling_policy/"> put_auto_scaling_policy </a></td>
<td style="text-align: left;">Creates or updates an automatic scaling
policy for a core instance group or task instance group in an Amazon EMR
cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../emr_put_auto_termination_policy/"> put_auto_termination_policy </a></td>
<td style="text-align: left;">Auto-termination is supported in Amazon
EMR releases 5</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../emr_put_block_public_access_configuration/"> put_block_public_access_configuration </a></td>
<td style="text-align: left;">Creates or updates an Amazon EMR block
public access configuration for your Amazon Web Services account in the
current Region</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../emr_put_managed_scaling_policy/"> put_managed_scaling_policy </a></td>
<td style="text-align: left;">Creates or updates a managed scaling
policy for an Amazon EMR cluster</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../emr_remove_auto_scaling_policy/"> remove_auto_scaling_policy </a></td>
<td style="text-align: left;">Removes an automatic scaling policy from a
specified instance group within an Amazon EMR cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../emr_remove_auto_termination_policy/"> remove_auto_termination_policy </a></td>
<td style="text-align: left;">Removes an auto-termination policy from an
Amazon EMR cluster</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../emr_remove_managed_scaling_policy/"> remove_managed_scaling_policy </a></td>
<td style="text-align: left;">Removes a managed scaling policy from a
specified Amazon EMR cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../emr_remove_tags/"> remove_tags </a></td>
<td style="text-align: left;">Removes tags from an Amazon EMR resource,
such as a cluster or Amazon EMR Studio</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../emr_run_job_flow/"> run_job_flow </a></td>
<td style="text-align: left;">RunJobFlow creates and starts running a
new cluster (job flow)</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../emr_set_termination_protection/"> set_termination_protection </a></td>
<td style="text-align: left;">SetTerminationProtection locks a cluster
(job flow) so the Amazon EC2 instances in the cluster cannot be
terminated by user intervention, an API call, or in the event of a
job-flow error</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../emr_set_visible_to_all_users/"> set_visible_to_all_users </a></td>
<td style="text-align: left;">The SetVisibleToAllUsers parameter is no
longer supported</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../emr_start_notebook_execution/"> start_notebook_execution </a></td>
<td style="text-align: left;">Starts a notebook execution</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../emr_stop_notebook_execution/"> stop_notebook_execution </a></td>
<td style="text-align: left;">Stops a notebook execution</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../emr_terminate_job_flows/"> terminate_job_flows </a></td>
<td style="text-align: left;">TerminateJobFlows shuts a list of clusters
(job flows) down</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../emr_update_studio/"> update_studio </a></td>
<td style="text-align: left;">Updates an Amazon EMR Studio
configuration, including attributes such as name, description, and
subnets</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../emr_update_studio_session_mapping/"> update_studio_session_mapping </a></td>
<td style="text-align: left;">Updates the session policy attached to the
user or group for the specified Amazon EMR Studio</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- emr()
    svc$add_instance_fleet(
      Foo = 123
    )

    ## End(Not run)
