<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codedeploy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS CodeDeploy

### Description

CodeDeploy is a deployment service that automates application
deployments to Amazon EC2 instances, on-premises instances running in
your own facility, serverless Lambda functions, or applications in an
Amazon ECS service.

You can deploy a nearly unlimited variety of application content, such
as an updated Lambda function, updated applications in an Amazon ECS
service, code, web and configuration files, executables, packages,
scripts, multimedia files, and so on. CodeDeploy can deploy application
content stored in Amazon S3 buckets, GitHub repositories, or Bitbucket
repositories. You do not need to make changes to your existing code
before you can use CodeDeploy.

CodeDeploy makes it easier for you to rapidly release new features,
helps you avoid downtime during application deployment, and handles the
complexity of updating your applications, without many of the risks
associated with error-prone manual deployments.

**CodeDeploy Components**

Use the information in this guide to help you work with the following
CodeDeploy components:

-   **Application**: A name that uniquely identifies the application you
    want to deploy. CodeDeploy uses this name, which functions as a
    container, to ensure the correct combination of revision, deployment
    configuration, and deployment group are referenced during a
    deployment.

-   **Deployment group**: A set of individual instances, CodeDeploy
    Lambda deployment configuration settings, or an Amazon ECS service
    and network details. A Lambda deployment group specifies how to
    route traffic to a new version of a Lambda function. An Amazon ECS
    deployment group specifies the service created in Amazon ECS to
    deploy, a load balancer, and a listener to reroute production
    traffic to an updated containerized application. An Amazon
    EC2/On-premises deployment group contains individually tagged
    instances, Amazon EC2 instances in Amazon EC2 Auto Scaling groups,
    or both. All deployment groups can specify optional trigger, alarm,
    and rollback settings.

-   **Deployment configuration**: A set of deployment rules and
    deployment success and failure conditions used by CodeDeploy during
    a deployment.

-   **Deployment**: The process and the components used when updating a
    Lambda function, a containerized application in an Amazon ECS
    service, or of installing content on one or more instances.

-   **Application revisions**: For an Lambda deployment, this is an
    AppSpec file that specifies the Lambda function to be updated and
    one or more functions to validate deployment lifecycle events. For
    an Amazon ECS deployment, this is an AppSpec file that specifies the
    Amazon ECS task definition, container, and port where production
    traffic is rerouted. For an EC2/On-premises deployment, this is an
    archive file that contains source content—source code, webpages,
    executable files, and deployment scripts—along with an AppSpec file.
    Revisions are stored in Amazon S3 buckets or GitHub repositories.
    For Amazon S3, a revision is uniquely identified by its Amazon S3
    object key and its ETag, version, or both. For GitHub, a revision is
    uniquely identified by its commit ID.

This guide also contains information to help you get details about the
instances in your deployments, to make on-premises instances available
for CodeDeploy deployments, to get details about a Lambda function
deployment, and to get details about Amazon ECS service deployments.

**CodeDeploy Information Resources**

