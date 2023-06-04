<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon Connect Service

### Description

Amazon Connect is a cloud-based contact center solution that you use to
set up and manage a customer contact center and provide reliable
customer engagement at any scale.

Amazon Connect provides metrics and real-time reporting that enable you
to optimize contact routing. You can also resolve customer issues more
efficiently by getting customers in touch with the appropriate agents.

There are limits to the number of Amazon Connect resources that you can
create. There are also limits to the number of requests that you can
make per second. For more information, see [Amazon Connect Service
Quotas](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html)
in the *Amazon Connect Administrator Guide*.

You can connect programmatically to an Amazon Web Services service by
using an endpoint. For a list of Amazon Connect endpoints, see [Amazon
Connect
Endpoints](https://docs.aws.amazon.com/general/latest/gr/connect_region.html).

### Usage

    connect(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="connect_:_config">config</code></td>
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

    svc <- connect(
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
<td style="text-align: left;"><a href="../connect_activate_evaluation_form/"> activate_evaluation_form </a></td>
<td style="text-align: left;">Activates an evaluation form in the
specified Amazon Connect instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_associate_approved_origin/"> associate_approved_origin </a></td>
<td style="text-align: left;">This API is in preview release for Amazon
Connect and is subject to change</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_associate_bot/"> associate_bot </a></td>
<td style="text-align: left;">This API is in preview release for Amazon
Connect and is subject to change</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_associate_default_vocabulary/"> associate_default_vocabulary </a></td>
<td style="text-align: left;">Associates an existing vocabulary as the
default</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_associate_instance_storage_config/"> associate_instance_storage_config </a></td>
<td style="text-align: left;">This API is in preview release for Amazon
Connect and is subject to change</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_associate_lambda_function/"> associate_lambda_function </a></td>
<td style="text-align: left;">This API is in preview release for Amazon
Connect and is subject to change</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_associate_lex_bot/"> associate_lex_bot </a></td>
<td style="text-align: left;">This API is in preview release for Amazon
Connect and is subject to change</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_associate_phone_number_contact_flow/"> associate_phone_number_contact_flow </a></td>
<td style="text-align: left;">Associates a flow with a phone number
claimed to your Amazon Connect instance</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_associate_queue_quick_connects/"> associate_queue_quick_connects </a></td>
<td style="text-align: left;">This API is in preview release for Amazon
Connect and is subject to change</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_associate_routing_profile_queues/"> associate_routing_profile_queues </a></td>
<td style="text-align: left;">Associates a set of queues with a routing
profile</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_associate_security_key/"> associate_security_key </a></td>
<td style="text-align: left;">This API is in preview release for Amazon
Connect and is subject to change</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_claim_phone_number/"> claim_phone_number </a></td>
<td style="text-align: left;">Claims an available phone number to your
Amazon Connect instance or traffic distribution group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_create_agent_status/"> create_agent_status </a></td>
<td style="text-align: left;">This API is in preview release for Amazon
Connect and is subject to change</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_create_contact_flow/"> create_contact_flow </a></td>
<td style="text-align: left;">Creates a flow for the specified Amazon
Connect instance</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_create_contact_flow_module/"> create_contact_flow_module </a></td>
<td style="text-align: left;">Creates a flow module for the specified
Amazon Connect instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_create_evaluation_form/"> create_evaluation_form </a></td>
<td style="text-align: left;">Creates an evaluation form in the
specified Amazon Connect instance</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_create_hours_of_operation/"> create_hours_of_operation </a></td>
<td style="text-align: left;">This API is in preview release for Amazon
Connect and is subject to change</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_create_instance/"> create_instance </a></td>
<td style="text-align: left;">This API is in preview release for Amazon
Connect and is subject to change</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_create_integration_association/"> create_integration_association </a></td>
<td style="text-align: left;">Creates an Amazon Web Services resource
association with an Amazon Connect instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_create_participant/"> create_participant </a></td>
<td style="text-align: left;">Adds a new participant into an on-going
chat contact</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_create_prompt/"> create_prompt </a></td>
<td style="text-align: left;">Creates a prompt</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_create_queue/"> create_queue </a></td>
<td style="text-align: left;">This API is in preview release for Amazon
Connect and is subject to change</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_create_quick_connect/"> create_quick_connect </a></td>
<td style="text-align: left;">Creates a quick connect for the specified
Amazon Connect instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_create_routing_profile/"> create_routing_profile </a></td>
<td style="text-align: left;">Creates a new routing profile</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_create_rule/"> create_rule </a></td>
<td style="text-align: left;">Creates a rule for the specified Amazon
Connect instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_create_security_profile/"> create_security_profile </a></td>
<td style="text-align: left;">This API is in preview release for Amazon
Connect and is subject to change</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_create_task_template/"> create_task_template </a></td>
<td style="text-align: left;">Creates a new task template in the
specified Amazon Connect instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_create_traffic_distribution_group/"> create_traffic_distribution_group </a></td>
<td style="text-align: left;">Creates a traffic distribution group given
an Amazon Connect instance that has been replicated</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_create_use_case/"> create_use_case </a></td>
<td style="text-align: left;">Creates a use case for an integration
association</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_create_user/"> create_user </a></td>
<td style="text-align: left;">Creates a user account for the specified
Amazon Connect instance</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_create_user_hierarchy_group/"> create_user_hierarchy_group </a></td>
<td style="text-align: left;">Creates a new user hierarchy group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_create_vocabulary/"> create_vocabulary </a></td>
<td style="text-align: left;">Creates a custom vocabulary associated
with your Amazon Connect instance</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_deactivate_evaluation_form/"> deactivate_evaluation_form </a></td>
<td style="text-align: left;">Deactivates an evaluation form in the
specified Amazon Connect instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_delete_contact_evaluation/"> delete_contact_evaluation </a></td>
<td style="text-align: left;">Deletes a contact evaluation in the
specified Amazon Connect instance</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_delete_contact_flow/"> delete_contact_flow </a></td>
<td style="text-align: left;">Deletes a flow for the specified Amazon
Connect instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_delete_contact_flow_module/"> delete_contact_flow_module </a></td>
<td style="text-align: left;">Deletes the specified flow module</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_delete_evaluation_form/"> delete_evaluation_form </a></td>
<td style="text-align: left;">Deletes an evaluation form in the
specified Amazon Connect instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_delete_hours_of_operation/"> delete_hours_of_operation </a></td>
<td style="text-align: left;">This API is in preview release for Amazon
Connect and is subject to change</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_delete_instance/"> delete_instance </a></td>
<td style="text-align: left;">This API is in preview release for Amazon
Connect and is subject to change</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_delete_integration_association/"> delete_integration_association </a></td>
<td style="text-align: left;">Deletes an Amazon Web Services resource
association from an Amazon Connect instance</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_delete_prompt/"> delete_prompt </a></td>
<td style="text-align: left;">Deletes a prompt</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_delete_quick_connect/"> delete_quick_connect </a></td>
<td style="text-align: left;">Deletes a quick connect</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_delete_rule/"> delete_rule </a></td>
<td style="text-align: left;">Deletes a rule for the specified Amazon
Connect instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_delete_security_profile/"> delete_security_profile </a></td>
<td style="text-align: left;">This API is in preview release for Amazon
Connect and is subject to change</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_delete_task_template/"> delete_task_template </a></td>
<td style="text-align: left;">Deletes the task template</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_delete_traffic_distribution_group/"> delete_traffic_distribution_group </a></td>
<td style="text-align: left;">Deletes a traffic distribution group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_delete_use_case/"> delete_use_case </a></td>
<td style="text-align: left;">Deletes a use case from an integration
association</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_delete_user/"> delete_user </a></td>
<td style="text-align: left;">Deletes a user account from the specified
Amazon Connect instance</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_delete_user_hierarchy_group/"> delete_user_hierarchy_group </a></td>
<td style="text-align: left;">Deletes an existing user hierarchy
group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_delete_vocabulary/"> delete_vocabulary </a></td>
<td style="text-align: left;">Deletes the vocabulary that has the given
identifier</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_describe_agent_status/"> describe_agent_status </a></td>
<td style="text-align: left;">This API is in preview release for Amazon
Connect and is subject to change</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_describe_contact/"> describe_contact </a></td>
<td style="text-align: left;">This API is in preview release for Amazon
Connect and is subject to change</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_describe_contact_evaluation/"> describe_contact_evaluation </a></td>
<td style="text-align: left;">Describes a contact evaluation in the
specified Amazon Connect instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_describe_contact_flow/"> describe_contact_flow </a></td>
<td style="text-align: left;">Describes the specified flow</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_describe_contact_flow_module/"> describe_contact_flow_module </a></td>
<td style="text-align: left;">Describes the specified flow module</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_describe_evaluation_form/"> describe_evaluation_form </a></td>
<td style="text-align: left;">Describes an evaluation form in the
specified Amazon Connect instance</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_describe_hours_of_operation/"> describe_hours_of_operation </a></td>
<td style="text-align: left;">This API is in preview release for Amazon
Connect and is subject to change</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_describe_instance/"> describe_instance </a></td>
<td style="text-align: left;">This API is in preview release for Amazon
Connect and is subject to change</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_describe_instance_attribute/"> describe_instance_attribute </a></td>
<td style="text-align: left;">This API is in preview release for Amazon
Connect and is subject to change</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_describe_instance_storage_config/"> describe_instance_storage_config </a></td>
<td style="text-align: left;">This API is in preview release for Amazon
Connect and is subject to change</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_describe_phone_number/"> describe_phone_number </a></td>
<td style="text-align: left;">Gets details and status of a phone number
that’s claimed to your Amazon Connect instance or traffic distribution
group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_describe_prompt/"> describe_prompt </a></td>
<td style="text-align: left;">Describes the prompt</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_describe_queue/"> describe_queue </a></td>
<td style="text-align: left;">This API is in preview release for Amazon
Connect and is subject to change</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_describe_quick_connect/"> describe_quick_connect </a></td>
<td style="text-align: left;">Describes the quick connect</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_describe_routing_profile/"> describe_routing_profile </a></td>
<td style="text-align: left;">Describes the specified routing
profile</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_describe_rule/"> describe_rule </a></td>
<td style="text-align: left;">Describes a rule for the specified Amazon
Connect instance</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_describe_security_profile/"> describe_security_profile </a></td>
<td style="text-align: left;">This API is in preview release for Amazon
Connect and is subject to change</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_describe_traffic_distribution_group/"> describe_traffic_distribution_group </a></td>
<td style="text-align: left;">Gets details and status of a traffic
distribution group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_describe_user/"> describe_user </a></td>
<td style="text-align: left;">Describes the specified user account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_describe_user_hierarchy_group/"> describe_user_hierarchy_group </a></td>
<td style="text-align: left;">Describes the specified hierarchy
group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_describe_user_hierarchy_structure/"> describe_user_hierarchy_structure </a></td>
<td style="text-align: left;">Describes the hierarchy structure of the
specified Amazon Connect instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_describe_vocabulary/"> describe_vocabulary </a></td>
<td style="text-align: left;">Describes the specified vocabulary</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_disassociate_approved_origin/"> disassociate_approved_origin </a></td>
<td style="text-align: left;">This API is in preview release for Amazon
Connect and is subject to change</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_disassociate_bot/"> disassociate_bot </a></td>
<td style="text-align: left;">This API is in preview release for Amazon
Connect and is subject to change</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_disassociate_instance_storage_config/"> disassociate_instance_storage_config </a></td>
<td style="text-align: left;">This API is in preview release for Amazon
Connect and is subject to change</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_disassociate_lambda_function/"> disassociate_lambda_function </a></td>
<td style="text-align: left;">This API is in preview release for Amazon
Connect and is subject to change</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_disassociate_lex_bot/"> disassociate_lex_bot </a></td>
<td style="text-align: left;">This API is in preview release for Amazon
Connect and is subject to change</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../connect_disassociate_phone_number_contact_flow/"> disassociate_phone_number_contact_flow </a></td>
<td style="text-align: left;">Removes the flow association from a phone
number claimed to your Amazon Connect instance</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_disassociate_queue_quick_connects/"> disassociate_queue_quick_connects </a></td>
<td style="text-align: left;">This API is in preview release for Amazon
Connect and is subject to change</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_disassociate_routing_profile_queues/"> disassociate_routing_profile_queues </a></td>
<td style="text-align: left;">Disassociates a set of queues from a
routing profile</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_disassociate_security_key/"> disassociate_security_key </a></td>
<td style="text-align: left;">This API is in preview release for Amazon
Connect and is subject to change</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_dismiss_user_contact/"> dismiss_user_contact </a></td>
<td style="text-align: left;">Dismisses contacts from an agent’s CCP and
returns the agent to an available state, which allows the agent to
receive a new routed contact</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_get_contact_attributes/"> get_contact_attributes </a></td>
<td style="text-align: left;">Retrieves the contact attributes for the
specified contact</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_get_current_metric_data/"> get_current_metric_data </a></td>
<td style="text-align: left;">Gets the real-time metric data from the
specified Amazon Connect instance</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_get_current_user_data/"> get_current_user_data </a></td>
<td style="text-align: left;">Gets the real-time active user data from
the specified Amazon Connect instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_get_federation_token/"> get_federation_token </a></td>
<td style="text-align: left;">Retrieves a token for federation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_get_metric_data/"> get_metric_data </a></td>
<td style="text-align: left;">Gets historical metric data from the
specified Amazon Connect instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_get_metric_data_v2/"> get_metric_data_v2 </a></td>
<td style="text-align: left;">Gets metric data from the specified Amazon
Connect instance</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_get_prompt_file/"> get_prompt_file </a></td>
<td style="text-align: left;">Gets the prompt file</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_get_task_template/"> get_task_template </a></td>
<td style="text-align: left;">Gets details about a specific task
template in the specified Amazon Connect instance</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_get_traffic_distribution/"> get_traffic_distribution </a></td>
<td style="text-align: left;">Retrieves the current traffic distribution
for a given traffic distribution group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_list_agent_statuses/"> list_agent_statuses </a></td>
<td style="text-align: left;">This API is in preview release for Amazon
Connect and is subject to change</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_list_approved_origins/"> list_approved_origins </a></td>
<td style="text-align: left;">This API is in preview release for Amazon
Connect and is subject to change</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_list_bots/"> list_bots </a></td>
<td style="text-align: left;">This API is in preview release for Amazon
Connect and is subject to change</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_list_contact_evaluations/"> list_contact_evaluations </a></td>
<td style="text-align: left;">Lists contact evaluations in the specified
Amazon Connect instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_list_contact_flow_modules/"> list_contact_flow_modules </a></td>
<td style="text-align: left;">Provides information about the flow
modules for the specified Amazon Connect instance</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_list_contact_flows/"> list_contact_flows </a></td>
<td style="text-align: left;">Provides information about the flows for
the specified Amazon Connect instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_list_contact_references/"> list_contact_references </a></td>
<td style="text-align: left;">This API is in preview release for Amazon
Connect and is subject to change</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_list_default_vocabularies/"> list_default_vocabularies </a></td>
<td style="text-align: left;">Lists the default vocabularies for the
specified Amazon Connect instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_list_evaluation_forms/"> list_evaluation_forms </a></td>
<td style="text-align: left;">Lists evaluation forms in the specified
Amazon Connect instance</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_list_evaluation_form_versions/"> list_evaluation_form_versions </a></td>
<td style="text-align: left;">Lists versions of an evaluation form in
the specified Amazon Connect instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_list_hours_of_operations/"> list_hours_of_operations </a></td>
<td style="text-align: left;">Provides information about the hours of
operation for the specified Amazon Connect instance</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_list_instance_attributes/"> list_instance_attributes </a></td>
<td style="text-align: left;">This API is in preview release for Amazon
Connect and is subject to change</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_list_instances/"> list_instances </a></td>
<td style="text-align: left;">This API is in preview release for Amazon
Connect and is subject to change</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_list_instance_storage_configs/"> list_instance_storage_configs </a></td>
<td style="text-align: left;">This API is in preview release for Amazon
Connect and is subject to change</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_list_integration_associations/"> list_integration_associations </a></td>
<td style="text-align: left;">Provides summary information about the
Amazon Web Services resource associations for the specified Amazon
Connect instance</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_list_lambda_functions/"> list_lambda_functions </a></td>
<td style="text-align: left;">This API is in preview release for Amazon
Connect and is subject to change</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_list_lex_bots/"> list_lex_bots </a></td>
<td style="text-align: left;">This API is in preview release for Amazon
Connect and is subject to change</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_list_phone_numbers/"> list_phone_numbers </a></td>
<td style="text-align: left;">Provides information about the phone
numbers for the specified Amazon Connect instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_list_phone_numbers_v2/"> list_phone_numbers_v2 </a></td>
<td style="text-align: left;">Lists phone numbers claimed to your Amazon
Connect instance or traffic distribution group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_list_prompts/"> list_prompts </a></td>
<td style="text-align: left;">Provides information about the prompts for
the specified Amazon Connect instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_list_queue_quick_connects/"> list_queue_quick_connects </a></td>
<td style="text-align: left;">This API is in preview release for Amazon
Connect and is subject to change</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_list_queues/"> list_queues </a></td>
<td style="text-align: left;">Provides information about the queues for
the specified Amazon Connect instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_list_quick_connects/"> list_quick_connects </a></td>
<td style="text-align: left;">Provides information about the quick
connects for the specified Amazon Connect instance</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_list_routing_profile_queues/"> list_routing_profile_queues </a></td>
<td style="text-align: left;">Lists the queues associated with a routing
profile</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_list_routing_profiles/"> list_routing_profiles </a></td>
<td style="text-align: left;">Provides summary information about the
routing profiles for the specified Amazon Connect instance</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_list_rules/"> list_rules </a></td>
<td style="text-align: left;">List all rules for the specified Amazon
Connect instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_list_security_keys/"> list_security_keys </a></td>
<td style="text-align: left;">This API is in preview release for Amazon
Connect and is subject to change</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_list_security_profile_permissions/"> list_security_profile_permissions </a></td>
<td style="text-align: left;">This API is in preview release for Amazon
Connect and is subject to change</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_list_security_profiles/"> list_security_profiles </a></td>
<td style="text-align: left;">Provides summary information about the
security profiles for the specified Amazon Connect instance</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Lists the tags for the specified
resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_list_task_templates/"> list_task_templates </a></td>
<td style="text-align: left;">Lists task templates for the specified
Amazon Connect instance</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_list_traffic_distribution_groups/"> list_traffic_distribution_groups </a></td>
<td style="text-align: left;">Lists traffic distribution groups</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_list_use_cases/"> list_use_cases </a></td>
<td style="text-align: left;">Lists the use cases for the integration
association</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_list_user_hierarchy_groups/"> list_user_hierarchy_groups </a></td>
<td style="text-align: left;">Provides summary information about the
hierarchy groups for the specified Amazon Connect instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_list_users/"> list_users </a></td>
<td style="text-align: left;">Provides summary information about the
users for the specified Amazon Connect instance</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_monitor_contact/"> monitor_contact </a></td>
<td style="text-align: left;">Initiates silent monitoring of a
contact</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_put_user_status/"> put_user_status </a></td>
<td style="text-align: left;">Changes the current status of a user or
agent in Amazon Connect</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_release_phone_number/"> release_phone_number </a></td>
<td style="text-align: left;">Releases a phone number previously claimed
to an Amazon Connect instance or traffic distribution group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_replicate_instance/"> replicate_instance </a></td>
<td style="text-align: left;">Replicates an Amazon Connect instance in
the specified Amazon Web Services Region</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_resume_contact_recording/"> resume_contact_recording </a></td>
<td style="text-align: left;">When a contact is being recorded, and the
recording has been suspended using SuspendContactRecording, this API
resumes recording the call</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_search_available_phone_numbers/"> search_available_phone_numbers </a></td>
<td style="text-align: left;">Searches for available phone numbers that
you can claim to your Amazon Connect instance or traffic distribution
group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_search_queues/"> search_queues </a></td>
<td style="text-align: left;">This API is in preview release for Amazon
Connect and is subject to change</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_search_routing_profiles/"> search_routing_profiles </a></td>
<td style="text-align: left;">This API is in preview release for Amazon
Connect and is subject to change</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_search_security_profiles/"> search_security_profiles </a></td>
<td style="text-align: left;">This API is in preview release for Amazon
Connect and is subject to change</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_search_users/"> search_users </a></td>
<td style="text-align: left;">Searches users in an Amazon Connect
instance, with optional filtering</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_search_vocabularies/"> search_vocabularies </a></td>
<td style="text-align: left;">Searches for vocabularies within a
specific Amazon Connect instance using State, NameStartsWith, and
LanguageCode</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_start_chat_contact/"> start_chat_contact </a></td>
<td style="text-align: left;">Initiates a flow to start a new chat for
the customer</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_start_contact_evaluation/"> start_contact_evaluation </a></td>
<td style="text-align: left;">Starts an empty evaluation in the
specified Amazon Connect instance, using the given evaluation form for
the particular contact</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_start_contact_recording/"> start_contact_recording </a></td>
<td style="text-align: left;">Starts recording the contact:</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_start_contact_streaming/"> start_contact_streaming </a></td>
<td style="text-align: left;">Initiates real-time message streaming for
a new chat contact</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_start_outbound_voice_contact/"> start_outbound_voice_contact </a></td>
<td style="text-align: left;">Places an outbound call to a contact, and
then initiates the flow</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_start_task_contact/"> start_task_contact </a></td>
<td style="text-align: left;">Initiates a flow to start a new task</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_stop_contact/"> stop_contact </a></td>
<td style="text-align: left;">Ends the specified contact</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_stop_contact_recording/"> stop_contact_recording </a></td>
<td style="text-align: left;">Stops recording a call when a contact is
being recorded</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_stop_contact_streaming/"> stop_contact_streaming </a></td>
<td style="text-align: left;">Ends message streaming on a specified
contact</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_submit_contact_evaluation/"> submit_contact_evaluation </a></td>
<td style="text-align: left;">Submits a contact evaluation in the
specified Amazon Connect instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_suspend_contact_recording/"> suspend_contact_recording </a></td>
<td style="text-align: left;">When a contact is being recorded, this API
suspends recording the call</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Adds the specified tags to the specified
resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_transfer_contact/"> transfer_contact </a></td>
<td style="text-align: left;">Transfers contacts from one agent or queue
to another agent or queue at any point after a contact is created</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes the specified tags from the
specified resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_update_agent_status/"> update_agent_status </a></td>
<td style="text-align: left;">This API is in preview release for Amazon
Connect and is subject to change</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_update_contact/"> update_contact </a></td>
<td style="text-align: left;">This API is in preview release for Amazon
Connect and is subject to change</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_update_contact_attributes/"> update_contact_attributes </a></td>
<td style="text-align: left;">Creates or updates user-defined contact
attributes associated with the specified contact</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_update_contact_evaluation/"> update_contact_evaluation </a></td>
<td style="text-align: left;">Updates details about a contact evaluation
in the specified Amazon Connect instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_update_contact_flow_content/"> update_contact_flow_content </a></td>
<td style="text-align: left;">Updates the specified flow</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_update_contact_flow_metadata/"> update_contact_flow_metadata </a></td>
<td style="text-align: left;">Updates metadata about specified flow</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_update_contact_flow_module_content/"> update_contact_flow_module_content </a></td>
<td style="text-align: left;">Updates specified flow module for the
specified Amazon Connect instance</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_update_contact_flow_module_metadata/"> update_contact_flow_module_metadata </a></td>
<td style="text-align: left;">Updates metadata about specified flow
module</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_update_contact_flow_name/"> update_contact_flow_name </a></td>
<td style="text-align: left;">The name of the flow</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_update_contact_schedule/"> update_contact_schedule </a></td>
<td style="text-align: left;">Updates the scheduled time of a task
contact that is already scheduled</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_update_evaluation_form/"> update_evaluation_form </a></td>
<td style="text-align: left;">Updates details about a specific
evaluation form version in the specified Amazon Connect instance</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_update_hours_of_operation/"> update_hours_of_operation </a></td>
<td style="text-align: left;">This API is in preview release for Amazon
Connect and is subject to change</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_update_instance_attribute/"> update_instance_attribute </a></td>
<td style="text-align: left;">This API is in preview release for Amazon
Connect and is subject to change</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_update_instance_storage_config/"> update_instance_storage_config </a></td>
<td style="text-align: left;">This API is in preview release for Amazon
Connect and is subject to change</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_update_participant_role_config/"> update_participant_role_config </a></td>
<td style="text-align: left;">Updates timeouts for when human chat
participants are to be considered idle, and when agents are
automatically disconnected from a chat due to idleness</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_update_phone_number/"> update_phone_number </a></td>
<td style="text-align: left;">Updates your claimed phone number from its
current Amazon Connect instance or traffic distribution group to another
Amazon Connect instance or traffic distribution group in the same Amazon
Web Services Region</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_update_prompt/"> update_prompt </a></td>
<td style="text-align: left;">Updates a prompt</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_update_queue_hours_of_operation/"> update_queue_hours_of_operation </a></td>
<td style="text-align: left;">This API is in preview release for Amazon
Connect and is subject to change</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_update_queue_max_contacts/"> update_queue_max_contacts </a></td>
<td style="text-align: left;">This API is in preview release for Amazon
Connect and is subject to change</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_update_queue_name/"> update_queue_name </a></td>
<td style="text-align: left;">This API is in preview release for Amazon
Connect and is subject to change</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_update_queue_outbound_caller_config/"> update_queue_outbound_caller_config </a></td>
<td style="text-align: left;">This API is in preview release for Amazon
Connect and is subject to change</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_update_queue_status/"> update_queue_status </a></td>
<td style="text-align: left;">This API is in preview release for Amazon
Connect and is subject to change</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_update_quick_connect_config/"> update_quick_connect_config </a></td>
<td style="text-align: left;">Updates the configuration settings for the
specified quick connect</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_update_quick_connect_name/"> update_quick_connect_name </a></td>
<td style="text-align: left;">Updates the name and description of a
quick connect</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_update_routing_profile_concurrency/"> update_routing_profile_concurrency </a></td>
<td style="text-align: left;">Updates the channels that agents can
handle in the Contact Control Panel (CCP) for a routing profile</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../connect_update_routing_profile_default_outbound_queue/"> update_routing_profile_default_outbound_queue </a></td>
<td style="text-align: left;">Updates the default outbound queue of a
routing profile</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_update_routing_profile_name/"> update_routing_profile_name </a></td>
<td style="text-align: left;">Updates the name and description of a
routing profile</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_update_routing_profile_queues/"> update_routing_profile_queues </a></td>
<td style="text-align: left;">Updates the properties associated with a
set of queues for a routing profile</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_update_rule/"> update_rule </a></td>
<td style="text-align: left;">Updates a rule for the specified Amazon
Connect instance</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_update_security_profile/"> update_security_profile </a></td>
<td style="text-align: left;">This API is in preview release for Amazon
Connect and is subject to change</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_update_task_template/"> update_task_template </a></td>
<td style="text-align: left;">Updates details about a specific task
template in the specified Amazon Connect instance</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_update_traffic_distribution/"> update_traffic_distribution </a></td>
<td style="text-align: left;">Updates the traffic distribution for a
given traffic distribution group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_update_user_hierarchy/"> update_user_hierarchy </a></td>
<td style="text-align: left;">Assigns the specified hierarchy group to
the specified user</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_update_user_hierarchy_group_name/"> update_user_hierarchy_group_name </a></td>
<td style="text-align: left;">Updates the name of the user hierarchy
group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_update_user_hierarchy_structure/"> update_user_hierarchy_structure </a></td>
<td style="text-align: left;">Updates the user hierarchy structure: add,
remove, and rename user hierarchy levels</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_update_user_identity_info/"> update_user_identity_info </a></td>
<td style="text-align: left;">Updates the identity information for the
specified user</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_update_user_phone_config/"> update_user_phone_config </a></td>
<td style="text-align: left;">Updates the phone configuration settings
for the specified user</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connect_update_user_routing_profile/"> update_user_routing_profile </a></td>
<td style="text-align: left;">Assigns the specified routing profile to
the specified user</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connect_update_user_security_profiles/"> update_user_security_profiles </a></td>
<td style="text-align: left;">Assigns the specified security profiles to
the specified user</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- connect()
    svc$activate_evaluation_form(
      Foo = 123
    )

    ## End(Not run)
