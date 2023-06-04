<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53recoveryreadiness</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS Route53 Recovery Readiness

### Description

Recovery readiness

### Usage

    route53recoveryreadiness(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="route53recoveryreadiness_:_config">config</code></td>
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

    svc <- route53recoveryreadiness(
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
<td style="text-align: left;"><a href="../route53recoveryreadiness_create_cell/"> create_cell </a></td>
<td style="text-align: left;">Creates a cell in an account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53recoveryreadiness_create_cross_account_authorization/"> create_cross_account_authorization </a></td>
<td style="text-align: left;">Creates a cross-account readiness
authorization</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53recoveryreadiness_create_readiness_check/"> create_readiness_check </a></td>
<td style="text-align: left;">Creates a readiness check in an
account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53recoveryreadiness_create_recovery_group/"> create_recovery_group </a></td>
<td style="text-align: left;">Creates a recovery group in an
account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53recoveryreadiness_create_resource_set/"> create_resource_set </a></td>
<td style="text-align: left;">Creates a resource set</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53recoveryreadiness_delete_cell/"> delete_cell </a></td>
<td style="text-align: left;">Delete a cell</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53recoveryreadiness_delete_cross_account_authorization/"> delete_cross_account_authorization </a></td>
<td style="text-align: left;">Deletes cross account readiness
authorization</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53recoveryreadiness_delete_readiness_check/"> delete_readiness_check </a></td>
<td style="text-align: left;">Deletes a readiness check</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53recoveryreadiness_delete_recovery_group/"> delete_recovery_group </a></td>
<td style="text-align: left;">Deletes a recovery group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53recoveryreadiness_delete_resource_set/"> delete_resource_set </a></td>
<td style="text-align: left;">Deletes a resource set</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53recoveryreadiness_get_architecture_recommendations/"> get_architecture_recommendations </a></td>
<td style="text-align: left;">Gets recommendations about architecture
designs for improving resiliency for an application, based on a recovery
group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53recoveryreadiness_get_cell/"> get_cell </a></td>
<td style="text-align: left;">Gets information about a cell including
cell name, cell Amazon Resource Name (ARN), ARNs of nested cells for
this cell, and a list of those cell ARNs with their associated recovery
group ARNs</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53recoveryreadiness_get_cell_readiness_summary/"> get_cell_readiness_summary </a></td>
<td style="text-align: left;">Gets readiness for a cell</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53recoveryreadiness_get_readiness_check/"> get_readiness_check </a></td>
<td style="text-align: left;">Gets details about a readiness check</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53recoveryreadiness_get_readiness_check_resource_status/"> get_readiness_check_resource_status </a></td>
<td style="text-align: left;">Gets individual readiness status for a
readiness check</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53recoveryreadiness_get_readiness_check_status/"> get_readiness_check_status </a></td>
<td style="text-align: left;">Gets the readiness status for an
individual readiness check</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53recoveryreadiness_get_recovery_group/"> get_recovery_group </a></td>
<td style="text-align: left;">Gets details about a recovery group,
including a list of the cells that are included in it</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53recoveryreadiness_get_recovery_group_readiness_summary/"> get_recovery_group_readiness_summary </a></td>
<td style="text-align: left;">Displays a summary of information about a
recovery group's readiness status</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53recoveryreadiness_get_resource_set/"> get_resource_set </a></td>
<td style="text-align: left;">Displays the details about a resource set,
including a list of the resources in the set</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53recoveryreadiness_list_cells/"> list_cells </a></td>
<td style="text-align: left;">Lists the cells for an account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53recoveryreadiness_list_cross_account_authorizations/"> list_cross_account_authorizations </a></td>
<td style="text-align: left;">Lists the cross-account readiness
authorizations that are in place for an account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53recoveryreadiness_list_readiness_checks/"> list_readiness_checks </a></td>
<td style="text-align: left;">Lists the readiness checks for an
account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53recoveryreadiness_list_recovery_groups/"> list_recovery_groups </a></td>
<td style="text-align: left;">Lists the recovery groups in an
account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53recoveryreadiness_list_resource_sets/"> list_resource_sets </a></td>
<td style="text-align: left;">Lists the resource sets in an account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53recoveryreadiness_list_rules/"> list_rules </a></td>
<td style="text-align: left;">Lists all readiness rules, or lists the
readiness rules for a specific resource type</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53recoveryreadiness_list_tags_for_resources/"> list_tags_for_resources </a></td>
<td style="text-align: left;">Lists the tags for a resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53recoveryreadiness_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Adds a tag to a resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53recoveryreadiness_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes a tag from a resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53recoveryreadiness_update_cell/"> update_cell </a></td>
<td style="text-align: left;">Updates a cell to replace the list of
nested cells with a new list of nested cells</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53recoveryreadiness_update_readiness_check/"> update_readiness_check </a></td>
<td style="text-align: left;">Updates a readiness check</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53recoveryreadiness_update_recovery_group/"> update_recovery_group </a></td>
<td style="text-align: left;">Updates a recovery group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53recoveryreadiness_update_resource_set/"> update_resource_set </a></td>
<td style="text-align: left;">Updates a resource set</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- route53recoveryreadiness()
    svc$create_cell(
      Foo = 123
    )

    ## End(Not run)
