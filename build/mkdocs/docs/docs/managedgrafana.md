<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>managedgrafana</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon Managed Grafana

### Description

Amazon Managed Grafana is a fully managed and secure data visualization
service that you can use to instantly query, correlate, and visualize
operational metrics, logs, and traces from multiple sources. Amazon
Managed Grafana makes it easy to deploy, operate, and scale Grafana, a
widely deployed data visualization tool that is popular for its
extensible data support.

With Amazon Managed Grafana, you create logically isolated Grafana
servers called *workspaces*. In a workspace, you can create Grafana
dashboards and visualizations to analyze your metrics, logs, and traces
without having to build, package, or deploy any hardware to run Grafana
servers.

### Usage

    managedgrafana(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="managedgrafana_:_config">config</code></td>
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

    svc <- managedgrafana(
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
<td style="text-align: left;"><a href="../managedgrafana_associate_license/"> associate_license </a></td>
<td style="text-align: left;">Assigns a Grafana Enterprise license to a
workspace</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../managedgrafana_create_workspace/"> create_workspace </a></td>
<td style="text-align: left;">Creates a workspace</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../managedgrafana_create_workspace_api_key/"> create_workspace_api_key </a></td>
<td style="text-align: left;">Creates a Grafana API key for the
workspace</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../managedgrafana_delete_workspace/"> delete_workspace </a></td>
<td style="text-align: left;">Deletes an Amazon Managed Grafana
workspace</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../managedgrafana_delete_workspace_api_key/"> delete_workspace_api_key </a></td>
<td style="text-align: left;">Deletes a Grafana API key for the
workspace</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../managedgrafana_describe_workspace/"> describe_workspace </a></td>
<td style="text-align: left;">Displays information about one Amazon
Managed Grafana workspace</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../managedgrafana_describe_workspace_authentication/"> describe_workspace_authentication </a></td>
<td style="text-align: left;">Displays information about the
authentication methods used in one Amazon Managed Grafana workspace</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../managedgrafana_describe_workspace_configuration/"> describe_workspace_configuration </a></td>
<td style="text-align: left;">Gets the current configuration string for
the given workspace</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../managedgrafana_disassociate_license/"> disassociate_license </a></td>
<td style="text-align: left;">Removes the Grafana Enterprise license
from a workspace</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../managedgrafana_list_permissions/"> list_permissions </a></td>
<td style="text-align: left;">Lists the users and groups who have the
Grafana Admin and Editor roles in this workspace</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../managedgrafana_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">The ListTagsForResource operation returns
the tags that are associated with the Amazon Managed Service for Grafana
resource specified by the resourceArn</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../managedgrafana_list_workspaces/"> list_workspaces </a></td>
<td style="text-align: left;">Returns a list of Amazon Managed Grafana
workspaces in the account, with some information about each
workspace</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../managedgrafana_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">The TagResource operation associates tags
with an Amazon Managed Grafana resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../managedgrafana_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">The UntagResource operation removes the
association of the tag with the Amazon Managed Grafana resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../managedgrafana_update_permissions/"> update_permissions </a></td>
<td style="text-align: left;">Updates which users in a workspace have
the Grafana Admin or Editor roles</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../managedgrafana_update_workspace/"> update_workspace </a></td>
<td style="text-align: left;">Modifies an existing Amazon Managed
Grafana workspace</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../managedgrafana_update_workspace_authentication/"> update_workspace_authentication </a></td>
<td style="text-align: left;">Use this operation to define the identity
provider (IdP) that this workspace authenticates users from, using
SAML</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../managedgrafana_update_workspace_configuration/"> update_workspace_configuration </a></td>
<td style="text-align: left;">Updates the configuration string for the
given workspace</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- managedgrafana()
    svc$associate_license(
      Foo = 123
    )

    ## End(Not run)
