<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspacesweb</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon WorkSpaces Web

### Description

WorkSpaces Web is a low cost, fully managed WorkSpace built specifically
to facilitate secure, web-based workloads. WorkSpaces Web makes it easy
for customers to safely provide their employees with access to internal
websites and SaaS web applications without the administrative burden of
appliances or specialized client software. WorkSpaces Web provides
simple policy tools tailored for user interactions, while offloading
common tasks like capacity management, scaling, and maintaining browser
images.

### Usage

    workspacesweb(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="workspacesweb_:_config">config</code></td>
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

    svc <- workspacesweb(
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
<td style="text-align: left;"><a href="../workspacesweb_associate_browser_settings/"> associate_browser_settings </a></td>
<td style="text-align: left;">Associates a browser settings resource
with a web portal</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workspacesweb_associate_network_settings/"> associate_network_settings </a></td>
<td style="text-align: left;">Associates a network settings resource
with a web portal</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workspacesweb_associate_trust_store/"> associate_trust_store </a></td>
<td style="text-align: left;">Associates a trust store with a web
portal</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../workspacesweb_associate_user_access_logging_settings/"> associate_user_access_logging_settings </a></td>
<td style="text-align: left;">Associates a user access logging settings
resource with a web portal</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workspacesweb_associate_user_settings/"> associate_user_settings </a></td>
<td style="text-align: left;">Associates a user settings resource with a
web portal</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workspacesweb_create_browser_settings/"> create_browser_settings </a></td>
<td style="text-align: left;">Creates a browser settings resource that
can be associated with a web portal</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workspacesweb_create_identity_provider/"> create_identity_provider </a></td>
<td style="text-align: left;">Creates an identity provider resource that
is then associated with a web portal</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workspacesweb_create_network_settings/"> create_network_settings </a></td>
<td style="text-align: left;">Creates a network settings resource that
can be associated with a web portal</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workspacesweb_create_portal/"> create_portal </a></td>
<td style="text-align: left;">Creates a web portal</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workspacesweb_create_trust_store/"> create_trust_store </a></td>
<td style="text-align: left;">Creates a trust store that can be
associated with a web portal</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workspacesweb_create_user_access_logging_settings/"> create_user_access_logging_settings </a></td>
<td style="text-align: left;">Creates a user access logging settings
resource that can be associated with a web portal</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workspacesweb_create_user_settings/"> create_user_settings </a></td>
<td style="text-align: left;">Creates a user settings resource that can
be associated with a web portal</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workspacesweb_delete_browser_settings/"> delete_browser_settings </a></td>
<td style="text-align: left;">Deletes browser settings</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workspacesweb_delete_identity_provider/"> delete_identity_provider </a></td>
<td style="text-align: left;">Deletes the identity provider</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workspacesweb_delete_network_settings/"> delete_network_settings </a></td>
<td style="text-align: left;">Deletes network settings</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workspacesweb_delete_portal/"> delete_portal </a></td>
<td style="text-align: left;">Deletes a web portal</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workspacesweb_delete_trust_store/"> delete_trust_store </a></td>
<td style="text-align: left;">Deletes the trust store</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workspacesweb_delete_user_access_logging_settings/"> delete_user_access_logging_settings </a></td>
<td style="text-align: left;">Deletes user access logging settings</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workspacesweb_delete_user_settings/"> delete_user_settings </a></td>
<td style="text-align: left;">Deletes user settings</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workspacesweb_disassociate_browser_settings/"> disassociate_browser_settings </a></td>
<td style="text-align: left;">Disassociates browser settings from a web
portal</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workspacesweb_disassociate_network_settings/"> disassociate_network_settings </a></td>
<td style="text-align: left;">Disassociates network settings from a web
portal</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workspacesweb_disassociate_trust_store/"> disassociate_trust_store </a></td>
<td style="text-align: left;">Disassociates a trust store from a web
portal</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../workspacesweb_disassociate_user_access_logging_settings/"> disassociate_user_access_logging_settings </a></td>
<td style="text-align: left;">Disassociates user access logging settings
from a web portal</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workspacesweb_disassociate_user_settings/"> disassociate_user_settings </a></td>
<td style="text-align: left;">Disassociates user settings from a web
portal</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workspacesweb_get_browser_settings/"> get_browser_settings </a></td>
<td style="text-align: left;">Gets browser settings</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workspacesweb_get_identity_provider/"> get_identity_provider </a></td>
<td style="text-align: left;">Gets the identity provider</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workspacesweb_get_network_settings/"> get_network_settings </a></td>
<td style="text-align: left;">Gets the network settings</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workspacesweb_get_portal/"> get_portal </a></td>
<td style="text-align: left;">Gets the web portal</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workspacesweb_get_portal_service_provider_metadata/"> get_portal_service_provider_metadata </a></td>
<td style="text-align: left;">Gets the service provider metadata</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workspacesweb_get_trust_store/"> get_trust_store </a></td>
<td style="text-align: left;">Gets the trust store</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workspacesweb_get_trust_store_certificate/"> get_trust_store_certificate </a></td>
<td style="text-align: left;">Gets the trust store certificate</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workspacesweb_get_user_access_logging_settings/"> get_user_access_logging_settings </a></td>
<td style="text-align: left;">Gets user access logging settings</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workspacesweb_get_user_settings/"> get_user_settings </a></td>
<td style="text-align: left;">Gets user settings</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workspacesweb_list_browser_settings/"> list_browser_settings </a></td>
<td style="text-align: left;">Retrieves a list of browser settings</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workspacesweb_list_identity_providers/"> list_identity_providers </a></td>
<td style="text-align: left;">Retrieves a list of identity providers for
a specific web portal</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workspacesweb_list_network_settings/"> list_network_settings </a></td>
<td style="text-align: left;">Retrieves a list of network settings</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workspacesweb_list_portals/"> list_portals </a></td>
<td style="text-align: left;">Retrieves a list or web portals</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workspacesweb_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Retrieves a list of tags for a
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workspacesweb_list_trust_store_certificates/"> list_trust_store_certificates </a></td>
<td style="text-align: left;">Retrieves a list of trust store
certificates</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workspacesweb_list_trust_stores/"> list_trust_stores </a></td>
<td style="text-align: left;">Retrieves a list of trust stores</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workspacesweb_list_user_access_logging_settings/"> list_user_access_logging_settings </a></td>
<td style="text-align: left;">Retrieves a list of user access logging
settings</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workspacesweb_list_user_settings/"> list_user_settings </a></td>
<td style="text-align: left;">Retrieves a list of user settings</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workspacesweb_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Adds or overwrites one or more tags for
the specified resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workspacesweb_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes one or more tags from the
specified resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workspacesweb_update_browser_settings/"> update_browser_settings </a></td>
<td style="text-align: left;">Updates browser settings</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workspacesweb_update_identity_provider/"> update_identity_provider </a></td>
<td style="text-align: left;">Updates the identity provider</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workspacesweb_update_network_settings/"> update_network_settings </a></td>
<td style="text-align: left;">Updates network settings</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workspacesweb_update_portal/"> update_portal </a></td>
<td style="text-align: left;">Updates a web portal</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workspacesweb_update_trust_store/"> update_trust_store </a></td>
<td style="text-align: left;">Updates the trust store</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workspacesweb_update_user_access_logging_settings/"> update_user_access_logging_settings </a></td>
<td style="text-align: left;">Updates the user access logging
settings</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workspacesweb_update_user_settings/"> update_user_settings </a></td>
<td style="text-align: left;">Updates the user settings</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- workspacesweb()
    svc$associate_browser_settings(
      Foo = 123
    )

    ## End(Not run)
