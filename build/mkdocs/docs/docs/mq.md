<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>mq</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AmazonMQ

### Description

Amazon MQ is a managed message broker service for Apache ActiveMQ and
RabbitMQ that makes it easy to set up and operate message brokers in the
cloud. A message broker allows software applications and components to
communicate using various programming languages, operating systems, and
formal messaging protocols.

### Usage

    mq(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="mq_:_config">config</code></td>
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

    svc <- mq(
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
<td style="text-align: left;"><a href="../mq_create_broker/"> create_broker </a></td>
<td style="text-align: left;">Creates a broker</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../mq_create_configuration/"> create_configuration </a></td>
<td style="text-align: left;">Creates a new configuration for the
specified configuration name</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../mq_create_tags/"> create_tags </a></td>
<td style="text-align: left;">Add a tag to a resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../mq_create_user/"> create_user </a></td>
<td style="text-align: left;">Creates an ActiveMQ user</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../mq_delete_broker/"> delete_broker </a></td>
<td style="text-align: left;">Deletes a broker</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../mq_delete_tags/"> delete_tags </a></td>
<td style="text-align: left;">Removes a tag from a resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../mq_delete_user/"> delete_user </a></td>
<td style="text-align: left;">Deletes an ActiveMQ user</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../mq_describe_broker/"> describe_broker </a></td>
<td style="text-align: left;">Returns information about the specified
broker</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../mq_describe_broker_engine_types/"> describe_broker_engine_types </a></td>
<td style="text-align: left;">Describe available engine types and
versions</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../mq_describe_broker_instance_options/"> describe_broker_instance_options </a></td>
<td style="text-align: left;">Describe available broker instance
options</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../mq_describe_configuration/"> describe_configuration </a></td>
<td style="text-align: left;">Returns information about the specified
configuration</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../mq_describe_configuration_revision/"> describe_configuration_revision </a></td>
<td style="text-align: left;">Returns the specified configuration
revision for the specified configuration</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../mq_describe_user/"> describe_user </a></td>
<td style="text-align: left;">Returns information about an ActiveMQ
user</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../mq_list_brokers/"> list_brokers </a></td>
<td style="text-align: left;">Returns a list of all brokers</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../mq_list_configuration_revisions/"> list_configuration_revisions </a></td>
<td style="text-align: left;">Returns a list of all revisions for the
specified configuration</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../mq_list_configurations/"> list_configurations </a></td>
<td style="text-align: left;">Returns a list of all configurations</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../mq_list_tags/"> list_tags </a></td>
<td style="text-align: left;">Lists tags for a resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../mq_list_users/"> list_users </a></td>
<td style="text-align: left;">Returns a list of all ActiveMQ users</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../mq_reboot_broker/"> reboot_broker </a></td>
<td style="text-align: left;">Reboots a broker</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../mq_update_broker/"> update_broker </a></td>
<td style="text-align: left;">Adds a pending configuration change to a
broker</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../mq_update_configuration/"> update_configuration </a></td>
<td style="text-align: left;">Updates the specified configuration</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../mq_update_user/"> update_user </a></td>
<td style="text-align: left;">Updates the information for an ActiveMQ
user</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- mq()
    svc$create_broker(
      Foo = 123
    )

    ## End(Not run)
