<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon Simple Systems Manager (SSM)

### Description

Amazon Web Services Systems Manager is the operations hub for your
Amazon Web Services applications and resources and a secure end-to-end
management solution for hybrid cloud environments that enables safe and
secure operations at scale.

This reference is intended to be used with the [Amazon Web Services
Systems Manager User
Guide](https://docs.aws.amazon.com/systems-manager/latest/userguide/).
To get started, see [Setting up Amazon Web Services Systems
Manager](https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-setting-up.html).

**Related resources**

-   For information about each of the capabilities that comprise Systems
    Manager, see [Systems Manager
    capabilities](https://docs.aws.amazon.com/systems-manager-automation-runbooks/latest/userguide/#systems-manager-capabilities)
    in the *Amazon Web Services Systems Manager User Guide*.

-   For details about predefined runbooks for Automation, a capability
    of Amazon Web Services Systems Manager, see the
    *<span href="https://docs.aws.amazon.com/systems-manager-automation-runbooks/latest/userguide/automation-runbook-reference.html">Systems
    Manager Automation runbook reference</span>* .

-   For information about AppConfig, a capability of Systems Manager,
    see the
    *<span href="https://docs.aws.amazon.com/appconfig/latest/userguide/">AppConfig
    User Guide</span>* and the
    *<span href="https://docs.aws.amazon.com/appconfig/2019-10-09/APIReference/">AppConfig
    API Reference</span>* .

-   For information about Incident Manager, a capability of Systems
    Manager, see the
    *<span href="https://docs.aws.amazon.com/incident-manager/latest/userguide/">Systems
    Manager Incident Manager User Guide</span>* and the
    *<span href="https://docs.aws.amazon.com/incident-manager/latest/APIReference/">Systems
    Manager Incident Manager API Reference</span>* .

### Usage

    ssm(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ssm_:_config">config</code></td>
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

    svc <- ssm(
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
<td style="text-align: left;"><a href="../ssm_add_tags_to_resource/"> add_tags_to_resource </a></td>
<td style="text-align: left;">Adds or overwrites one or more tags for
the specified resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssm_associate_ops_item_related_item/"> associate_ops_item_related_item </a></td>
<td style="text-align: left;">Associates a related item to a Systems
Manager OpsCenter OpsItem</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssm_cancel_command/"> cancel_command </a></td>
<td style="text-align: left;">Attempts to cancel the command specified
by the Command ID</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssm_cancel_maintenance_window_execution/"> cancel_maintenance_window_execution </a></td>
<td style="text-align: left;">Stops a maintenance window execution that
is already in progress and cancels any tasks in the window that haven't
already starting running</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssm_create_activation/"> create_activation </a></td>
<td style="text-align: left;">Generates an activation code and
activation ID you can use to register your on-premises servers, edge
devices, or virtual machine (VM) with Amazon Web Services Systems
Manager</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssm_create_association/"> create_association </a></td>
<td style="text-align: left;">A State Manager association defines the
state that you want to maintain on your managed nodes</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssm_create_association_batch/"> create_association_batch </a></td>
<td style="text-align: left;">Associates the specified Amazon Web
Services Systems Manager document (SSM document) with the specified
managed nodes or targets</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssm_create_document/"> create_document </a></td>
<td style="text-align: left;">Creates a Amazon Web Services Systems
Manager (SSM document)</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssm_create_maintenance_window/"> create_maintenance_window </a></td>
<td style="text-align: left;">Creates a new maintenance window</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssm_create_ops_item/"> create_ops_item </a></td>
<td style="text-align: left;">Creates a new OpsItem</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssm_create_ops_metadata/"> create_ops_metadata </a></td>
<td style="text-align: left;">If you create a new application in
Application Manager, Amazon Web Services Systems Manager calls this API
operation to specify information about the new application, including
the application type</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssm_create_patch_baseline/"> create_patch_baseline </a></td>
<td style="text-align: left;">Creates a patch baseline</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssm_create_resource_data_sync/"> create_resource_data_sync </a></td>
<td style="text-align: left;">A resource data sync helps you view data
from multiple sources in a single location</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssm_delete_activation/"> delete_activation </a></td>
<td style="text-align: left;">Deletes an activation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssm_delete_association/"> delete_association </a></td>
<td style="text-align: left;">Disassociates the specified Amazon Web
Services Systems Manager document (SSM document) from the specified
managed node</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssm_delete_document/"> delete_document </a></td>
<td style="text-align: left;">Deletes the Amazon Web Services Systems
Manager document (SSM document) and all managed node associations to the
document</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssm_delete_inventory/"> delete_inventory </a></td>
<td style="text-align: left;">Delete a custom inventory type or the data
associated with a custom Inventory type</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssm_delete_maintenance_window/"> delete_maintenance_window </a></td>
<td style="text-align: left;">Deletes a maintenance window</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssm_delete_ops_metadata/"> delete_ops_metadata </a></td>
<td style="text-align: left;">Delete OpsMetadata related to an
application</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssm_delete_parameter/"> delete_parameter </a></td>
<td style="text-align: left;">Delete a parameter from the system</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssm_delete_parameters/"> delete_parameters </a></td>
<td style="text-align: left;">Delete a list of parameters</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssm_delete_patch_baseline/"> delete_patch_baseline </a></td>
<td style="text-align: left;">Deletes a patch baseline</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssm_delete_resource_data_sync/"> delete_resource_data_sync </a></td>
<td style="text-align: left;">Deletes a resource data sync
configuration</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssm_delete_resource_policy/"> delete_resource_policy </a></td>
<td style="text-align: left;">Deletes a Systems Manager resource
policy</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssm_deregister_managed_instance/"> deregister_managed_instance </a></td>
<td style="text-align: left;">Removes the server or virtual machine from
the list of registered servers</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ssm_deregister_patch_baseline_for_patch_group/"> deregister_patch_baseline_for_patch_group </a></td>
<td style="text-align: left;">Removes a patch group from a patch
baseline</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ssm_deregister_target_from_maintenance_window/"> deregister_target_from_maintenance_window </a></td>
<td style="text-align: left;">Removes a target from a maintenance
window</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ssm_deregister_task_from_maintenance_window/"> deregister_task_from_maintenance_window </a></td>
<td style="text-align: left;">Removes a task from a maintenance
window</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssm_describe_activations/"> describe_activations </a></td>
<td style="text-align: left;">Describes details about the activation,
such as the date and time the activation was created, its expiration
date, the Identity and Access Management (IAM) role assigned to the
managed nodes in the activation, and the number of nodes registered by
using this activation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssm_describe_association/"> describe_association </a></td>
<td style="text-align: left;">Describes the association for the
specified target or managed node</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssm_describe_association_executions/"> describe_association_executions </a></td>
<td style="text-align: left;">Views all executions for a specific
association ID</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ssm_describe_association_execution_targets/"> describe_association_execution_targets </a></td>
<td style="text-align: left;">Views information about a specific
execution of a specific association</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssm_describe_automation_executions/"> describe_automation_executions </a></td>
<td style="text-align: left;">Provides details about all active and
terminated Automation executions</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssm_describe_automation_step_executions/"> describe_automation_step_executions </a></td>
<td style="text-align: left;">Information about all active and
terminated step executions in an Automation workflow</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssm_describe_available_patches/"> describe_available_patches </a></td>
<td style="text-align: left;">Lists all patches eligible to be included
in a patch baseline</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssm_describe_document/"> describe_document </a></td>
<td style="text-align: left;">Describes the specified Amazon Web
Services Systems Manager document (SSM document)</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssm_describe_document_permission/"> describe_document_permission </a></td>
<td style="text-align: left;">Describes the permissions for a Amazon Web
Services Systems Manager document (SSM document)</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ssm_describe_effective_instance_associations/"> describe_effective_instance_associations </a></td>
<td style="text-align: left;">All associations for the managed
node(s)</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ssm_describe_effective_patches_for_patch_baseline/"> describe_effective_patches_for_patch_baseline </a></td>
<td style="text-align: left;">Retrieves the current effective patches
(the patch and the approval state) for the specified patch baseline</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssm_describe_instance_associations_status/"> describe_instance_associations_status </a></td>
<td style="text-align: left;">The status of the associations for the
managed node(s)</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssm_describe_instance_information/"> describe_instance_information </a></td>
<td style="text-align: left;">Describes one or more of your managed
nodes, including information about the operating system platform, the
version of SSM Agent installed on the managed node, node status, and so
on</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssm_describe_instance_patches/"> describe_instance_patches </a></td>
<td style="text-align: left;">Retrieves information about the patches on
the specified managed node and their state relative to the patch
baseline being used for the node</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssm_describe_instance_patch_states/"> describe_instance_patch_states </a></td>
<td style="text-align: left;">Retrieves the high-level patch state of
one or more managed nodes</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ssm_describe_instance_patch_states_for_patch_group/"> describe_instance_patch_states_for_patch_group </a></td>
<td style="text-align: left;">Retrieves the high-level patch state for
the managed nodes in the specified patch group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssm_describe_inventory_deletions/"> describe_inventory_deletions </a></td>
<td style="text-align: left;">Describes a specific delete inventory
operation</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ssm_describe_maintenance_window_executions/"> describe_maintenance_window_executions </a></td>
<td style="text-align: left;">Lists the executions of a maintenance
window</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ssm_describe_maintenance_window_execution_task_invocations/"> describe_maintenance_window_execution_task_invocations </a></td>
<td style="text-align: left;">Retrieves the individual task executions
(one per target) for a particular task run as part of a maintenance
window execution</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ssm_describe_maintenance_window_execution_tasks/"> describe_maintenance_window_execution_tasks </a></td>
<td style="text-align: left;">For a given maintenance window execution,
lists the tasks that were run</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssm_describe_maintenance_windows/"> describe_maintenance_windows </a></td>
<td style="text-align: left;">Retrieves the maintenance windows in an
Amazon Web Services account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssm_describe_maintenance_window_schedule/"> describe_maintenance_window_schedule </a></td>
<td style="text-align: left;">Retrieves information about upcoming
executions of a maintenance window</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ssm_describe_maintenance_windows_for_target/"> describe_maintenance_windows_for_target </a></td>
<td style="text-align: left;">Retrieves information about the
maintenance window targets or tasks that a managed node is associated
with</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssm_describe_maintenance_window_targets/"> describe_maintenance_window_targets </a></td>
<td style="text-align: left;">Lists the targets registered with the
maintenance window</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssm_describe_maintenance_window_tasks/"> describe_maintenance_window_tasks </a></td>
<td style="text-align: left;">Lists the tasks in a maintenance
window</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssm_describe_ops_items/"> describe_ops_items </a></td>
<td style="text-align: left;">Query a set of OpsItems</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssm_describe_parameters/"> describe_parameters </a></td>
<td style="text-align: left;">Get information about a parameter</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssm_describe_patch_baselines/"> describe_patch_baselines </a></td>
<td style="text-align: left;">Lists the patch baselines in your Amazon
Web Services account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssm_describe_patch_groups/"> describe_patch_groups </a></td>
<td style="text-align: left;">Lists all patch groups that have been
registered with patch baselines</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssm_describe_patch_group_state/"> describe_patch_group_state </a></td>
<td style="text-align: left;">Returns high-level aggregated patch
compliance state information for a patch group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssm_describe_patch_properties/"> describe_patch_properties </a></td>
<td style="text-align: left;">Lists the properties of available patches
organized by product, product family, classification, severity, and
other properties of available patches</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssm_describe_sessions/"> describe_sessions </a></td>
<td style="text-align: left;">Retrieves a list of all active sessions
(both connected and disconnected) or terminated sessions from the past
30 days</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssm_disassociate_ops_item_related_item/"> disassociate_ops_item_related_item </a></td>
<td style="text-align: left;">Deletes the association between an OpsItem
and a related item</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssm_get_automation_execution/"> get_automation_execution </a></td>
<td style="text-align: left;">Get detailed information about a
particular Automation execution</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssm_get_calendar_state/"> get_calendar_state </a></td>
<td style="text-align: left;">Gets the state of a Amazon Web Services
Systems Manager change calendar at the current time or a specified
time</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssm_get_command_invocation/"> get_command_invocation </a></td>
<td style="text-align: left;">Returns detailed information about command
execution for an invocation or plugin</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssm_get_connection_status/"> get_connection_status </a></td>
<td style="text-align: left;">Retrieves the Session Manager connection
status for a managed node to determine whether it is running and ready
to receive Session Manager connections</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssm_get_default_patch_baseline/"> get_default_patch_baseline </a></td>
<td style="text-align: left;">Retrieves the default patch baseline</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ssm_get_deployable_patch_snapshot_for_instance/"> get_deployable_patch_snapshot_for_instance </a></td>
<td style="text-align: left;">Retrieves the current snapshot for the
patch baseline the managed node uses</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssm_get_document/"> get_document </a></td>
<td style="text-align: left;">Gets the contents of the specified Amazon
Web Services Systems Manager document (SSM document)</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssm_get_inventory/"> get_inventory </a></td>
<td style="text-align: left;">Query inventory information</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssm_get_inventory_schema/"> get_inventory_schema </a></td>
<td style="text-align: left;">Return a list of inventory type names for
the account, or return a list of attribute names for a specific
Inventory item type</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssm_get_maintenance_window/"> get_maintenance_window </a></td>
<td style="text-align: left;">Retrieves a maintenance window</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssm_get_maintenance_window_execution/"> get_maintenance_window_execution </a></td>
<td style="text-align: left;">Retrieves details about a specific a
maintenance window execution</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssm_get_maintenance_window_execution_task/"> get_maintenance_window_execution_task </a></td>
<td style="text-align: left;">Retrieves the details about a specific
task run as part of a maintenance window execution</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ssm_get_maintenance_window_execution_task_invocation/"> get_maintenance_window_execution_task_invocation </a></td>
<td style="text-align: left;">Retrieves information about a specific
task running on a specific target</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssm_get_maintenance_window_task/"> get_maintenance_window_task </a></td>
<td style="text-align: left;">Retrieves the details of a maintenance
window task</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssm_get_ops_item/"> get_ops_item </a></td>
<td style="text-align: left;">Get information about an OpsItem by using
the ID</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssm_get_ops_metadata/"> get_ops_metadata </a></td>
<td style="text-align: left;">View operational metadata related to an
application in Application Manager</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssm_get_ops_summary/"> get_ops_summary </a></td>
<td style="text-align: left;">View a summary of operations metadata
(OpsData) based on specified filters and aggregators</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssm_get_parameter/"> get_parameter </a></td>
<td style="text-align: left;">Get information about a single parameter
by specifying the parameter name</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssm_get_parameter_history/"> get_parameter_history </a></td>
<td style="text-align: left;">Retrieves the history of all changes to a
parameter</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssm_get_parameters/"> get_parameters </a></td>
<td style="text-align: left;">Get information about one or more
parameters by specifying multiple parameter names</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssm_get_parameters_by_path/"> get_parameters_by_path </a></td>
<td style="text-align: left;">Retrieve information about one or more
parameters in a specific hierarchy</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssm_get_patch_baseline/"> get_patch_baseline </a></td>
<td style="text-align: left;">Retrieves information about a patch
baseline</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssm_get_patch_baseline_for_patch_group/"> get_patch_baseline_for_patch_group </a></td>
<td style="text-align: left;">Retrieves the patch baseline that should
be used for the specified patch group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssm_get_resource_policies/"> get_resource_policies </a></td>
<td style="text-align: left;">Returns an array of the Policy object</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssm_get_service_setting/"> get_service_setting </a></td>
<td style="text-align: left;">ServiceSetting is an account-level setting
for an Amazon Web Services service</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssm_label_parameter_version/"> label_parameter_version </a></td>
<td style="text-align: left;">A parameter label is a user-defined alias
to help you manage different versions of a parameter</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssm_list_associations/"> list_associations </a></td>
<td style="text-align: left;">Returns all State Manager associations in
the current Amazon Web Services account and Amazon Web Services
Region</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssm_list_association_versions/"> list_association_versions </a></td>
<td style="text-align: left;">Retrieves all versions of an association
for a specific association ID</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssm_list_command_invocations/"> list_command_invocations </a></td>
<td style="text-align: left;">An invocation is copy of a command sent to
a specific managed node</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssm_list_commands/"> list_commands </a></td>
<td style="text-align: left;">Lists the commands requested by users of
the Amazon Web Services account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssm_list_compliance_items/"> list_compliance_items </a></td>
<td style="text-align: left;">For a specified resource ID, this API
operation returns a list of compliance statuses for different resource
types</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssm_list_compliance_summaries/"> list_compliance_summaries </a></td>
<td style="text-align: left;">Returns a summary count of compliant and
non-compliant resources for a compliance type</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssm_list_document_metadata_history/"> list_document_metadata_history </a></td>
<td style="text-align: left;">Information about approval reviews for a
version of a change template in Change Manager</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssm_list_documents/"> list_documents </a></td>
<td style="text-align: left;">Returns all Systems Manager (SSM)
documents in the current Amazon Web Services account and Amazon Web
Services Region</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssm_list_document_versions/"> list_document_versions </a></td>
<td style="text-align: left;">List all versions for a document</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssm_list_inventory_entries/"> list_inventory_entries </a></td>
<td style="text-align: left;">A list of inventory items returned by the
request</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssm_list_ops_item_events/"> list_ops_item_events </a></td>
<td style="text-align: left;">Returns a list of all OpsItem events in
the current Amazon Web Services Region and Amazon Web Services
account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssm_list_ops_item_related_items/"> list_ops_item_related_items </a></td>
<td style="text-align: left;">Lists all related-item resources
associated with a Systems Manager OpsCenter OpsItem</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssm_list_ops_metadata/"> list_ops_metadata </a></td>
<td style="text-align: left;">Amazon Web Services Systems Manager calls
this API operation when displaying all Application Manager OpsMetadata
objects or blobs</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssm_list_resource_compliance_summaries/"> list_resource_compliance_summaries </a></td>
<td style="text-align: left;">Returns a resource-level summary
count</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssm_list_resource_data_sync/"> list_resource_data_sync </a></td>
<td style="text-align: left;">Lists your resource data sync
configurations</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssm_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Returns a list of the tags assigned to the
specified resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssm_modify_document_permission/"> modify_document_permission </a></td>
<td style="text-align: left;">Shares a Amazon Web Services Systems
Manager document (SSM document)publicly or privately</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssm_put_compliance_items/"> put_compliance_items </a></td>
<td style="text-align: left;">Registers a compliance type and other
compliance details on a designated resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssm_put_inventory/"> put_inventory </a></td>
<td style="text-align: left;">Bulk update custom inventory items on one
or more managed nodes</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssm_put_parameter/"> put_parameter </a></td>
<td style="text-align: left;">Add a parameter to the system</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssm_put_resource_policy/"> put_resource_policy </a></td>
<td style="text-align: left;">Creates or updates a Systems Manager
resource policy</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssm_register_default_patch_baseline/"> register_default_patch_baseline </a></td>
<td style="text-align: left;">Defines the default patch baseline for the
relevant operating system</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ssm_register_patch_baseline_for_patch_group/"> register_patch_baseline_for_patch_group </a></td>
<td style="text-align: left;">Registers a patch baseline for a patch
group</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ssm_register_target_with_maintenance_window/"> register_target_with_maintenance_window </a></td>
<td style="text-align: left;">Registers a target with a maintenance
window</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssm_register_task_with_maintenance_window/"> register_task_with_maintenance_window </a></td>
<td style="text-align: left;">Adds a new task to a maintenance
window</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssm_remove_tags_from_resource/"> remove_tags_from_resource </a></td>
<td style="text-align: left;">Removes tag keys from the specified
resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssm_reset_service_setting/"> reset_service_setting </a></td>
<td style="text-align: left;">ServiceSetting is an account-level setting
for an Amazon Web Services service</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssm_resume_session/"> resume_session </a></td>
<td style="text-align: left;">Reconnects a session to a managed node
after it has been disconnected</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssm_send_automation_signal/"> send_automation_signal </a></td>
<td style="text-align: left;">Sends a signal to an Automation execution
to change the current behavior or status of the execution</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssm_send_command/"> send_command </a></td>
<td style="text-align: left;">Runs commands on one or more managed
nodes</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssm_start_associations_once/"> start_associations_once </a></td>
<td style="text-align: left;">Runs an association immediately and only
one time</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssm_start_automation_execution/"> start_automation_execution </a></td>
<td style="text-align: left;">Initiates execution of an Automation
runbook</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssm_start_change_request_execution/"> start_change_request_execution </a></td>
<td style="text-align: left;">Creates a change request for Change
Manager</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssm_start_session/"> start_session </a></td>
<td style="text-align: left;">Initiates a connection to a target (for
example, a managed node) for a Session Manager session</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssm_stop_automation_execution/"> stop_automation_execution </a></td>
<td style="text-align: left;">Stop an Automation that is currently
running</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssm_terminate_session/"> terminate_session </a></td>
<td style="text-align: left;">Permanently ends a session and closes the
data connection between the Session Manager client and SSM Agent on the
managed node</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssm_unlabel_parameter_version/"> unlabel_parameter_version </a></td>
<td style="text-align: left;">Remove a label or labels from a
parameter</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssm_update_association/"> update_association </a></td>
<td style="text-align: left;">Updates an association</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssm_update_association_status/"> update_association_status </a></td>
<td style="text-align: left;">Updates the status of the Amazon Web
Services Systems Manager document (SSM document) associated with the
specified managed node</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssm_update_document/"> update_document </a></td>
<td style="text-align: left;">Updates one or more values for an SSM
document</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssm_update_document_default_version/"> update_document_default_version </a></td>
<td style="text-align: left;">Set the default version of a document</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssm_update_document_metadata/"> update_document_metadata </a></td>
<td style="text-align: left;">Updates information related to approval
reviews for a specific version of a change template in Change
Manager</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssm_update_maintenance_window/"> update_maintenance_window </a></td>
<td style="text-align: left;">Updates an existing maintenance
window</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssm_update_maintenance_window_target/"> update_maintenance_window_target </a></td>
<td style="text-align: left;">Modifies the target of an existing
maintenance window</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssm_update_maintenance_window_task/"> update_maintenance_window_task </a></td>
<td style="text-align: left;">Modifies a task assigned to a maintenance
window</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssm_update_managed_instance_role/"> update_managed_instance_role </a></td>
<td style="text-align: left;">Changes the Identity and Access Management
(IAM) role that is assigned to the on-premises server, edge device, or
virtual machines (VM)</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssm_update_ops_item/"> update_ops_item </a></td>
<td style="text-align: left;">Edit or change an OpsItem</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssm_update_ops_metadata/"> update_ops_metadata </a></td>
<td style="text-align: left;">Amazon Web Services Systems Manager calls
this API operation when you edit OpsMetadata in Application Manager</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssm_update_patch_baseline/"> update_patch_baseline </a></td>
<td style="text-align: left;">Modifies an existing patch baseline</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssm_update_resource_data_sync/"> update_resource_data_sync </a></td>
<td style="text-align: left;">Update a resource data sync</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssm_update_service_setting/"> update_service_setting </a></td>
<td style="text-align: left;">ServiceSetting is an account-level setting
for an Amazon Web Services service</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- ssm()
    svc$add_tags_to_resource(
      Foo = 123
    )

    ## End(Not run)
