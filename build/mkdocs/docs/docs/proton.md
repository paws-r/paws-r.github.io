<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>proton</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS Proton

### Description

This is the Proton Service API Reference. It provides descriptions,
syntax and usage examples for each of the
[actions](https://docs.aws.amazon.com/proton/latest/APIReference/API_Operations.html)
and [data
types](https://docs.aws.amazon.com/proton/latest/APIReference/API_Types.html)
for the Proton service.

The documentation for each action shows the Query API request parameters
and the XML response.

Alternatively, you can use the Amazon Web Services CLI to access an API.
For more information, see the [Amazon Web Services Command Line
Interface User
Guide](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html).

The Proton service is a two-pronged automation framework. Administrators
create service templates to provide standardized infrastructure and
deployment tooling for serverless and container based applications.
Developers, in turn, select from the available service templates to
automate their application or service deployments.

Because administrators define the infrastructure and tooling that Proton
deploys and manages, they need permissions to use all of the listed API
operations.

When developers select a specific infrastructure and tooling set, Proton
deploys their applications. To monitor their applications that are
running on Proton, developers need permissions to the service *create*,
*list*, *update* and *delete* API operations and the service instance
*list* and *update* API operations.

To learn more about Proton, see the [Proton User
Guide](https://docs.aws.amazon.com/proton/latest/userguide/Welcome.html).

**Ensuring Idempotency**

When you make a mutating API request, the request typically returns a
result before the asynchronous workflows of the operation are complete.
Operations might also time out or encounter other server issues before
they're complete, even if the request already returned a result. This
might make it difficult to determine whether the request succeeded.
Moreover, you might need to retry the request multiple times to ensure
that the operation completes successfully. However, if the original
request and the subsequent retries are successful, the operation occurs
multiple times. This means that you might create more resources than you
intended.

*Idempotency* ensures that an API request action completes no more than
one time. With an idempotent request, if the original request action
completes successfully, any subsequent retries complete successfully
without performing any further actions. However, the result might
contain updated information, such as the current creation status.

The following lists of APIs are grouped according to methods that ensure
idempotency.

**Idempotent create APIs with a client token**

The API actions in this list support idempotency with the use of a
*client token*. The corresponding Amazon Web Services CLI commands also
support idempotency using a client token. A client token is a unique,
case-sensitive string of up to 64 ASCII characters. To make an
idempotent API request using one of these actions, specify a client
token in the request. We recommend that you *don't* reuse the same
client token for other API requests. If you don’t provide a client token
for these APIs, a default client token is automatically provided by
SDKs.

Given a request action that has succeeded:

If you retry the request using the same client token and the same
parameters, the retry succeeds without performing any further actions
other than returning the original resource detail data in the response.

If you retry the request using the same client token, but one or more of
the parameters are different, the retry throws a `ValidationException`
with an `IdempotentParameterMismatch` error.

Client tokens expire eight hours after a request is made. If you retry
the request with the expired token, a new resource is created.

If the original resource is deleted and you retry the request, a new
resource is created.

Idempotent create APIs with a client token:

-   CreateEnvironmentTemplateVersion

-   CreateServiceTemplateVersion

-   CreateEnvironmentAccountConnection

**Idempotent create APIs**

Given a request action that has succeeded:

If you retry the request with an API from this group, and the original
resource *hasn't* been modified, the retry succeeds without performing
any further actions other than returning the original resource detail
data in the response.

If the original resource has been modified, the retry throws a
`ConflictException`.

If you retry with different input parameters, the retry throws a
`ValidationException` with an `IdempotentParameterMismatch` error.

Idempotent create APIs:

-   CreateEnvironmentTemplate

-   CreateServiceTemplate

-   CreateEnvironment

-   CreateService

**Idempotent delete APIs**

Given a request action that has succeeded:

When you retry the request with an API from this group and the resource
was deleted, its metadata is returned in the response.

If you retry and the resource doesn't exist, the response is empty.

In both cases, the retry succeeds.

Idempotent delete APIs:

-   DeleteEnvironmentTemplate

-   DeleteEnvironmentTemplateVersion

-   DeleteServiceTemplate

-   DeleteServiceTemplateVersion

-   DeleteEnvironmentAccountConnection

**Asynchronous idempotent delete APIs**

Given a request action that has succeeded:

If you retry the request with an API from this group, if the original
request delete operation status is `DELETE_IN_PROGRESS`, the retry
returns the resource detail data in the response without performing any
further actions.

If the original request delete operation is complete, a retry returns an
empty response.

Asynchronous idempotent delete APIs:

-   DeleteEnvironment

-   DeleteService

### Usage

    proton(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="proton_:_config">config</code></td>
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

    svc <- proton(
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
<td style="text-align: left;"><a href="../proton_accept_environment_account_connection/"> accept_environment_account_connection </a></td>
<td style="text-align: left;">In a management account, an environment
account connection request is accepted</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../proton_cancel_component_deployment/"> cancel_component_deployment </a></td>
<td style="text-align: left;">Attempts to cancel a component deployment
(for a component that is in the IN_PROGRESS deployment status)</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../proton_cancel_environment_deployment/"> cancel_environment_deployment </a></td>
<td style="text-align: left;">Attempts to cancel an environment
deployment on an UpdateEnvironment action, if the deployment is
IN_PROGRESS</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../proton_cancel_service_instance_deployment/"> cancel_service_instance_deployment </a></td>
<td style="text-align: left;">Attempts to cancel a service instance
deployment on an UpdateServiceInstance action, if the deployment is
IN_PROGRESS</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../proton_cancel_service_pipeline_deployment/"> cancel_service_pipeline_deployment </a></td>
<td style="text-align: left;">Attempts to cancel a service pipeline
deployment on an UpdateServicePipeline action, if the deployment is
IN_PROGRESS</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../proton_create_component/"> create_component </a></td>
<td style="text-align: left;">Create an Proton component</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../proton_create_environment/"> create_environment </a></td>
<td style="text-align: left;">Deploy a new environment</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../proton_create_environment_account_connection/"> create_environment_account_connection </a></td>
<td style="text-align: left;">Create an environment account connection
in an environment account so that environment infrastructure resources
can be provisioned in the environment account from a management
account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../proton_create_environment_template/"> create_environment_template </a></td>
<td style="text-align: left;">Create an environment template for
Proton</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../proton_create_environment_template_version/"> create_environment_template_version </a></td>
<td style="text-align: left;">Create a new major or minor version of an
environment template</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../proton_create_repository/"> create_repository </a></td>
<td style="text-align: left;">Create and register a link to a
repository</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../proton_create_service/"> create_service </a></td>
<td style="text-align: left;">Create an Proton service</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../proton_create_service_instance/"> create_service_instance </a></td>
<td style="text-align: left;">Create a service instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../proton_create_service_sync_config/"> create_service_sync_config </a></td>
<td style="text-align: left;">Create the Proton Ops configuration
file</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../proton_create_service_template/"> create_service_template </a></td>
<td style="text-align: left;">Create a service template</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../proton_create_service_template_version/"> create_service_template_version </a></td>
<td style="text-align: left;">Create a new major or minor version of a
service template</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../proton_create_template_sync_config/"> create_template_sync_config </a></td>
<td style="text-align: left;">Set up a template to create new template
versions automatically by tracking a linked repository</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../proton_delete_component/"> delete_component </a></td>
<td style="text-align: left;">Delete an Proton component resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../proton_delete_environment/"> delete_environment </a></td>
<td style="text-align: left;">Delete an environment</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../proton_delete_environment_account_connection/"> delete_environment_account_connection </a></td>
<td style="text-align: left;">In an environment account, delete an
environment account connection</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../proton_delete_environment_template/"> delete_environment_template </a></td>
<td style="text-align: left;">If no other major or minor versions of an
environment template exist, delete the environment template</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../proton_delete_environment_template_version/"> delete_environment_template_version </a></td>
<td style="text-align: left;">If no other minor versions of an
environment template exist, delete a major version of the environment
template if it's not the Recommended version</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../proton_delete_repository/"> delete_repository </a></td>
<td style="text-align: left;">De-register and unlink your
repository</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../proton_delete_service/"> delete_service </a></td>
<td style="text-align: left;">Delete a service, with its instances and
pipeline</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../proton_delete_service_sync_config/"> delete_service_sync_config </a></td>
<td style="text-align: left;">Delete the Proton Ops file</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../proton_delete_service_template/"> delete_service_template </a></td>
<td style="text-align: left;">If no other major or minor versions of the
service template exist, delete the service template</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../proton_delete_service_template_version/"> delete_service_template_version </a></td>
<td style="text-align: left;">If no other minor versions of a service
template exist, delete a major version of the service template if it's
not the Recommended version</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../proton_delete_template_sync_config/"> delete_template_sync_config </a></td>
<td style="text-align: left;">Delete a template sync configuration</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../proton_get_account_settings/"> get_account_settings </a></td>
<td style="text-align: left;">Get detail data for Proton account-wide
settings</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../proton_get_component/"> get_component </a></td>
<td style="text-align: left;">Get detailed data for a component</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../proton_get_environment/"> get_environment </a></td>
<td style="text-align: left;">Get detailed data for an environment</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../proton_get_environment_account_connection/"> get_environment_account_connection </a></td>
<td style="text-align: left;">In an environment account, get the
detailed data for an environment account connection</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../proton_get_environment_template/"> get_environment_template </a></td>
<td style="text-align: left;">Get detailed data for an environment
template</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../proton_get_environment_template_version/"> get_environment_template_version </a></td>
<td style="text-align: left;">Get detailed data for a major or minor
version of an environment template</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../proton_get_repository/"> get_repository </a></td>
<td style="text-align: left;">Get detail data for a linked
repository</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../proton_get_repository_sync_status/"> get_repository_sync_status </a></td>
<td style="text-align: left;">Get the sync status of a repository used
for Proton template sync</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../proton_get_resources_summary/"> get_resources_summary </a></td>
<td style="text-align: left;">Get counts of Proton resources</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../proton_get_service/"> get_service </a></td>
<td style="text-align: left;">Get detailed data for a service</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../proton_get_service_instance/"> get_service_instance </a></td>
<td style="text-align: left;">Get detailed data for a service
instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../proton_get_service_instance_sync_status/"> get_service_instance_sync_status </a></td>
<td style="text-align: left;">Get the status of the synced service
instance</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../proton_get_service_sync_blocker_summary/"> get_service_sync_blocker_summary </a></td>
<td style="text-align: left;">Get detailed data for the service sync
blocker summary</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../proton_get_service_sync_config/"> get_service_sync_config </a></td>
<td style="text-align: left;">Get detailed information for the service
sync configuration</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../proton_get_service_template/"> get_service_template </a></td>
<td style="text-align: left;">Get detailed data for a service
template</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../proton_get_service_template_version/"> get_service_template_version </a></td>
<td style="text-align: left;">Get detailed data for a major or minor
version of a service template</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../proton_get_template_sync_config/"> get_template_sync_config </a></td>
<td style="text-align: left;">Get detail data for a template sync
configuration</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../proton_get_template_sync_status/"> get_template_sync_status </a></td>
<td style="text-align: left;">Get the status of a template sync</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../proton_list_component_outputs/"> list_component_outputs </a></td>
<td style="text-align: left;">Get a list of component Infrastructure as
Code (IaC) outputs</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../proton_list_component_provisioned_resources/"> list_component_provisioned_resources </a></td>
<td style="text-align: left;">List provisioned resources for a component
with details</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../proton_list_components/"> list_components </a></td>
<td style="text-align: left;">List components with summary data</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../proton_list_environment_account_connections/"> list_environment_account_connections </a></td>
<td style="text-align: left;">View a list of environment account
connections</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../proton_list_environment_outputs/"> list_environment_outputs </a></td>
<td style="text-align: left;">List the infrastructure as code outputs
for your environment</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../proton_list_environment_provisioned_resources/"> list_environment_provisioned_resources </a></td>
<td style="text-align: left;">List the provisioned resources for your
environment</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../proton_list_environments/"> list_environments </a></td>
<td style="text-align: left;">List environments with detail data
summaries</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../proton_list_environment_templates/"> list_environment_templates </a></td>
<td style="text-align: left;">List environment templates</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../proton_list_environment_template_versions/"> list_environment_template_versions </a></td>
<td style="text-align: left;">List major or minor versions of an
environment template with detail data</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../proton_list_repositories/"> list_repositories </a></td>
<td style="text-align: left;">List linked repositories with detail
data</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../proton_list_repository_sync_definitions/"> list_repository_sync_definitions </a></td>
<td style="text-align: left;">List repository sync definitions with
detail data</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../proton_list_service_instance_outputs/"> list_service_instance_outputs </a></td>
<td style="text-align: left;">Get a list service of instance
Infrastructure as Code (IaC) outputs</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../proton_list_service_instance_provisioned_resources/"> list_service_instance_provisioned_resources </a></td>
<td style="text-align: left;">List provisioned resources for a service
instance with details</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../proton_list_service_instances/"> list_service_instances </a></td>
<td style="text-align: left;">List service instances with summary
data</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../proton_list_service_pipeline_outputs/"> list_service_pipeline_outputs </a></td>
<td style="text-align: left;">Get a list of service pipeline
Infrastructure as Code (IaC) outputs</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../proton_list_service_pipeline_provisioned_resources/"> list_service_pipeline_provisioned_resources </a></td>
<td style="text-align: left;">List provisioned resources for a service
and pipeline with details</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../proton_list_services/"> list_services </a></td>
<td style="text-align: left;">List services with summaries of detail
data</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../proton_list_service_templates/"> list_service_templates </a></td>
<td style="text-align: left;">List service templates with detail
data</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../proton_list_service_template_versions/"> list_service_template_versions </a></td>
<td style="text-align: left;">List major or minor versions of a service
template with detail data</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../proton_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">List tags for a resource</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../proton_notify_resource_deployment_status_change/"> notify_resource_deployment_status_change </a></td>
<td style="text-align: left;">Notify Proton of status changes to a
provisioned resource when you use self-managed provisioning</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../proton_reject_environment_account_connection/"> reject_environment_account_connection </a></td>
<td style="text-align: left;">In a management account, reject an
environment account connection from another environment account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../proton_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Tag a resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../proton_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Remove a customer tag from a resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../proton_update_account_settings/"> update_account_settings </a></td>
<td style="text-align: left;">Update Proton settings that are used for
multiple services in the Amazon Web Services account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../proton_update_component/"> update_component </a></td>
<td style="text-align: left;">Update a component</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../proton_update_environment/"> update_environment </a></td>
<td style="text-align: left;">Update an environment</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../proton_update_environment_account_connection/"> update_environment_account_connection </a></td>
<td style="text-align: left;">In an environment account, update an
environment account connection to use a new IAM role</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../proton_update_environment_template/"> update_environment_template </a></td>
<td style="text-align: left;">Update an environment template</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../proton_update_environment_template_version/"> update_environment_template_version </a></td>
<td style="text-align: left;">Update a major or minor version of an
environment template</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../proton_update_service/"> update_service </a></td>
<td style="text-align: left;">Edit a service description or use a spec
to add and delete service instances</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../proton_update_service_instance/"> update_service_instance </a></td>
<td style="text-align: left;">Update a service instance</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../proton_update_service_pipeline/"> update_service_pipeline </a></td>
<td style="text-align: left;">Update the service pipeline</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../proton_update_service_sync_blocker/"> update_service_sync_blocker </a></td>
<td style="text-align: left;">Update the service sync blocker by
resolving it</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../proton_update_service_sync_config/"> update_service_sync_config </a></td>
<td style="text-align: left;">Update the Proton Ops config file</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../proton_update_service_template/"> update_service_template </a></td>
<td style="text-align: left;">Update a service template</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../proton_update_service_template_version/"> update_service_template_version </a></td>
<td style="text-align: left;">Update a major or minor version of a
service template</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../proton_update_template_sync_config/"> update_template_sync_config </a></td>
<td style="text-align: left;">Update template sync configuration
parameters, except for the templateName and templateType</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- proton()
    svc$accept_environment_account_connection(
      Foo = 123
    )

    ## End(Not run)
