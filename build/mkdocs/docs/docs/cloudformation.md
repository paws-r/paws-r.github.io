<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudformation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS CloudFormation

### Description

CloudFormation

CloudFormation allows you to create and manage Amazon Web Services
infrastructure deployments predictably and repeatedly. You can use
CloudFormation to leverage Amazon Web Services products, such as Amazon
Elastic Compute Cloud, Amazon Elastic Block Store, Amazon Simple
Notification Service, Elastic Load Balancing, and Auto Scaling to build
highly reliable, highly scalable, cost-effective applications without
creating or configuring the underlying Amazon Web Services
infrastructure.

With CloudFormation, you declare all your resources and dependencies in
a template file. The template defines a collection of resources as a
single unit called a stack. CloudFormation creates and deletes all
member resources of the stack together and manages all dependencies
between the resources for you.

For more information about CloudFormation, see the [CloudFormation
product page](https://aws.amazon.com/cloudformation/).

CloudFormation makes use of other Amazon Web Services products. If you
need additional technical information about a specific Amazon Web
Services product, you can find the product's technical documentation at
[`docs.aws.amazon.com`](https://docs.aws.amazon.com/) .

### Usage

    cloudformation(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudformation_:_config">config</code></td>
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

    svc <- cloudformation(
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
<td style="text-align: left;"><a href="../cloudformation_activate_type/"> activate_type </a></td>
<td style="text-align: left;">Activates a public third-party extension,
making it available for use in stack templates</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudformation_batch_describe_type_configurations/"> batch_describe_type_configurations </a></td>
<td style="text-align: left;">Returns configuration data for the
specified CloudFormation extensions, from the CloudFormation registry
for the account and region</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudformation_cancel_update_stack/"> cancel_update_stack </a></td>
<td style="text-align: left;">Cancels an update on the specified
stack</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudformation_continue_update_rollback/"> continue_update_rollback </a></td>
<td style="text-align: left;">For a specified stack that's in the
UPDATE_ROLLBACK_FAILED state, continues rolling it back to the
UPDATE_ROLLBACK_COMPLETE state</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudformation_create_change_set/"> create_change_set </a></td>
<td style="text-align: left;">Creates a list of changes that will be
applied to a stack so that you can review the changes before executing
them</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudformation_create_stack/"> create_stack </a></td>
<td style="text-align: left;">Creates a stack as specified in the
template</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudformation_create_stack_instances/"> create_stack_instances </a></td>
<td style="text-align: left;">Creates stack instances for the specified
accounts, within the specified Amazon Web Services Regions</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudformation_create_stack_set/"> create_stack_set </a></td>
<td style="text-align: left;">Creates a stack set</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudformation_deactivate_type/"> deactivate_type </a></td>
<td style="text-align: left;">Deactivates a public extension that was
previously activated in this account and region</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudformation_delete_change_set/"> delete_change_set </a></td>
<td style="text-align: left;">Deletes the specified change set</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudformation_delete_stack/"> delete_stack </a></td>
<td style="text-align: left;">Deletes a specified stack</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudformation_delete_stack_instances/"> delete_stack_instances </a></td>
<td style="text-align: left;">Deletes stack instances for the specified
accounts, in the specified Amazon Web Services Regions</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudformation_delete_stack_set/"> delete_stack_set </a></td>
<td style="text-align: left;">Deletes a stack set</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudformation_deregister_type/"> deregister_type </a></td>
<td style="text-align: left;">Marks an extension or extension version as
DEPRECATED in the CloudFormation registry, removing it from active
use</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudformation_describe_account_limits/"> describe_account_limits </a></td>
<td style="text-align: left;">Retrieves your account's CloudFormation
limits, such as the maximum number of stacks that you can create in your
account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudformation_describe_change_set/"> describe_change_set </a></td>
<td style="text-align: left;">Returns the inputs for the change set and
a list of changes that CloudFormation will make if you execute the
change set</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudformation_describe_change_set_hooks/"> describe_change_set_hooks </a></td>
<td style="text-align: left;">Returns hook-related information for the
change set and a list of changes that CloudFormation makes when you run
the change set</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudformation_describe_publisher/"> describe_publisher </a></td>
<td style="text-align: left;">Returns information about a CloudFormation
extension publisher</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudformation_describe_stack_drift_detection_status/"> describe_stack_drift_detection_status </a></td>
<td style="text-align: left;">Returns information about a stack drift
detection operation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudformation_describe_stack_events/"> describe_stack_events </a></td>
<td style="text-align: left;">Returns all stack related events for a
specified stack in reverse chronological order</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudformation_describe_stack_instance/"> describe_stack_instance </a></td>
<td style="text-align: left;">Returns the stack instance that's
associated with the specified stack set, Amazon Web Services account,
and Region</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudformation_describe_stack_resource/"> describe_stack_resource </a></td>
<td style="text-align: left;">Returns a description of the specified
resource in the specified stack</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudformation_describe_stack_resource_drifts/"> describe_stack_resource_drifts </a></td>
<td style="text-align: left;">Returns drift information for the
resources that have been checked for drift in the specified stack</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudformation_describe_stack_resources/"> describe_stack_resources </a></td>
<td style="text-align: left;">Returns Amazon Web Services resource
descriptions for running and deleted stacks</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudformation_describe_stacks/"> describe_stacks </a></td>
<td style="text-align: left;">Returns the description for the specified
stack; if no stack name was specified, then it returns the description
for all the stacks created</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudformation_describe_stack_set/"> describe_stack_set </a></td>
<td style="text-align: left;">Returns the description of the specified
stack set</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudformation_describe_stack_set_operation/"> describe_stack_set_operation </a></td>
<td style="text-align: left;">Returns the description of the specified
stack set operation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudformation_describe_type/"> describe_type </a></td>
<td style="text-align: left;">Returns detailed information about an
extension that has been registered</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudformation_describe_type_registration/"> describe_type_registration </a></td>
<td style="text-align: left;">Returns information about an extension's
registration, including its current status and type and version
identifiers</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudformation_detect_stack_drift/"> detect_stack_drift </a></td>
<td style="text-align: left;">Detects whether a stack's actual
configuration differs, or has drifted, from it's expected configuration,
as defined in the stack template and any values specified as template
parameters</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudformation_detect_stack_resource_drift/"> detect_stack_resource_drift </a></td>
<td style="text-align: left;">Returns information about whether a
resource's actual configuration differs, or has drifted, from it's
expected configuration, as defined in the stack template and any values
specified as template parameters</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudformation_detect_stack_set_drift/"> detect_stack_set_drift </a></td>
<td style="text-align: left;">Detect drift on a stack set</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudformation_estimate_template_cost/"> estimate_template_cost </a></td>
<td style="text-align: left;">Returns the estimated monthly cost of a
template</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudformation_execute_change_set/"> execute_change_set </a></td>
<td style="text-align: left;">Updates a stack using the input
information that was provided when the specified change set was
created</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudformation_get_stack_policy/"> get_stack_policy </a></td>
<td style="text-align: left;">Returns the stack policy for a specified
stack</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudformation_get_template/"> get_template </a></td>
<td style="text-align: left;">Returns the template body for a specified
stack</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudformation_get_template_summary/"> get_template_summary </a></td>
<td style="text-align: left;">Returns information about a new or
existing template</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudformation_import_stacks_to_stack_set/"> import_stacks_to_stack_set </a></td>
<td style="text-align: left;">Import existing stacks into a new stack
sets</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudformation_list_change_sets/"> list_change_sets </a></td>
<td style="text-align: left;">Returns the ID and status of each active
change set for a stack</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudformation_list_exports/"> list_exports </a></td>
<td style="text-align: left;">Lists all exported output values in the
account and Region in which you call this action</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudformation_list_imports/"> list_imports </a></td>
<td style="text-align: left;">Lists all stacks that are importing an
exported output value</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudformation_list_stack_instances/"> list_stack_instances </a></td>
<td style="text-align: left;">Returns summary information about stack
instances that are associated with the specified stack set</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudformation_list_stack_resources/"> list_stack_resources </a></td>
<td style="text-align: left;">Returns descriptions of all resources of
the specified stack</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudformation_list_stacks/"> list_stacks </a></td>
<td style="text-align: left;">Returns the summary information for stacks
whose status matches the specified StackStatusFilter</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudformation_list_stack_set_operation_results/"> list_stack_set_operation_results </a></td>
<td style="text-align: left;">Returns summary information about the
results of a stack set operation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudformation_list_stack_set_operations/"> list_stack_set_operations </a></td>
<td style="text-align: left;">Returns summary information about
operations performed on a stack set</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudformation_list_stack_sets/"> list_stack_sets </a></td>
<td style="text-align: left;">Returns summary information about stack
sets that are associated with the user</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudformation_list_type_registrations/"> list_type_registrations </a></td>
<td style="text-align: left;">Returns a list of registration tokens for
the specified extension(s)</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudformation_list_types/"> list_types </a></td>
<td style="text-align: left;">Returns summary information about
extension that have been registered with CloudFormation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudformation_list_type_versions/"> list_type_versions </a></td>
<td style="text-align: left;">Returns summary information about the
versions of an extension</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudformation_publish_type/"> publish_type </a></td>
<td style="text-align: left;">Publishes the specified extension to the
CloudFormation registry as a public extension in this region</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudformation_record_handler_progress/"> record_handler_progress </a></td>
<td style="text-align: left;">Reports progress of a resource handler to
CloudFormation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudformation_register_publisher/"> register_publisher </a></td>
<td style="text-align: left;">Registers your account as a publisher of
public extensions in the CloudFormation registry</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudformation_register_type/"> register_type </a></td>
<td style="text-align: left;">Registers an extension with the
CloudFormation service</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudformation_rollback_stack/"> rollback_stack </a></td>
<td style="text-align: left;">When specifying RollbackStack, you
preserve the state of previously provisioned resources when an operation
fails</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudformation_set_stack_policy/"> set_stack_policy </a></td>
<td style="text-align: left;">Sets a stack policy for a specified
stack</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudformation_set_type_configuration/"> set_type_configuration </a></td>
<td style="text-align: left;">Specifies the configuration data for a
registered CloudFormation extension, in the given account and
region</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudformation_set_type_default_version/"> set_type_default_version </a></td>
<td style="text-align: left;">Specify the default version of an
extension</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudformation_signal_resource/"> signal_resource </a></td>
<td style="text-align: left;">Sends a signal to the specified resource
with a success or failure status</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudformation_stop_stack_set_operation/"> stop_stack_set_operation </a></td>
<td style="text-align: left;">Stops an in-progress operation on a stack
set and its associated stack instances</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudformation_test_type/"> test_type </a></td>
<td style="text-align: left;">Tests a registered extension to make sure
it meets all necessary requirements for being published in the
CloudFormation registry</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudformation_update_stack/"> update_stack </a></td>
<td style="text-align: left;">Updates a stack as specified in the
template</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudformation_update_stack_instances/"> update_stack_instances </a></td>
<td style="text-align: left;">Updates the parameter values for stack
instances for the specified accounts, within the specified Amazon Web
Services Regions</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudformation_update_stack_set/"> update_stack_set </a></td>
<td style="text-align: left;">Updates the stack set, and associated
stack instances in the specified accounts and Amazon Web Services
Regions</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudformation_update_termination_protection/"> update_termination_protection </a></td>
<td style="text-align: left;">Updates termination protection for the
specified stack</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudformation_validate_template/"> validate_template </a></td>
<td style="text-align: left;">Validates a specified template</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- cloudformation()
    svc$activate_type(
      Foo = 123
    )

    ## End(Not run)
