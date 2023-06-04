<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworks</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS OpsWorks

### Description

Welcome to the *AWS OpsWorks Stacks API Reference*. This guide provides
descriptions, syntax, and usage examples for AWS OpsWorks Stacks actions
and data types, including common parameters and error codes.

AWS OpsWorks Stacks is an application management service that provides
an integrated experience for overseeing the complete application
lifecycle. For information about this product, go to the [AWS
OpsWorks](https://aws.amazon.com/opsworks/) details page.

**SDKs and CLI**

The most common way to use the AWS OpsWorks Stacks API is by using the
AWS Command Line Interface (CLI) or by using one of the AWS SDKs to
implement applications in your preferred language. For more information,
see:

-   [AWS
    CLI](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html)

-   [AWS SDK for
    Java](https://docs.aws.amazon.com/AWSJavaSDK/latest/javadoc/com/amazonaws/services/opsworks/AWSOpsWorksClient.html)

-   AWS SDK for .NET

-   AWS SDK for PHP 2

-   [AWS SDK for Ruby](https://docs.aws.amazon.com/sdk-for-ruby/v2/api/)

-   [AWS SDK for
    Node.js](https://docs.aws.amazon.com/sdk-for-javascript/index.html)

-   [AWS SDK for
    Python(Boto)](http://docs.pythonboto.org/en/latest/ref/opsworks.html)

**Endpoints**

AWS OpsWorks Stacks supports the following endpoints, all HTTPS. You
must connect to one of the following endpoints. Stacks can only be
accessed or managed within the endpoint in which they are created.

-   opsworks.us-east-1.amazonaws.com

-   opsworks.us-east-2.amazonaws.com

-   opsworks.us-west-1.amazonaws.com

-   opsworks.us-west-2.amazonaws.com

-   opsworks.ca-central-1.amazonaws.com (API only; not available in the
    AWS console)

-   opsworks.eu-west-1.amazonaws.com

-   opsworks.eu-west-2.amazonaws.com

-   opsworks.eu-west-3.amazonaws.com

-   opsworks.eu-central-1.amazonaws.com

-   opsworks.ap-northeast-1.amazonaws.com

-   opsworks.ap-northeast-2.amazonaws.com

-   opsworks.ap-south-1.amazonaws.com

-   opsworks.ap-southeast-1.amazonaws.com

-   opsworks.ap-southeast-2.amazonaws.com

-   opsworks.sa-east-1.amazonaws.com

**Chef Versions**

When you call `create_stack`, `clone_stack`, or `update_stack` we
recommend you use the `ConfigurationManager` parameter to specify the
Chef version. The recommended and default value for Linux stacks is
currently 12. Windows stacks use Chef 12.2. For more information, see
[Chef
Versions](https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook-chef11.html).

You can specify Chef 12, 11.10, or 11.4 for your Linux stack. We
recommend migrating your existing Linux stacks to Chef 12 as soon as
possible.

### Usage

    opsworks(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="opsworks_:_config">config</code></td>
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

    svc <- opsworks(
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
<td style="text-align: left;"><a href="../opsworks_assign_instance/"> assign_instance </a></td>
<td style="text-align: left;">Assign a registered instance to a
layer</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../opsworks_assign_volume/"> assign_volume </a></td>
<td style="text-align: left;">Assigns one of the stack's registered
Amazon EBS volumes to a specified instance</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../opsworks_associate_elastic_ip/"> associate_elastic_ip </a></td>
<td style="text-align: left;">Associates one of the stack's registered
Elastic IP addresses with a specified instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../opsworks_attach_elastic_load_balancer/"> attach_elastic_load_balancer </a></td>
<td style="text-align: left;">Attaches an Elastic Load Balancing load
balancer to a specified layer</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../opsworks_clone_stack/"> clone_stack </a></td>
<td style="text-align: left;">Creates a clone of a specified stack</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../opsworks_create_app/"> create_app </a></td>
<td style="text-align: left;">Creates an app for a specified stack</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../opsworks_create_deployment/"> create_deployment </a></td>
<td style="text-align: left;">Runs deployment or stack commands</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../opsworks_create_instance/"> create_instance </a></td>
<td style="text-align: left;">Creates an instance in a specified
stack</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../opsworks_create_layer/"> create_layer </a></td>
<td style="text-align: left;">Creates a layer</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../opsworks_create_stack/"> create_stack </a></td>
<td style="text-align: left;">Creates a new stack</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../opsworks_create_user_profile/"> create_user_profile </a></td>
<td style="text-align: left;">Creates a new user profile</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../opsworks_delete_app/"> delete_app </a></td>
<td style="text-align: left;">Deletes a specified app</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../opsworks_delete_instance/"> delete_instance </a></td>
<td style="text-align: left;">Deletes a specified instance, which
terminates the associated Amazon EC2 instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../opsworks_delete_layer/"> delete_layer </a></td>
<td style="text-align: left;">Deletes a specified layer</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../opsworks_delete_stack/"> delete_stack </a></td>
<td style="text-align: left;">Deletes a specified stack</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../opsworks_delete_user_profile/"> delete_user_profile </a></td>
<td style="text-align: left;">Deletes a user profile</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../opsworks_deregister_ecs_cluster/"> deregister_ecs_cluster </a></td>
<td style="text-align: left;">Deregisters a specified Amazon ECS cluster
from a stack</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../opsworks_deregister_elastic_ip/"> deregister_elastic_ip </a></td>
<td style="text-align: left;">Deregisters a specified Elastic IP
address</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../opsworks_deregister_instance/"> deregister_instance </a></td>
<td style="text-align: left;">Deregister a registered Amazon EC2 or
on-premises instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../opsworks_deregister_rds_db_instance/"> deregister_rds_db_instance </a></td>
<td style="text-align: left;">Deregisters an Amazon RDS instance</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../opsworks_deregister_volume/"> deregister_volume </a></td>
<td style="text-align: left;">Deregisters an Amazon EBS volume</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../opsworks_describe_agent_versions/"> describe_agent_versions </a></td>
<td style="text-align: left;">Describes the available AWS OpsWorks
Stacks agent versions</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../opsworks_describe_apps/"> describe_apps </a></td>
<td style="text-align: left;">Requests a description of a specified set
of apps</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../opsworks_describe_commands/"> describe_commands </a></td>
<td style="text-align: left;">Describes the results of specified
commands</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../opsworks_describe_deployments/"> describe_deployments </a></td>
<td style="text-align: left;">Requests a description of a specified set
of deployments</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../opsworks_describe_ecs_clusters/"> describe_ecs_clusters </a></td>
<td style="text-align: left;">Describes Amazon ECS clusters that are
registered with a stack</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../opsworks_describe_elastic_ips/"> describe_elastic_ips </a></td>
<td style="text-align: left;">Describes Elastic IP addresses</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../opsworks_describe_elastic_load_balancers/"> describe_elastic_load_balancers </a></td>
<td style="text-align: left;">Describes a stack's Elastic Load Balancing
instances</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../opsworks_describe_instances/"> describe_instances </a></td>
<td style="text-align: left;">Requests a description of a set of
instances</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../opsworks_describe_layers/"> describe_layers </a></td>
<td style="text-align: left;">Requests a description of one or more
layers in a specified stack</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../opsworks_describe_load_based_auto_scaling/"> describe_load_based_auto_scaling </a></td>
<td style="text-align: left;">Describes load-based auto scaling
configurations for specified layers</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../opsworks_describe_my_user_profile/"> describe_my_user_profile </a></td>
<td style="text-align: left;">Describes a user's SSH information</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../opsworks_describe_operating_systems/"> describe_operating_systems </a></td>
<td style="text-align: left;">Describes the operating systems that are
supported by AWS OpsWorks Stacks</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../opsworks_describe_permissions/"> describe_permissions </a></td>
<td style="text-align: left;">Describes the permissions for a specified
stack</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../opsworks_describe_raid_arrays/"> describe_raid_arrays </a></td>
<td style="text-align: left;">Describe an instance's RAID arrays</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../opsworks_describe_rds_db_instances/"> describe_rds_db_instances </a></td>
<td style="text-align: left;">Describes Amazon RDS instances</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../opsworks_describe_service_errors/"> describe_service_errors </a></td>
<td style="text-align: left;">Describes AWS OpsWorks Stacks service
errors</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../opsworks_describe_stack_provisioning_parameters/"> describe_stack_provisioning_parameters </a></td>
<td style="text-align: left;">Requests a description of a stack's
provisioning parameters</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../opsworks_describe_stacks/"> describe_stacks </a></td>
<td style="text-align: left;">Requests a description of one or more
stacks</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../opsworks_describe_stack_summary/"> describe_stack_summary </a></td>
<td style="text-align: left;">Describes the number of layers and apps in
a specified stack, and the number of instances in each state, such as
running_setup or online</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../opsworks_describe_time_based_auto_scaling/"> describe_time_based_auto_scaling </a></td>
<td style="text-align: left;">Describes time-based auto scaling
configurations for specified instances</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../opsworks_describe_user_profiles/"> describe_user_profiles </a></td>
<td style="text-align: left;">Describe specified users</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../opsworks_describe_volumes/"> describe_volumes </a></td>
<td style="text-align: left;">Describes an instance's Amazon EBS
volumes</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../opsworks_detach_elastic_load_balancer/"> detach_elastic_load_balancer </a></td>
<td style="text-align: left;">Detaches a specified Elastic Load
Balancing instance from its layer</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../opsworks_disassociate_elastic_ip/"> disassociate_elastic_ip </a></td>
<td style="text-align: left;">Disassociates an Elastic IP address from
its instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../opsworks_get_hostname_suggestion/"> get_hostname_suggestion </a></td>
<td style="text-align: left;">Gets a generated host name for the
specified layer, based on the current host name theme</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../opsworks_grant_access/"> grant_access </a></td>
<td style="text-align: left;">This action can be used only with Windows
stacks</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../opsworks_list_tags/"> list_tags </a></td>
<td style="text-align: left;">Returns a list of tags that are applied to
the specified stack or layer</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../opsworks_reboot_instance/"> reboot_instance </a></td>
<td style="text-align: left;">Reboots a specified instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../opsworks_register_ecs_cluster/"> register_ecs_cluster </a></td>
<td style="text-align: left;">Registers a specified Amazon ECS cluster
with a stack</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../opsworks_register_elastic_ip/"> register_elastic_ip </a></td>
<td style="text-align: left;">Registers an Elastic IP address with a
specified stack</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../opsworks_register_instance/"> register_instance </a></td>
<td style="text-align: left;">Registers instances that were created
outside of AWS OpsWorks Stacks with a specified stack</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../opsworks_register_rds_db_instance/"> register_rds_db_instance </a></td>
<td style="text-align: left;">Registers an Amazon RDS instance with a
stack</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../opsworks_register_volume/"> register_volume </a></td>
<td style="text-align: left;">Registers an Amazon EBS volume with a
specified stack</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../opsworks_set_load_based_auto_scaling/"> set_load_based_auto_scaling </a></td>
<td style="text-align: left;">Specify the load-based auto scaling
configuration for a specified layer</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../opsworks_set_permission/"> set_permission </a></td>
<td style="text-align: left;">Specifies a user's permissions</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../opsworks_set_time_based_auto_scaling/"> set_time_based_auto_scaling </a></td>
<td style="text-align: left;">Specify the time-based auto scaling
configuration for a specified instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../opsworks_start_instance/"> start_instance </a></td>
<td style="text-align: left;">Starts a specified instance</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../opsworks_start_stack/"> start_stack </a></td>
<td style="text-align: left;">Starts a stack's instances</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../opsworks_stop_instance/"> stop_instance </a></td>
<td style="text-align: left;">Stops a specified instance</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../opsworks_stop_stack/"> stop_stack </a></td>
<td style="text-align: left;">Stops a specified stack</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../opsworks_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Apply cost-allocation tags to a specified
stack or layer in AWS OpsWorks Stacks</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../opsworks_unassign_instance/"> unassign_instance </a></td>
<td style="text-align: left;">Unassigns a registered instance from all
layers that are using the instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../opsworks_unassign_volume/"> unassign_volume </a></td>
<td style="text-align: left;">Unassigns an assigned Amazon EBS
volume</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../opsworks_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes tags from a specified stack or
layer</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../opsworks_update_app/"> update_app </a></td>
<td style="text-align: left;">Updates a specified app</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../opsworks_update_elastic_ip/"> update_elastic_ip </a></td>
<td style="text-align: left;">Updates a registered Elastic IP address's
name</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../opsworks_update_instance/"> update_instance </a></td>
<td style="text-align: left;">Updates a specified instance</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../opsworks_update_layer/"> update_layer </a></td>
<td style="text-align: left;">Updates a specified layer</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../opsworks_update_my_user_profile/"> update_my_user_profile </a></td>
<td style="text-align: left;">Updates a user's SSH public key</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../opsworks_update_rds_db_instance/"> update_rds_db_instance </a></td>
<td style="text-align: left;">Updates an Amazon RDS instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../opsworks_update_stack/"> update_stack </a></td>
<td style="text-align: left;">Updates a specified stack</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../opsworks_update_user_profile/"> update_user_profile </a></td>
<td style="text-align: left;">Updates a specified user profile</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../opsworks_update_volume/"> update_volume </a></td>
<td style="text-align: left;">Updates an Amazon EBS volume's name or
mount point</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- opsworks()
    svc$assign_instance(
      Foo = 123
    )

    ## End(Not run)
