<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworkscm</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS OpsWorks CM

### Description

AWS OpsWorks for configuration management (CM) is a service that runs
and manages configuration management servers. You can use AWS OpsWorks
CM to create and manage AWS OpsWorks for Chef Automate and AWS OpsWorks
for Puppet Enterprise servers, and add or remove nodes for the servers
to manage.

**Glossary of terms**

-   **Server**: A configuration management server that can be
    highly-available. The configuration management server runs on an
    Amazon Elastic Compute Cloud (EC2) instance, and may use various
    other AWS services, such as Amazon Relational Database Service (RDS)
    and Elastic Load Balancing. A server is a generic abstraction over
    the configuration manager that you want to use, much like Amazon
    RDS. In AWS OpsWorks CM, you do not start or stop servers. After you
    create servers, they continue to run until they are deleted.

-   **Engine**: The engine is the specific configuration manager that
    you want to use. Valid values in this release include `ChefAutomate`
    and `Puppet`.

-   **Backup**: This is an application-level backup of the data that the
    configuration manager stores. AWS OpsWorks CM creates an S3 bucket
    for backups when you launch the first server. A backup maintains a
    snapshot of a server's configuration-related attributes at the time
    the backup starts.

-   **Events**: Events are always related to a server. Events are
    written during server creation, when health checks run, when backups
    are created, when system maintenance is performed, etc. When you
    delete a server, the server's events are also deleted.

-   **Account attributes**: Every account has attributes that are
    assigned in the AWS OpsWorks CM database. These attributes store
    information about configuration limits (servers, backups, etc.) and
    your customer account.

**Endpoints**

AWS OpsWorks CM supports the following endpoints, all HTTPS. You must
connect to one of the following endpoints. Your servers can only be
accessed or managed within the endpoint in which they are created.

-   opsworks-cm.us-east-1.amazonaws.com

-   opsworks-cm.us-east-2.amazonaws.com

-   opsworks-cm.us-west-1.amazonaws.com

-   opsworks-cm.us-west-2.amazonaws.com

-   opsworks-cm.ap-northeast-1.amazonaws.com

-   opsworks-cm.ap-southeast-1.amazonaws.com

-   opsworks-cm.ap-southeast-2.amazonaws.com

-   opsworks-cm.eu-central-1.amazonaws.com

-   opsworks-cm.eu-west-1.amazonaws.com

For more information, see [AWS OpsWorks endpoints and
quotas](https://docs.aws.amazon.com/general/latest/gr/opsworks-service.html)
in the AWS General Reference.

**Throttling limits**

All API operations allow for five requests per second with a burst of 10
requests per second.

### Usage

    opsworkscm(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="opsworkscm_:_config">config</code></td>
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

    svc <- opsworkscm(
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
<td style="text-align: left;"><a href="../opsworkscm_associate_node/"> associate_node </a></td>
<td style="text-align: left;">Associates a new node with the server</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../opsworkscm_create_backup/"> create_backup </a></td>
<td style="text-align: left;">Creates an application-level backup of a
server</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../opsworkscm_create_server/"> create_server </a></td>
<td style="text-align: left;">Creates and immedately starts a new
server</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../opsworkscm_delete_backup/"> delete_backup </a></td>
<td style="text-align: left;">Deletes a backup</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../opsworkscm_delete_server/"> delete_server </a></td>
<td style="text-align: left;">Deletes the server and the underlying AWS
CloudFormation stacks (including the server's EC2 instance)</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../opsworkscm_describe_account_attributes/"> describe_account_attributes </a></td>
<td style="text-align: left;">Describes your OpsWorks-CM account
attributes</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../opsworkscm_describe_backups/"> describe_backups </a></td>
<td style="text-align: left;">Describes backups</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../opsworkscm_describe_events/"> describe_events </a></td>
<td style="text-align: left;">Describes events for a specified
server</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../opsworkscm_describe_node_association_status/"> describe_node_association_status </a></td>
<td style="text-align: left;">Returns the current status of an existing
association or disassociation request</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../opsworkscm_describe_servers/"> describe_servers </a></td>
<td style="text-align: left;">Lists all configuration management servers
that are identified with your account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../opsworkscm_disassociate_node/"> disassociate_node </a></td>
<td style="text-align: left;">Disassociates a node from an AWS OpsWorks
CM server, and removes the node from the server's managed nodes</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../opsworkscm_export_server_engine_attribute/"> export_server_engine_attribute </a></td>
<td style="text-align: left;">Exports a specified server engine
attribute as a base64-encoded string</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../opsworkscm_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Returns a list of tags that are applied to
the specified AWS OpsWorks for Chef Automate or AWS OpsWorks for Puppet
Enterprise servers or backups</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../opsworkscm_restore_server/"> restore_server </a></td>
<td style="text-align: left;">Restores a backup to a server that is in a
CONNECTION_LOST, HEALTHY, RUNNING, UNHEALTHY, or TERMINATED state</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../opsworkscm_start_maintenance/"> start_maintenance </a></td>
<td style="text-align: left;">Manually starts server maintenance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../opsworkscm_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Applies tags to an AWS OpsWorks for Chef
Automate or AWS OpsWorks for Puppet Enterprise server, or to server
backups</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../opsworkscm_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes specified tags from an AWS
OpsWorks-CM server or backup</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../opsworkscm_update_server/"> update_server </a></td>
<td style="text-align: left;">Updates settings for a server</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../opsworkscm_update_server_engine_attributes/"> update_server_engine_attributes </a></td>
<td style="text-align: left;">Updates engine-specific attributes on a
specified server</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- opsworkscm()
    svc$associate_node(
      Foo = 123
    )

    ## End(Not run)
