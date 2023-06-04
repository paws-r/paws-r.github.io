<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codestarconnections</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS CodeStar connections

### Description

AWS CodeStar Connections

This AWS CodeStar Connections API Reference provides descriptions and
usage examples of the operations and data types for the AWS CodeStar
Connections API. You can use the connections API to work with
connections and installations.

*Connections* are configurations that you use to connect AWS resources
to external code repositories. Each connection is a resource that can be
given to services such as CodePipeline to connect to a third-party
repository such as Bitbucket. For example, you can add the connection in
CodePipeline so that it triggers your pipeline when a code change is
made to your third-party code repository. Each connection is named and
associated with a unique ARN that is used to reference the connection.

When you create a connection, the console initiates a third-party
connection handshake. *Installations* are the apps that are used to
conduct this handshake. For example, the installation for the Bitbucket
provider type is the Bitbucket app. When you create a connection, you
can choose an existing installation or create one.

When you want to create a connection to an installed provider type such
as GitHub Enterprise Server, you create a *host* for your connections.

You can work with connections by calling:

-   `create_connection`, which creates a uniquely named connection that
    can be referenced by services such as CodePipeline.

-   `delete_connection`, which deletes the specified connection.

-   `get_connection`, which returns information about the connection,
    including the connection status.

-   `list_connections`, which lists the connections associated with your
    account.

You can work with hosts by calling:

-   `create_host`, which creates a host that represents the
    infrastructure where your provider is installed.

-   `delete_host`, which deletes the specified host.

-   `get_host`, which returns information about the host, including the
    setup status.

-   `list_hosts`, which lists the hosts associated with your account.

You can work with tags in AWS CodeStar Connections by calling the
following:

-   `list_tags_for_resource`, which gets information about AWS tags for
    a specified Amazon Resource Name (ARN) in AWS CodeStar Connections.

-   `tag_resource`, which adds or updates tags for a resource in AWS
    CodeStar Connections.

-   `untag_resource`, which removes tags for a resource in AWS CodeStar
    Connections.

For information about how to use AWS CodeStar Connections, see the
[Developer Tools User
Guide](https://docs.aws.amazon.com/dtconsole/latest/userguide/welcome-connections.html).

### Usage

    codestarconnections(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="codestarconnections_:_config">config</code></td>
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

    svc <- codestarconnections(
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
<td style="text-align: left;"><a href="../codestarconnections_create_connection/"> create_connection </a></td>
<td style="text-align: left;">Creates a connection that can then be
given to other AWS services like CodePipeline so that it can access
third-party code repositories</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codestarconnections_create_host/"> create_host </a></td>
<td style="text-align: left;">Creates a resource that represents the
infrastructure where a third-party provider is installed</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codestarconnections_delete_connection/"> delete_connection </a></td>
<td style="text-align: left;">The connection to be deleted</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codestarconnections_delete_host/"> delete_host </a></td>
<td style="text-align: left;">The host to be deleted</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codestarconnections_get_connection/"> get_connection </a></td>
<td style="text-align: left;">Returns the connection ARN and details
such as status, owner, and provider type</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codestarconnections_get_host/"> get_host </a></td>
<td style="text-align: left;">Returns the host ARN and details such as
status, provider type, endpoint, and, if applicable, the VPC
configuration</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codestarconnections_list_connections/"> list_connections </a></td>
<td style="text-align: left;">Lists the connections associated with your
account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codestarconnections_list_hosts/"> list_hosts </a></td>
<td style="text-align: left;">Lists the hosts associated with your
account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codestarconnections_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Gets the set of key-value pairs (metadata)
that are used to manage the resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codestarconnections_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Adds to or modifies the tags of the given
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codestarconnections_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes tags from an AWS resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codestarconnections_update_host/"> update_host </a></td>
<td style="text-align: left;">Updates a specified host with the provided
configurations</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- codestarconnections()
    svc$create_connection(
      Foo = 123
    )

    ## End(Not run)