-   [CodeDeploy User
    Guide](https://docs.aws.amazon.com/codedeploy/latest/userguide/)

-   [CodeDeploy API Reference
    Guide](https://docs.aws.amazon.com/codedeploy/latest/APIReference/)

-   [CLI Reference for
    CodeDeploy](https://docs.aws.amazon.com/cli/latest/reference/deploy/index.html)

-   CodeDeploy Developer Forum

### Usage

    codedeploy(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="codedeploy_:_config">config</code></td>
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

    svc <- codedeploy(
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
<td style="text-align: left;"><a href="../codedeploy_add_tags_to_on_premises_instances/"> add_tags_to_on_premises_instances </a></td>
<td style="text-align: left;">Adds tags to on-premises instances</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codedeploy_batch_get_application_revisions/"> batch_get_application_revisions </a></td>
<td style="text-align: left;">Gets information about one or more
application revisions</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codedeploy_batch_get_applications/"> batch_get_applications </a></td>
<td style="text-align: left;">Gets information about one or more
applications</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codedeploy_batch_get_deployment_groups/"> batch_get_deployment_groups </a></td>
<td style="text-align: left;">Gets information about one or more
deployment groups</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codedeploy_batch_get_deployment_instances/"> batch_get_deployment_instances </a></td>
<td style="text-align: left;">This method works, but is deprecated</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codedeploy_batch_get_deployments/"> batch_get_deployments </a></td>
<td style="text-align: left;">Gets information about one or more
deployments</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codedeploy_batch_get_deployment_targets/"> batch_get_deployment_targets </a></td>
<td style="text-align: left;">Returns an array of one or more targets
associated with a deployment</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codedeploy_batch_get_on_premises_instances/"> batch_get_on_premises_instances </a></td>
<td style="text-align: left;">Gets information about one or more
on-premises instances</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codedeploy_continue_deployment/"> continue_deployment </a></td>
<td style="text-align: left;">For a blue/green deployment, starts the
process of rerouting traffic from instances in the original environment
to instances in the replacement environment without waiting for a
specified wait time to elapse</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codedeploy_create_application/"> create_application </a></td>
<td style="text-align: left;">Creates an application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codedeploy_create_deployment/"> create_deployment </a></td>
<td style="text-align: left;">Deploys an application revision through
the specified deployment group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codedeploy_create_deployment_config/"> create_deployment_config </a></td>
<td style="text-align: left;">Creates a deployment configuration</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codedeploy_create_deployment_group/"> create_deployment_group </a></td>
<td style="text-align: left;">Creates a deployment group to which
application revisions are deployed</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codedeploy_delete_application/"> delete_application </a></td>
<td style="text-align: left;">Deletes an application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codedeploy_delete_deployment_config/"> delete_deployment_config </a></td>
<td style="text-align: left;">Deletes a deployment configuration</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codedeploy_delete_deployment_group/"> delete_deployment_group </a></td>
<td style="text-align: left;">Deletes a deployment group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codedeploy_delete_git_hub_account_token/"> delete_git_hub_account_token </a></td>
<td style="text-align: left;">Deletes a GitHub account connection</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codedeploy_delete_resources_by_external_id/"> delete_resources_by_external_id </a></td>
<td style="text-align: left;">Deletes resources linked to an external
ID</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codedeploy_deregister_on_premises_instance/"> deregister_on_premises_instance </a></td>
<td style="text-align: left;">Deregisters an on-premises instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codedeploy_get_application/"> get_application </a></td>
<td style="text-align: left;">Gets information about an application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codedeploy_get_application_revision/"> get_application_revision </a></td>
<td style="text-align: left;">Gets information about an application
revision</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codedeploy_get_deployment/"> get_deployment </a></td>
<td style="text-align: left;">Gets information about a deployment</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codedeploy_get_deployment_config/"> get_deployment_config </a></td>
<td style="text-align: left;">Gets information about a deployment
configuration</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codedeploy_get_deployment_group/"> get_deployment_group </a></td>
<td style="text-align: left;">Gets information about a deployment
group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codedeploy_get_deployment_instance/"> get_deployment_instance </a></td>
<td style="text-align: left;">Gets information about an instance as part
of a deployment</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codedeploy_get_deployment_target/"> get_deployment_target </a></td>
<td style="text-align: left;">Returns information about a deployment
target</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codedeploy_get_on_premises_instance/"> get_on_premises_instance </a></td>
<td style="text-align: left;">Gets information about an on-premises
instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codedeploy_list_application_revisions/"> list_application_revisions </a></td>
<td style="text-align: left;">Lists information about revisions for an
application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codedeploy_list_applications/"> list_applications </a></td>
<td style="text-align: left;">Lists the applications registered with the
IAM user or Amazon Web Services account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codedeploy_list_deployment_configs/"> list_deployment_configs </a></td>
<td style="text-align: left;">Lists the deployment configurations with
the IAM user or Amazon Web Services account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codedeploy_list_deployment_groups/"> list_deployment_groups </a></td>
<td style="text-align: left;">Lists the deployment groups for an
application registered with the IAM user or Amazon Web Services
account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codedeploy_list_deployment_instances/"> list_deployment_instances </a></td>
<td style="text-align: left;">The newer BatchGetDeploymentTargets should
be used instead because it works with all compute types</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codedeploy_list_deployments/"> list_deployments </a></td>
<td style="text-align: left;">Lists the deployments in a deployment
group for an application registered with the IAM user or Amazon Web
Services account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codedeploy_list_deployment_targets/"> list_deployment_targets </a></td>
<td style="text-align: left;">Returns an array of target IDs that are
associated a deployment</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codedeploy_list_git_hub_account_token_names/"> list_git_hub_account_token_names </a></td>
<td style="text-align: left;">Lists the names of stored connections to
GitHub accounts</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codedeploy_list_on_premises_instances/"> list_on_premises_instances </a></td>
<td style="text-align: left;">Gets a list of names for one or more
on-premises instances</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codedeploy_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Returns a list of tags for the resource
identified by a specified Amazon Resource Name (ARN)</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../codedeploy_put_lifecycle_event_hook_execution_status/"> put_lifecycle_event_hook_execution_status </a></td>
<td style="text-align: left;">Sets the result of a Lambda validation
function</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codedeploy_register_application_revision/"> register_application_revision </a></td>
<td style="text-align: left;">Registers with CodeDeploy a revision for
the specified application</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codedeploy_register_on_premises_instance/"> register_on_premises_instance </a></td>
<td style="text-align: left;">Registers an on-premises instance</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../codedeploy_remove_tags_from_on_premises_instances/"> remove_tags_from_on_premises_instances </a></td>
<td style="text-align: left;">Removes one or more tags from one or more
on-premises instances</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../codedeploy_skip_wait_time_for_instance_termination/"> skip_wait_time_for_instance_termination </a></td>
<td style="text-align: left;">In a blue/green deployment, overrides any
specified wait time and starts terminating instances immediately after
the traffic routing is complete</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codedeploy_stop_deployment/"> stop_deployment </a></td>
<td style="text-align: left;">Attempts to stop an ongoing
deployment</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codedeploy_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Associates the list of tags in the input
Tags parameter with the resource identified by the ResourceArn input
parameter</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codedeploy_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Disassociates a resource from a list of
tags</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codedeploy_update_application/"> update_application </a></td>
<td style="text-align: left;">Changes the name of an application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codedeploy_update_deployment_group/"> update_deployment_group </a></td>
<td style="text-align: left;">Changes information about a deployment
group</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- codedeploy()
    svc$add_tags_to_on_premises_instances(
      Foo = 123
    )

    ## End(Not run)
