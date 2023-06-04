<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloud9</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS Cloud9

### Description

Cloud9

Cloud9 is a collection of tools that you can use to code, build, run,
test, debug, and release software in the cloud.

For more information about Cloud9, see the [Cloud9 User
Guide](https://docs.aws.amazon.com/cloud9/latest/user-guide/).

Cloud9 supports these operations:

-   `create_environment_ec2`: Creates an Cloud9 development environment,
    launches an Amazon EC2 instance, and then connects from the instance
    to the environment.

-   `create_environment_membership`: Adds an environment member to an
    environment.

-   `delete_environment`: Deletes an environment. If an Amazon EC2
    instance is connected to the environment, also terminates the
    instance.

-   `delete_environment_membership`: Deletes an environment member from
    an environment.

-   `describe_environment_memberships`: Gets information about
    environment members for an environment.

-   `describe_environments`: Gets information about environments.

-   `describe_environment_status`: Gets status information for an
    environment.

-   `list_environments`: Gets a list of environment identifiers.

-   `list_tags_for_resource`: Gets the tags for an environment.

-   `tag_resource`: Adds tags to an environment.

-   `untag_resource`: Removes tags from an environment.

-   `update_environment`: Changes the settings of an existing
    environment.

-   `update_environment_membership`: Changes the settings of an existing
    environment member for an environment.

### Usage

    cloud9(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloud9_:_config">config</code></td>
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

    svc <- cloud9(
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
<td style="text-align: left;"><a href="../cloud9_create_environment_ec2/"> create_environment_ec2 </a></td>
<td style="text-align: left;">Creates an Cloud9 development environment,
launches an Amazon Elastic Compute Cloud (Amazon EC2) instance, and then
connects from the instance to the environment</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloud9_create_environment_membership/"> create_environment_membership </a></td>
<td style="text-align: left;">Adds an environment member to an Cloud9
development environment</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloud9_delete_environment/"> delete_environment </a></td>
<td style="text-align: left;">Deletes an Cloud9 development
environment</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloud9_delete_environment_membership/"> delete_environment_membership </a></td>
<td style="text-align: left;">Deletes an environment member from a
development environment</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloud9_describe_environment_memberships/"> describe_environment_memberships </a></td>
<td style="text-align: left;">Gets information about environment members
for an Cloud9 development environment</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloud9_describe_environments/"> describe_environments </a></td>
<td style="text-align: left;">Gets information about Cloud9 development
environments</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloud9_describe_environment_status/"> describe_environment_status </a></td>
<td style="text-align: left;">Gets status information for an Cloud9
development environment</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloud9_list_environments/"> list_environments </a></td>
<td style="text-align: left;">Gets a list of Cloud9 development
environment identifiers</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloud9_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Gets a list of the tags associated with an
Cloud9 development environment</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloud9_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Adds tags to an Cloud9 development
environment</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloud9_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes tags from an Cloud9 development
environment</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloud9_update_environment/"> update_environment </a></td>
<td style="text-align: left;">Changes the settings of an existing Cloud9
development environment</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloud9_update_environment_membership/"> update_environment_membership </a></td>
<td style="text-align: left;">Changes the settings of an existing
environment member for an Cloud9 development environment</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- cloud9()
    # 
    svc$create_environment_ec2(
      name = "my-demo-environment",
      automaticStopTimeMinutes = 60L,
      description = "This is my demonstration environment.",
      instanceType = "t2.micro",
      ownerArn = "arn:aws:iam::123456789012:user/MyDemoUser",
      subnetId = "subnet-6300cd1b"
    )

    ## End(Not run)
