<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kafkaconnect</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Managed Streaming for Kafka Connect

### Description

Managed Streaming for Kafka Connect

### Usage

    kafkaconnect(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kafkaconnect_:_config">config</code></td>
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

    svc <- kafkaconnect(
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
<td style="text-align: left;"><a href="../kafkaconnect_create_connector/"> create_connector </a></td>
<td style="text-align: left;">Creates a connector using the specified
properties</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kafkaconnect_create_custom_plugin/"> create_custom_plugin </a></td>
<td style="text-align: left;">Creates a custom plugin using the
specified properties</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kafkaconnect_create_worker_configuration/"> create_worker_configuration </a></td>
<td style="text-align: left;">Creates a worker configuration using the
specified properties</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kafkaconnect_delete_connector/"> delete_connector </a></td>
<td style="text-align: left;">Deletes the specified connector</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kafkaconnect_delete_custom_plugin/"> delete_custom_plugin </a></td>
<td style="text-align: left;">Deletes a custom plugin</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kafkaconnect_describe_connector/"> describe_connector </a></td>
<td style="text-align: left;">Returns summary information about the
connector</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kafkaconnect_describe_custom_plugin/"> describe_custom_plugin </a></td>
<td style="text-align: left;">A summary description of the custom
plugin</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kafkaconnect_describe_worker_configuration/"> describe_worker_configuration </a></td>
<td style="text-align: left;">Returns information about a worker
configuration</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kafkaconnect_list_connectors/"> list_connectors </a></td>
<td style="text-align: left;">Returns a list of all the connectors in
this account and Region</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kafkaconnect_list_custom_plugins/"> list_custom_plugins </a></td>
<td style="text-align: left;">Returns a list of all of the custom
plugins in this account and Region</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kafkaconnect_list_worker_configurations/"> list_worker_configurations </a></td>
<td style="text-align: left;">Returns a list of all of the worker
configurations in this account and Region</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kafkaconnect_update_connector/"> update_connector </a></td>
<td style="text-align: left;">Updates the specified connector</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- kafkaconnect()
    svc$create_connector(
      Foo = 123
    )

    ## End(Not run)
