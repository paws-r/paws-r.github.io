<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspaces</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon WorkSpaces

### Description

Amazon WorkSpaces Service

Amazon WorkSpaces enables you to provision virtual, cloud-based
Microsoft Windows or Amazon Linux desktops for your users, known as
*WorkSpaces*. WorkSpaces eliminates the need to procure and deploy
hardware or install complex software. You can quickly add or remove
users as your needs change. Users can access their virtual desktops from
multiple devices or web browsers.

This API Reference provides detailed information about the actions, data
types, parameters, and errors of the WorkSpaces service. For more
information about the supported Amazon Web Services Regions, endpoints,
and service quotas of the Amazon WorkSpaces service, see [WorkSpaces
endpoints and
quotas](https://docs.aws.amazon.com/general/latest/gr/wsp.html) in the
*Amazon Web Services General Reference*.

You can also manage your WorkSpaces resources using the WorkSpaces
console, Command Line Interface (CLI), and SDKs. For more information
about administering WorkSpaces, see the [Amazon WorkSpaces
Administration
Guide](https://docs.aws.amazon.com/workspaces/latest/adminguide/). For
more information about using the Amazon WorkSpaces client application or
web browser to access provisioned WorkSpaces, see the [Amazon WorkSpaces
User Guide](https://docs.aws.amazon.com/workspaces/latest/userguide/).
For more information about using the CLI to manage your WorkSpaces
resources, see the [WorkSpaces section of the CLI
Reference](https://docs.aws.amazon.com/cli/latest/reference/workspaces/index.html).

### Usage

    workspaces(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="workspaces_:_config">config</code></td>
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

    svc <- workspaces(
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
<td style="text-align: left;"><a href="../workspaces_associate_connection_alias/"> associate_connection_alias </a></td>
<td style="text-align: left;">Associates the specified connection alias
with the specified directory to enable cross-Region redirection</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workspaces_associate_ip_groups/"> associate_ip_groups </a></td>
<td style="text-align: left;">Associates the specified IP access control
group with the specified directory</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workspaces_authorize_ip_rules/"> authorize_ip_rules </a></td>
<td style="text-align: left;">Adds one or more rules to the specified IP
access control group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workspaces_copy_workspace_image/"> copy_workspace_image </a></td>
<td style="text-align: left;">Copies the specified image from the
specified Region to the current Region</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workspaces_create_connect_client_add_in/"> create_connect_client_add_in </a></td>
<td style="text-align: left;">Creates a client-add-in for Amazon Connect
within a directory</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workspaces_create_connection_alias/"> create_connection_alias </a></td>
<td style="text-align: left;">Creates the specified connection alias for
use with cross-Region redirection</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workspaces_create_ip_group/"> create_ip_group </a></td>
<td style="text-align: left;">Creates an IP access control group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workspaces_create_standby_workspaces/"> create_standby_workspaces </a></td>
<td style="text-align: left;">Creates a standby WorkSpace in a secondary
Region</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workspaces_create_tags/"> create_tags </a></td>
<td style="text-align: left;">Creates the specified tags for the
specified WorkSpaces resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workspaces_create_updated_workspace_image/"> create_updated_workspace_image </a></td>
<td style="text-align: left;">Creates a new updated WorkSpace image
based on the specified source image</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workspaces_create_workspace_bundle/"> create_workspace_bundle </a></td>
<td style="text-align: left;">Creates the specified WorkSpace
bundle</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workspaces_create_workspace_image/"> create_workspace_image </a></td>
<td style="text-align: left;">Creates a new WorkSpace image from an
existing WorkSpace</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workspaces_create_workspaces/"> create_workspaces </a></td>
<td style="text-align: left;">Creates one or more WorkSpaces</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workspaces_delete_client_branding/"> delete_client_branding </a></td>
<td style="text-align: left;">Deletes customized client branding</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workspaces_delete_connect_client_add_in/"> delete_connect_client_add_in </a></td>
<td style="text-align: left;">Deletes a client-add-in for Amazon Connect
that is configured within a directory</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workspaces_delete_connection_alias/"> delete_connection_alias </a></td>
<td style="text-align: left;">Deletes the specified connection
alias</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workspaces_delete_ip_group/"> delete_ip_group </a></td>
<td style="text-align: left;">Deletes the specified IP access control
group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workspaces_delete_tags/"> delete_tags </a></td>
<td style="text-align: left;">Deletes the specified tags from the
specified WorkSpaces resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workspaces_delete_workspace_bundle/"> delete_workspace_bundle </a></td>
<td style="text-align: left;">Deletes the specified WorkSpace
bundle</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workspaces_delete_workspace_image/"> delete_workspace_image </a></td>
<td style="text-align: left;">Deletes the specified image from your
account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workspaces_deregister_workspace_directory/"> deregister_workspace_directory </a></td>
<td style="text-align: left;">Deregisters the specified directory</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workspaces_describe_account/"> describe_account </a></td>
<td style="text-align: left;">Retrieves a list that describes the
configuration of Bring Your Own License (BYOL) for the specified
account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workspaces_describe_account_modifications/"> describe_account_modifications </a></td>
<td style="text-align: left;">Retrieves a list that describes
modifications to the configuration of Bring Your Own License (BYOL) for
the specified account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workspaces_describe_client_branding/"> describe_client_branding </a></td>
<td style="text-align: left;">Describes the specified client
branding</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workspaces_describe_client_properties/"> describe_client_properties </a></td>
<td style="text-align: left;">Retrieves a list that describes one or
more specified Amazon WorkSpaces clients</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workspaces_describe_connect_client_add_ins/"> describe_connect_client_add_ins </a></td>
<td style="text-align: left;">Retrieves a list of Amazon Connect client
add-ins that have been created</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workspaces_describe_connection_aliases/"> describe_connection_aliases </a></td>
<td style="text-align: left;">Retrieves a list that describes the
connection aliases used for cross-Region redirection</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workspaces_describe_connection_alias_permissions/"> describe_connection_alias_permissions </a></td>
<td style="text-align: left;">Describes the permissions that the owner
of a connection alias has granted to another Amazon Web Services account
for the specified connection alias</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workspaces_describe_ip_groups/"> describe_ip_groups </a></td>
<td style="text-align: left;">Describes one or more of your IP access
control groups</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workspaces_describe_tags/"> describe_tags </a></td>
<td style="text-align: left;">Describes the specified tags for the
specified WorkSpaces resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workspaces_describe_workspace_bundles/"> describe_workspace_bundles </a></td>
<td style="text-align: left;">Retrieves a list that describes the
available WorkSpace bundles</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workspaces_describe_workspace_directories/"> describe_workspace_directories </a></td>
<td style="text-align: left;">Describes the available directories that
are registered with Amazon WorkSpaces</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workspaces_describe_workspace_image_permissions/"> describe_workspace_image_permissions </a></td>
<td style="text-align: left;">Describes the permissions that the owner
of an image has granted to other Amazon Web Services accounts for an
image</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workspaces_describe_workspace_images/"> describe_workspace_images </a></td>
<td style="text-align: left;">Retrieves a list that describes one or
more specified images, if the image identifiers are provided</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workspaces_describe_workspaces/"> describe_workspaces </a></td>
<td style="text-align: left;">Describes the specified WorkSpaces</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workspaces_describe_workspaces_connection_status/"> describe_workspaces_connection_status </a></td>
<td style="text-align: left;">Describes the connection status of the
specified WorkSpaces</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workspaces_describe_workspace_snapshots/"> describe_workspace_snapshots </a></td>
<td style="text-align: left;">Describes the snapshots for the specified
WorkSpace</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workspaces_disassociate_connection_alias/"> disassociate_connection_alias </a></td>
<td style="text-align: left;">Disassociates a connection alias from a
directory</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workspaces_disassociate_ip_groups/"> disassociate_ip_groups </a></td>
<td style="text-align: left;">Disassociates the specified IP access
control group from the specified directory</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workspaces_import_client_branding/"> import_client_branding </a></td>
<td style="text-align: left;">Imports client branding</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workspaces_import_workspace_image/"> import_workspace_image </a></td>
<td style="text-align: left;">Imports the specified Windows 10 or 11
Bring Your Own License (BYOL) image into Amazon WorkSpaces</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workspaces_list_available_management_cidr_ranges/"> list_available_management_cidr_ranges </a></td>
<td style="text-align: left;">Retrieves a list of IP address ranges,
specified as IPv4 CIDR blocks, that you can use for the network
management interface when you enable Bring Your Own License (BYOL)</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workspaces_migrate_workspace/"> migrate_workspace </a></td>
<td style="text-align: left;">Migrates a WorkSpace from one operating
system or bundle type to another, while retaining the data on the user
volume</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workspaces_modify_account/"> modify_account </a></td>
<td style="text-align: left;">Modifies the configuration of Bring Your
Own License (BYOL) for the specified account</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../workspaces_modify_certificate_based_auth_properties/"> modify_certificate_based_auth_properties </a></td>
<td style="text-align: left;">Modifies the properties of the
certificate-based authentication you want to use with your
WorkSpaces</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workspaces_modify_client_properties/"> modify_client_properties </a></td>
<td style="text-align: left;">Modifies the properties of the specified
Amazon WorkSpaces clients</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workspaces_modify_saml_properties/"> modify_saml_properties </a></td>
<td style="text-align: left;">Modifies multiple properties related to
SAML 2</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workspaces_modify_selfservice_permissions/"> modify_selfservice_permissions </a></td>
<td style="text-align: left;">Modifies the self-service WorkSpace
management capabilities for your users</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workspaces_modify_workspace_access_properties/"> modify_workspace_access_properties </a></td>
<td style="text-align: left;">Specifies which devices and operating
systems users can use to access their WorkSpaces</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workspaces_modify_workspace_creation_properties/"> modify_workspace_creation_properties </a></td>
<td style="text-align: left;">Modify the default properties used to
create WorkSpaces</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workspaces_modify_workspace_properties/"> modify_workspace_properties </a></td>
<td style="text-align: left;">Modifies the specified WorkSpace
properties</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workspaces_modify_workspace_state/"> modify_workspace_state </a></td>
<td style="text-align: left;">Sets the state of the specified
WorkSpace</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workspaces_reboot_workspaces/"> reboot_workspaces </a></td>
<td style="text-align: left;">Reboots the specified WorkSpaces</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workspaces_rebuild_workspaces/"> rebuild_workspaces </a></td>
<td style="text-align: left;">Rebuilds the specified WorkSpace</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workspaces_register_workspace_directory/"> register_workspace_directory </a></td>
<td style="text-align: left;">Registers the specified directory</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workspaces_restore_workspace/"> restore_workspace </a></td>
<td style="text-align: left;">Restores the specified WorkSpace to its
last known healthy state</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workspaces_revoke_ip_rules/"> revoke_ip_rules </a></td>
<td style="text-align: left;">Removes one or more rules from the
specified IP access control group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workspaces_start_workspaces/"> start_workspaces </a></td>
<td style="text-align: left;">Starts the specified WorkSpaces</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workspaces_stop_workspaces/"> stop_workspaces </a></td>
<td style="text-align: left;">Stops the specified WorkSpaces</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workspaces_terminate_workspaces/"> terminate_workspaces </a></td>
<td style="text-align: left;">Terminates the specified WorkSpaces</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workspaces_update_connect_client_add_in/"> update_connect_client_add_in </a></td>
<td style="text-align: left;">Updates a Amazon Connect client
add-in</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workspaces_update_connection_alias_permission/"> update_connection_alias_permission </a></td>
<td style="text-align: left;">Shares or unshares a connection alias with
one account by specifying whether that account has permission to
associate the connection alias with a directory</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workspaces_update_rules_of_ip_group/"> update_rules_of_ip_group </a></td>
<td style="text-align: left;">Replaces the current rules of the
specified IP access control group with the specified rules</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workspaces_update_workspace_bundle/"> update_workspace_bundle </a></td>
<td style="text-align: left;">Updates a WorkSpace bundle with a new
image</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workspaces_update_workspace_image_permission/"> update_workspace_image_permission </a></td>
<td style="text-align: left;">Shares or unshares an image with one
account in the same Amazon Web Services Region by specifying whether
that account has permission to copy the image</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- workspaces()
    svc$associate_connection_alias(
      Foo = 123
    )

    ## End(Not run)
