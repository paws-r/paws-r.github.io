<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ram</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS Resource Access Manager

### Description

This is the *Resource Access Manager API Reference*. This documentation
provides descriptions and syntax for each of the actions and data types
in RAM. RAM is a service that helps you securely share your Amazon Web
Services resources to other Amazon Web Services accounts. If you use
Organizations to manage your accounts, then you can share your resources
with your entire organization or to organizational units (OUs). For
supported resource types, you can also share resources with individual
Identity and Access Management (IAM) roles and users.

To learn more about RAM, see the following resources:

-   [Resource Access Manager product page](https://aws.amazon.com/ram/)

-   [Resource Access Manager User
    Guide](https://docs.aws.amazon.com/ram/latest/userguide/)

### Usage

    ram(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ram_:_config">config</code></td>
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

    svc <- ram(
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
<td style="text-align: left;"><a href="../ram_accept_resource_share_invitation/"> accept_resource_share_invitation </a></td>
<td style="text-align: left;">Accepts an invitation to a resource share
from another Amazon Web Services account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ram_associate_resource_share/"> associate_resource_share </a></td>
<td style="text-align: left;">Adds the specified list of principals and
list of resources to a resource share</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ram_associate_resource_share_permission/"> associate_resource_share_permission </a></td>
<td style="text-align: left;">Adds or replaces the RAM permission for a
resource type included in a resource share</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ram_create_permission/"> create_permission </a></td>
<td style="text-align: left;">Creates a customer managed permission for
a specified resource type that you can attach to resource shares</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ram_create_permission_version/"> create_permission_version </a></td>
<td style="text-align: left;">Creates a new version of the specified
customer managed permission</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ram_create_resource_share/"> create_resource_share </a></td>
<td style="text-align: left;">Creates a resource share</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ram_delete_permission/"> delete_permission </a></td>
<td style="text-align: left;">Deletes the specified customer managed
permission in the Amazon Web Services Region in which you call this
operation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ram_delete_permission_version/"> delete_permission_version </a></td>
<td style="text-align: left;">Deletes one version of a customer managed
permission</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ram_delete_resource_share/"> delete_resource_share </a></td>
<td style="text-align: left;">Deletes the specified resource share</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ram_disassociate_resource_share/"> disassociate_resource_share </a></td>
<td style="text-align: left;">Removes the specified principals or
resources from participating in the specified resource share</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ram_disassociate_resource_share_permission/"> disassociate_resource_share_permission </a></td>
<td style="text-align: left;">Removes a managed permission from a
resource share</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ram_enable_sharing_with_aws_organization/"> enable_sharing_with_aws_organization </a></td>
<td style="text-align: left;">Enables resource sharing within your
organization in Organizations</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ram_get_permission/"> get_permission </a></td>
<td style="text-align: left;">Retrieves the contents of a managed
permission in JSON format</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ram_get_resource_policies/"> get_resource_policies </a></td>
<td style="text-align: left;">Retrieves the resource policies for the
specified resources that you own and have shared</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ram_get_resource_share_associations/"> get_resource_share_associations </a></td>
<td style="text-align: left;">Retrieves the lists of resources and
principals that associated for resource shares that you own</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ram_get_resource_share_invitations/"> get_resource_share_invitations </a></td>
<td style="text-align: left;">Retrieves details about invitations that
you have received for resource shares</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ram_get_resource_shares/"> get_resource_shares </a></td>
<td style="text-align: left;">Retrieves details about the resource
shares that you own or that are shared with you</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ram_list_pending_invitation_resources/"> list_pending_invitation_resources </a></td>
<td style="text-align: left;">Lists the resources in a resource share
that is shared with you but for which the invitation is still
PENDING</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ram_list_permission_associations/"> list_permission_associations </a></td>
<td style="text-align: left;">Lists information about the managed
permission and its associations to any resource shares that use this
managed permission</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ram_list_permissions/"> list_permissions </a></td>
<td style="text-align: left;">Retrieves a list of available RAM
permissions that you can use for the supported resource types</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ram_list_permission_versions/"> list_permission_versions </a></td>
<td style="text-align: left;">Lists the available versions of the
specified RAM permission</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ram_list_principals/"> list_principals </a></td>
<td style="text-align: left;">Lists the principals that you are sharing
resources with or that are sharing resources with you</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ram_list_replace_permission_associations_work/"> list_replace_permission_associations_work </a></td>
<td style="text-align: left;">Retrieves the current status of the
asynchronous tasks performed by RAM when you perform the
ReplacePermissionAssociationsWork operation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ram_list_resources/"> list_resources </a></td>
<td style="text-align: left;">Lists the resources that you added to a
resource share or the resources that are shared with you</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ram_list_resource_share_permissions/"> list_resource_share_permissions </a></td>
<td style="text-align: left;">Lists the RAM permissions that are
associated with a resource share</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ram_list_resource_types/"> list_resource_types </a></td>
<td style="text-align: left;">Lists the resource types that can be
shared by RAM</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ram_promote_permission_created_from_policy/"> promote_permission_created_from_policy </a></td>
<td style="text-align: left;">When you attach a resource-based policy to
a resource, RAM automatically creates a resource share of
featureSet=CREATED_FROM_POLICY with a managed permission that has the
same IAM permissions as the original resource-based policy</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ram_promote_resource_share_created_from_policy/"> promote_resource_share_created_from_policy </a></td>
<td style="text-align: left;">When you attach a resource-based policy to
a resource, RAM automatically creates a resource share of
featureSet=CREATED_FROM_POLICY with a managed permission that has the
same IAM permissions as the original resource-based policy</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ram_reject_resource_share_invitation/"> reject_resource_share_invitation </a></td>
<td style="text-align: left;">Rejects an invitation to a resource share
from another Amazon Web Services account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ram_replace_permission_associations/"> replace_permission_associations </a></td>
<td style="text-align: left;">Updates all resource shares that use a
managed permission to a different managed permission</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ram_set_default_permission_version/"> set_default_permission_version </a></td>
<td style="text-align: left;">Designates the specified version number as
the default version for the specified customer managed permission</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ram_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Adds the specified tag keys and values to
a resource share or managed permission</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ram_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes the specified tag key and value
pairs from the specified resource share or managed permission</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ram_update_resource_share/"> update_resource_share </a></td>
<td style="text-align: left;">Modifies some of the properties of the
specified resource share</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- ram()
    svc$accept_resource_share_invitation(
      Foo = 123
    )

    ## End(Not run)
