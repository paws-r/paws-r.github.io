<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53recoverycontrolconfig</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS Route53 Recovery Control Config

### Description

Recovery Control Configuration API Reference for Amazon Route 53
Application Recovery Controller

### Usage

    route53recoverycontrolconfig(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="route53recoverycontrolconfig_:_config">config</code></td>
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

    svc <- route53recoverycontrolconfig(
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
<td style="text-align: left;"><a href="../route53recoverycontrolconfig_create_cluster/"> create_cluster </a></td>
<td style="text-align: left;">Create a new cluster</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53recoverycontrolconfig_create_control_panel/"> create_control_panel </a></td>
<td style="text-align: left;">Creates a new control panel</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53recoverycontrolconfig_create_routing_control/"> create_routing_control </a></td>
<td style="text-align: left;">Creates a new routing control</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53recoverycontrolconfig_create_safety_rule/"> create_safety_rule </a></td>
<td style="text-align: left;">Creates a safety rule in a control
panel</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53recoverycontrolconfig_delete_cluster/"> delete_cluster </a></td>
<td style="text-align: left;">Delete a cluster</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53recoverycontrolconfig_delete_control_panel/"> delete_control_panel </a></td>
<td style="text-align: left;">Deletes a control panel</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53recoverycontrolconfig_delete_routing_control/"> delete_routing_control </a></td>
<td style="text-align: left;">Deletes a routing control</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53recoverycontrolconfig_delete_safety_rule/"> delete_safety_rule </a></td>
<td style="text-align: left;">Deletes a safety rule</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53recoverycontrolconfig_describe_cluster/"> describe_cluster </a></td>
<td style="text-align: left;">Display the details about a cluster</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53recoverycontrolconfig_describe_control_panel/"> describe_control_panel </a></td>
<td style="text-align: left;">Displays details about a control
panel</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53recoverycontrolconfig_describe_routing_control/"> describe_routing_control </a></td>
<td style="text-align: left;">Displays details about a routing
control</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53recoverycontrolconfig_describe_safety_rule/"> describe_safety_rule </a></td>
<td style="text-align: left;">Returns information about a safety
rule</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../route53recoverycontrolconfig_list_associated_route_53_health_checks/"> list_associated_route_53_health_checks </a></td>
<td style="text-align: left;">Returns an array of all Amazon Route 53
health checks associated with a specific routing control</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53recoverycontrolconfig_list_clusters/"> list_clusters </a></td>
<td style="text-align: left;">Returns an array of all the clusters in an
account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53recoverycontrolconfig_list_control_panels/"> list_control_panels </a></td>
<td style="text-align: left;">Returns an array of control panels in an
account or in a cluster</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53recoverycontrolconfig_list_routing_controls/"> list_routing_controls </a></td>
<td style="text-align: left;">Returns an array of routing controls for a
control panel</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53recoverycontrolconfig_list_safety_rules/"> list_safety_rules </a></td>
<td style="text-align: left;">List the safety rules (the assertion rules
and gating rules) that you've defined for the routing controls in a
control panel</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53recoverycontrolconfig_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Lists the tags for a resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53recoverycontrolconfig_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Adds a tag to a resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53recoverycontrolconfig_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes a tag from a resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53recoverycontrolconfig_update_control_panel/"> update_control_panel </a></td>
<td style="text-align: left;">Updates a control panel</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53recoverycontrolconfig_update_routing_control/"> update_routing_control </a></td>
<td style="text-align: left;">Updates a routing control</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53recoverycontrolconfig_update_safety_rule/"> update_safety_rule </a></td>
<td style="text-align: left;">Update a safety rule (an assertion rule or
gating rule)</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- route53recoverycontrolconfig()
    svc$create_cluster(
      Foo = 123
    )

    ## End(Not run)
