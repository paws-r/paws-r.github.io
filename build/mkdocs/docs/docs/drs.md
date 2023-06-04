<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>drs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Elastic Disaster Recovery Service

### Description

AWS Elastic Disaster Recovery Service.

### Usage

    drs(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="drs_:_config">config</code></td>
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

    svc <- drs(
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
<td style="text-align: left;"><a href="../drs_create_extended_source_server/"> create_extended_source_server </a></td>
<td style="text-align: left;">Create an extended source server in the
target Account based on the source server in staging account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../drs_create_launch_configuration_template/"> create_launch_configuration_template </a></td>
<td style="text-align: left;">Creates a new Launch Configuration
Template</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../drs_create_replication_configuration_template/"> create_replication_configuration_template </a></td>
<td style="text-align: left;">Creates a new
ReplicationConfigurationTemplate</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../drs_delete_job/"> delete_job </a></td>
<td style="text-align: left;">Deletes a single Job by ID</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../drs_delete_launch_configuration_template/"> delete_launch_configuration_template </a></td>
<td style="text-align: left;">Deletes a single Launch Configuration
Template by ID</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../drs_delete_recovery_instance/"> delete_recovery_instance </a></td>
<td style="text-align: left;">Deletes a single Recovery Instance by
ID</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../drs_delete_replication_configuration_template/"> delete_replication_configuration_template </a></td>
<td style="text-align: left;">Deletes a single Replication Configuration
Template by ID</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../drs_delete_source_server/"> delete_source_server </a></td>
<td style="text-align: left;">Deletes a single Source Server by ID</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../drs_describe_job_log_items/"> describe_job_log_items </a></td>
<td style="text-align: left;">Retrieves a detailed Job log with
pagination</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../drs_describe_jobs/"> describe_jobs </a></td>
<td style="text-align: left;">Returns a list of Jobs</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../drs_describe_launch_configuration_templates/"> describe_launch_configuration_templates </a></td>
<td style="text-align: left;">Lists all Launch Configuration Templates,
filtered by Launch Configuration Template IDs</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../drs_describe_recovery_instances/"> describe_recovery_instances </a></td>
<td style="text-align: left;">Lists all Recovery Instances or multiple
Recovery Instances by ID</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../drs_describe_recovery_snapshots/"> describe_recovery_snapshots </a></td>
<td style="text-align: left;">Lists all Recovery Snapshots for a single
Source Server</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../drs_describe_replication_configuration_templates/"> describe_replication_configuration_templates </a></td>
<td style="text-align: left;">Lists all
ReplicationConfigurationTemplates, filtered by Source Server IDs</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../drs_describe_source_servers/"> describe_source_servers </a></td>
<td style="text-align: left;">Lists all Source Servers or multiple
Source Servers filtered by ID</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../drs_disconnect_recovery_instance/"> disconnect_recovery_instance </a></td>
<td style="text-align: left;">Disconnect a Recovery Instance from
Elastic Disaster Recovery</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../drs_disconnect_source_server/"> disconnect_source_server </a></td>
<td style="text-align: left;">Disconnects a specific Source Server from
Elastic Disaster Recovery</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../drs_get_failback_replication_configuration/"> get_failback_replication_configuration </a></td>
<td style="text-align: left;">Lists all Failback
ReplicationConfigurations, filtered by Recovery Instance ID</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../drs_get_launch_configuration/"> get_launch_configuration </a></td>
<td style="text-align: left;">Gets a LaunchConfiguration, filtered by
Source Server IDs</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../drs_get_replication_configuration/"> get_replication_configuration </a></td>
<td style="text-align: left;">Gets a ReplicationConfiguration, filtered
by Source Server ID</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../drs_initialize_service/"> initialize_service </a></td>
<td style="text-align: left;">Initialize Elastic Disaster Recovery</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../drs_list_extensible_source_servers/"> list_extensible_source_servers </a></td>
<td style="text-align: left;">Returns a list of source servers on a
staging account that are extensible, which means that: a</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../drs_list_staging_accounts/"> list_staging_accounts </a></td>
<td style="text-align: left;">Returns an array of staging accounts for
existing extended source servers</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../drs_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">List all tags for your Elastic Disaster
Recovery resources</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../drs_retry_data_replication/"> retry_data_replication </a></td>
<td style="text-align: left;">WARNING: RetryDataReplication is
deprecated</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../drs_reverse_replication/"> reverse_replication </a></td>
<td style="text-align: left;">Start replication to origin / target
region - applies only to protected instances that originated in EC2</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../drs_start_failback_launch/"> start_failback_launch </a></td>
<td style="text-align: left;">Initiates a Job for launching the machine
that is being failed back to from the specified Recovery Instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../drs_start_recovery/"> start_recovery </a></td>
<td style="text-align: left;">Launches Recovery Instances for the
specified Source Servers</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../drs_start_replication/"> start_replication </a></td>
<td style="text-align: left;">Starts replication for a stopped Source
Server</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../drs_stop_failback/"> stop_failback </a></td>
<td style="text-align: left;">Stops the failback process for a specified
Recovery Instance</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../drs_stop_replication/"> stop_replication </a></td>
<td style="text-align: left;">Stops replication for a Source Server</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../drs_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Adds or overwrites only the specified tags
for the specified Elastic Disaster Recovery resource or resources</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../drs_terminate_recovery_instances/"> terminate_recovery_instances </a></td>
<td style="text-align: left;">Initiates a Job for terminating the EC2
resources associated with the specified Recovery Instances, and then
will delete the Recovery Instances from the Elastic Disaster Recovery
service</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../drs_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Deletes the specified set of tags from the
specified set of Elastic Disaster Recovery resources</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../drs_update_failback_replication_configuration/"> update_failback_replication_configuration </a></td>
<td style="text-align: left;">Allows you to update the failback
replication configuration of a Recovery Instance by ID</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../drs_update_launch_configuration/"> update_launch_configuration </a></td>
<td style="text-align: left;">Updates a LaunchConfiguration by Source
Server ID</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../drs_update_launch_configuration_template/"> update_launch_configuration_template </a></td>
<td style="text-align: left;">Updates an existing Launch Configuration
Template by ID</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../drs_update_replication_configuration/"> update_replication_configuration </a></td>
<td style="text-align: left;">Allows you to update a
ReplicationConfiguration by Source Server ID</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../drs_update_replication_configuration_template/"> update_replication_configuration_template </a></td>
<td style="text-align: left;">Updates a ReplicationConfigurationTemplate
by ID</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- drs()
    svc$create_extended_source_server(
      Foo = 123
    )

    ## End(Not run)
