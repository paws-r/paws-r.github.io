<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticbeanstalk</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS Elastic Beanstalk

### Description

AWS Elastic Beanstalk makes it easy for you to create, deploy, and
manage scalable, fault-tolerant applications running on the Amazon Web
Services cloud.

For more information about this product, go to the [AWS Elastic
Beanstalk](https://aws.amazon.com/elasticbeanstalk/) details page. The
location of the latest AWS Elastic Beanstalk WSDL is
<https://elasticbeanstalk.s3.amazonaws.com/doc/2010-12-01/AWSElasticBeanstalk.wsdl>.
To install the Software Development Kits (SDKs), Integrated Development
Environment (IDE) Toolkits, and command line tools that enable you to
access the API, go to [Tools for Amazon Web
Services](https://aws.amazon.com/developer/tools/).

**Endpoints**

For a list of region-specific endpoints that AWS Elastic Beanstalk
supports, go to [Regions and
Endpoints](https://docs.aws.amazon.com/general/latest/gr/rande.html#elasticbeanstalk_region)
in the *Amazon Web Services Glossary*.

### Usage

    elasticbeanstalk(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="elasticbeanstalk_:_config">config</code></td>
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

    svc <- elasticbeanstalk(
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
<td style="text-align: left;"><a href="../elasticbeanstalk_abort_environment_update/"> abort_environment_update </a></td>
<td style="text-align: left;">Cancels in-progress environment
configuration update or application version deployment</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elasticbeanstalk_apply_environment_managed_action/"> apply_environment_managed_action </a></td>
<td style="text-align: left;">Applies a scheduled managed action
immediately</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elasticbeanstalk_associate_environment_operations_role/"> associate_environment_operations_role </a></td>
<td style="text-align: left;">Add or change the operations role used by
an environment</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elasticbeanstalk_check_dns_availability/"> check_dns_availability </a></td>
<td style="text-align: left;">Checks if the specified CNAME is
available</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elasticbeanstalk_compose_environments/"> compose_environments </a></td>
<td style="text-align: left;">Create or update a group of environments
that each run a separate component of a single application</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elasticbeanstalk_create_application/"> create_application </a></td>
<td style="text-align: left;">Creates an application that has one
configuration template named default and no application versions</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elasticbeanstalk_create_application_version/"> create_application_version </a></td>
<td style="text-align: left;">Creates an application version for the
specified application</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elasticbeanstalk_create_configuration_template/"> create_configuration_template </a></td>
<td style="text-align: left;">Creates an AWS Elastic Beanstalk
configuration template, associated with a specific Elastic Beanstalk
application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elasticbeanstalk_create_environment/"> create_environment </a></td>
<td style="text-align: left;">Launches an AWS Elastic Beanstalk
environment for the specified application using the specified
configuration</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elasticbeanstalk_create_platform_version/"> create_platform_version </a></td>
<td style="text-align: left;">Create a new version of your custom
platform</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elasticbeanstalk_create_storage_location/"> create_storage_location </a></td>
<td style="text-align: left;">Creates a bucket in Amazon S3 to store
application versions, logs, and other files used by Elastic Beanstalk
environments</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elasticbeanstalk_delete_application/"> delete_application </a></td>
<td style="text-align: left;">Deletes the specified application along
with all associated versions and configurations</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elasticbeanstalk_delete_application_version/"> delete_application_version </a></td>
<td style="text-align: left;">Deletes the specified version from the
specified application</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elasticbeanstalk_delete_configuration_template/"> delete_configuration_template </a></td>
<td style="text-align: left;">Deletes the specified configuration
template</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elasticbeanstalk_delete_environment_configuration/"> delete_environment_configuration </a></td>
<td style="text-align: left;">Deletes the draft configuration associated
with the running environment</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elasticbeanstalk_delete_platform_version/"> delete_platform_version </a></td>
<td style="text-align: left;">Deletes the specified version of a custom
platform</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elasticbeanstalk_describe_account_attributes/"> describe_account_attributes </a></td>
<td style="text-align: left;">Returns attributes related to AWS Elastic
Beanstalk that are associated with the calling AWS account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elasticbeanstalk_describe_applications/"> describe_applications </a></td>
<td style="text-align: left;">Returns the descriptions of existing
applications</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elasticbeanstalk_describe_application_versions/"> describe_application_versions </a></td>
<td style="text-align: left;">Retrieve a list of application
versions</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elasticbeanstalk_describe_configuration_options/"> describe_configuration_options </a></td>
<td style="text-align: left;">Describes the configuration options that
are used in a particular configuration template or environment, or that
a specified solution stack defines</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elasticbeanstalk_describe_configuration_settings/"> describe_configuration_settings </a></td>
<td style="text-align: left;">Returns a description of the settings for
the specified configuration set, that is, either a configuration
template or the configuration set associated with a running
environment</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elasticbeanstalk_describe_environment_health/"> describe_environment_health </a></td>
<td style="text-align: left;">Returns information about the overall
health of the specified environment</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../elasticbeanstalk_describe_environment_managed_action_history/"> describe_environment_managed_action_history </a></td>
<td style="text-align: left;">Lists an environment's completed and
failed managed actions</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elasticbeanstalk_describe_environment_managed_actions/"> describe_environment_managed_actions </a></td>
<td style="text-align: left;">Lists an environment's upcoming and
in-progress managed actions</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elasticbeanstalk_describe_environment_resources/"> describe_environment_resources </a></td>
<td style="text-align: left;">Returns AWS resources for this
environment</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elasticbeanstalk_describe_environments/"> describe_environments </a></td>
<td style="text-align: left;">Returns descriptions for existing
environments</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elasticbeanstalk_describe_events/"> describe_events </a></td>
<td style="text-align: left;">Returns list of event descriptions
matching criteria up to the last 6 weeks</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elasticbeanstalk_describe_instances_health/"> describe_instances_health </a></td>
<td style="text-align: left;">Retrieves detailed information about the
health of instances in your AWS Elastic Beanstalk</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elasticbeanstalk_describe_platform_version/"> describe_platform_version </a></td>
<td style="text-align: left;">Describes a platform version</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../elasticbeanstalk_disassociate_environment_operations_role/"> disassociate_environment_operations_role </a></td>
<td style="text-align: left;">Disassociate the operations role from an
environment</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elasticbeanstalk_list_available_solution_stacks/"> list_available_solution_stacks </a></td>
<td style="text-align: left;">Returns a list of the available solution
stack names, with the public version first and then in reverse
chronological order</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elasticbeanstalk_list_platform_branches/"> list_platform_branches </a></td>
<td style="text-align: left;">Lists the platform branches available for
your account in an AWS Region</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elasticbeanstalk_list_platform_versions/"> list_platform_versions </a></td>
<td style="text-align: left;">Lists the platform versions available for
your account in an AWS Region</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elasticbeanstalk_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Return the tags applied to an AWS Elastic
Beanstalk resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elasticbeanstalk_rebuild_environment/"> rebuild_environment </a></td>
<td style="text-align: left;">Deletes and recreates all of the AWS
resources (for example: the Auto Scaling group, load balancer, etc</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elasticbeanstalk_request_environment_info/"> request_environment_info </a></td>
<td style="text-align: left;">Initiates a request to compile the
specified type of information of the deployed environment</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elasticbeanstalk_restart_app_server/"> restart_app_server </a></td>
<td style="text-align: left;">Causes the environment to restart the
application container server running on each Amazon EC2 instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elasticbeanstalk_retrieve_environment_info/"> retrieve_environment_info </a></td>
<td style="text-align: left;">Retrieves the compiled information from a
RequestEnvironmentInfo request</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elasticbeanstalk_swap_environment_cnam_es/"> swap_environment_cnam_es </a></td>
<td style="text-align: left;">Swaps the CNAMEs of two environments</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elasticbeanstalk_terminate_environment/"> terminate_environment </a></td>
<td style="text-align: left;">Terminates the specified environment</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elasticbeanstalk_update_application/"> update_application </a></td>
<td style="text-align: left;">Updates the specified application to have
the specified properties</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elasticbeanstalk_update_application_resource_lifecycle/"> update_application_resource_lifecycle </a></td>
<td style="text-align: left;">Modifies lifecycle settings for an
application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elasticbeanstalk_update_application_version/"> update_application_version </a></td>
<td style="text-align: left;">Updates the specified application version
to have the specified properties</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elasticbeanstalk_update_configuration_template/"> update_configuration_template </a></td>
<td style="text-align: left;">Updates the specified configuration
template to have the specified properties or configuration option
values</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elasticbeanstalk_update_environment/"> update_environment </a></td>
<td style="text-align: left;">Updates the environment description,
deploys a new application version, updates the configuration settings to
an entirely new configuration template, or updates select configuration
option values in the running environment</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elasticbeanstalk_update_tags_for_resource/"> update_tags_for_resource </a></td>
<td style="text-align: left;">Update the list of tags applied to an AWS
Elastic Beanstalk resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elasticbeanstalk_validate_configuration_settings/"> validate_configuration_settings </a></td>
<td style="text-align: left;">Takes a set of configuration settings and
either a configuration template or environment, and determines whether
those values are valid</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- elasticbeanstalk()
    # The following code aborts a running application version deployment for
    # an environment named my-env:
    svc$abort_environment_update(
      EnvironmentName = "my-env"
    )

    ## End(Not run)
