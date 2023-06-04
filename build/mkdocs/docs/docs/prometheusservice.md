<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>prometheusservice</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon Prometheus Service

### Description

Amazon Managed Service for Prometheus

### Usage

    prometheusservice(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="prometheusservice_:_config">config</code></td>
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

    svc <- prometheusservice(
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
<td style="text-align: left;"><a href="../prometheusservice_create_alert_manager_definition/"> create_alert_manager_definition </a></td>
<td style="text-align: left;">Create an alert manager definition</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../prometheusservice_create_logging_configuration/"> create_logging_configuration </a></td>
<td style="text-align: left;">Create logging configuration</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../prometheusservice_create_rule_groups_namespace/"> create_rule_groups_namespace </a></td>
<td style="text-align: left;">Create a rule group namespace</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../prometheusservice_create_workspace/"> create_workspace </a></td>
<td style="text-align: left;">Creates a new AMP workspace</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../prometheusservice_delete_alert_manager_definition/"> delete_alert_manager_definition </a></td>
<td style="text-align: left;">Deletes an alert manager definition</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../prometheusservice_delete_logging_configuration/"> delete_logging_configuration </a></td>
<td style="text-align: left;">Delete logging configuration</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../prometheusservice_delete_rule_groups_namespace/"> delete_rule_groups_namespace </a></td>
<td style="text-align: left;">Delete a rule groups namespace</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../prometheusservice_delete_workspace/"> delete_workspace </a></td>
<td style="text-align: left;">Deletes an AMP workspace</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../prometheusservice_describe_alert_manager_definition/"> describe_alert_manager_definition </a></td>
<td style="text-align: left;">Describes an alert manager definition</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../prometheusservice_describe_logging_configuration/"> describe_logging_configuration </a></td>
<td style="text-align: left;">Describes logging configuration</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../prometheusservice_describe_rule_groups_namespace/"> describe_rule_groups_namespace </a></td>
<td style="text-align: left;">Describe a rule groups namespace</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../prometheusservice_describe_workspace/"> describe_workspace </a></td>
<td style="text-align: left;">Describes an existing AMP workspace</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../prometheusservice_list_rule_groups_namespaces/"> list_rule_groups_namespaces </a></td>
<td style="text-align: left;">Lists rule groups namespaces</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../prometheusservice_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Lists the tags you have assigned to the
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../prometheusservice_list_workspaces/"> list_workspaces </a></td>
<td style="text-align: left;">Lists all AMP workspaces, including
workspaces being created or deleted</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../prometheusservice_put_alert_manager_definition/"> put_alert_manager_definition </a></td>
<td style="text-align: left;">Update an alert manager definition</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../prometheusservice_put_rule_groups_namespace/"> put_rule_groups_namespace </a></td>
<td style="text-align: left;">Update a rule groups namespace</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../prometheusservice_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Creates tags for the specified
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../prometheusservice_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Deletes tags from the specified
resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../prometheusservice_update_logging_configuration/"> update_logging_configuration </a></td>
<td style="text-align: left;">Update logging configuration</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../prometheusservice_update_workspace_alias/"> update_workspace_alias </a></td>
<td style="text-align: left;">Updates an AMP workspace alias</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- prometheusservice()
    svc$create_alert_manager_definition(
      Foo = 123
    )

    ## End(Not run)
