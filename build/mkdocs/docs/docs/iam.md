<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS Identity and Access Management

### Description

Identity and Access Management

Identity and Access Management (IAM) is a web service for securely
controlling access to Amazon Web Services services. With IAM, you can
centrally manage users, security credentials such as access keys, and
permissions that control which Amazon Web Services resources users and
applications can access. For more information about IAM, see [Identity
and Access Management (IAM)](https://aws.amazon.com/iam/) and the
[Identity and Access Management User
Guide](https://docs.aws.amazon.com/IAM/latest/UserGuide/).

### Usage

    iam(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="iam_:_config">config</code></td>
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

    svc <- iam(
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
<td
style="text-align: left;"><a href="../iam_add_client_id_to_open_id_connect_provider/"> add_client_id_to_open_id_connect_provider </a></td>
<td style="text-align: left;">Adds a new client ID (also known as
audience) to the list of client IDs already registered for the specified
IAM OpenID Connect (OIDC) provider resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_add_role_to_instance_profile/"> add_role_to_instance_profile </a></td>
<td style="text-align: left;">Adds the specified IAM role to the
specified instance profile</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_add_user_to_group/"> add_user_to_group </a></td>
<td style="text-align: left;">Adds the specified user to the specified
group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_attach_group_policy/"> attach_group_policy </a></td>
<td style="text-align: left;">Attaches the specified managed policy to
the specified IAM group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_attach_role_policy/"> attach_role_policy </a></td>
<td style="text-align: left;">Attaches the specified managed policy to
the specified IAM role</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_attach_user_policy/"> attach_user_policy </a></td>
<td style="text-align: left;">Attaches the specified managed policy to
the specified user</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_change_password/"> change_password </a></td>
<td style="text-align: left;">Changes the password of the IAM user who
is calling this operation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_create_access_key/"> create_access_key </a></td>
<td style="text-align: left;">Creates a new Amazon Web Services secret
access key and corresponding Amazon Web Services access key ID for the
specified user</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_create_account_alias/"> create_account_alias </a></td>
<td style="text-align: left;">Creates an alias for your Amazon Web
Services account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_create_group/"> create_group </a></td>
<td style="text-align: left;">Creates a new group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_create_instance_profile/"> create_instance_profile </a></td>
<td style="text-align: left;">Creates a new instance profile</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_create_login_profile/"> create_login_profile </a></td>
<td style="text-align: left;">Creates a password for the specified IAM
user</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_create_open_id_connect_provider/"> create_open_id_connect_provider </a></td>
<td style="text-align: left;">Creates an IAM entity to describe an
identity provider (IdP) that supports OpenID Connect (OIDC)</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_create_policy/"> create_policy </a></td>
<td style="text-align: left;">Creates a new managed policy for your
Amazon Web Services account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_create_policy_version/"> create_policy_version </a></td>
<td style="text-align: left;">Creates a new version of the specified
managed policy</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_create_role/"> create_role </a></td>
<td style="text-align: left;">Creates a new role for your Amazon Web
Services account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_create_saml_provider/"> create_saml_provider </a></td>
<td style="text-align: left;">Creates an IAM resource that describes an
identity provider (IdP) that supports SAML 2</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_create_service_linked_role/"> create_service_linked_role </a></td>
<td style="text-align: left;">Creates an IAM role that is linked to a
specific Amazon Web Services service</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_create_service_specific_credential/"> create_service_specific_credential </a></td>
<td style="text-align: left;">Generates a set of credentials consisting
of a user name and password that can be used to access the service
specified in the request</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_create_user/"> create_user </a></td>
<td style="text-align: left;">Creates a new IAM user for your Amazon Web
Services account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_create_virtual_mfa_device/"> create_virtual_mfa_device </a></td>
<td style="text-align: left;">Creates a new virtual MFA device for the
Amazon Web Services account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_deactivate_mfa_device/"> deactivate_mfa_device </a></td>
<td style="text-align: left;">Deactivates the specified MFA device and
removes it from association with the user name for which it was
originally enabled</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_delete_access_key/"> delete_access_key </a></td>
<td style="text-align: left;">Deletes the access key pair associated
with the specified IAM user</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_delete_account_alias/"> delete_account_alias </a></td>
<td style="text-align: left;">Deletes the specified Amazon Web Services
account alias</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_delete_account_password_policy/"> delete_account_password_policy </a></td>
<td style="text-align: left;">Deletes the password policy for the Amazon
Web Services account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_delete_group/"> delete_group </a></td>
<td style="text-align: left;">Deletes the specified IAM group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_delete_group_policy/"> delete_group_policy </a></td>
<td style="text-align: left;">Deletes the specified inline policy that
is embedded in the specified IAM group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_delete_instance_profile/"> delete_instance_profile </a></td>
<td style="text-align: left;">Deletes the specified instance
profile</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_delete_login_profile/"> delete_login_profile </a></td>
<td style="text-align: left;">Deletes the password for the specified IAM
user, For more information, see Managing passwords for IAM users</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_delete_open_id_connect_provider/"> delete_open_id_connect_provider </a></td>
<td style="text-align: left;">Deletes an OpenID Connect identity
provider (IdP) resource object in IAM</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_delete_policy/"> delete_policy </a></td>
<td style="text-align: left;">Deletes the specified managed policy</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_delete_policy_version/"> delete_policy_version </a></td>
<td style="text-align: left;">Deletes the specified version from the
specified managed policy</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_delete_role/"> delete_role </a></td>
<td style="text-align: left;">Deletes the specified role</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_delete_role_permissions_boundary/"> delete_role_permissions_boundary </a></td>
<td style="text-align: left;">Deletes the permissions boundary for the
specified IAM role</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_delete_role_policy/"> delete_role_policy </a></td>
<td style="text-align: left;">Deletes the specified inline policy that
is embedded in the specified IAM role</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_delete_saml_provider/"> delete_saml_provider </a></td>
<td style="text-align: left;">Deletes a SAML provider resource in
IAM</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_delete_server_certificate/"> delete_server_certificate </a></td>
<td style="text-align: left;">Deletes the specified server
certificate</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_delete_service_linked_role/"> delete_service_linked_role </a></td>
<td style="text-align: left;">Submits a service-linked role deletion
request and returns a DeletionTaskId, which you can use to check the
status of the deletion</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_delete_service_specific_credential/"> delete_service_specific_credential </a></td>
<td style="text-align: left;">Deletes the specified service-specific
credential</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_delete_signing_certificate/"> delete_signing_certificate </a></td>
<td style="text-align: left;">Deletes a signing certificate associated
with the specified IAM user</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_delete_ssh_public_key/"> delete_ssh_public_key </a></td>
<td style="text-align: left;">Deletes the specified SSH public key</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_delete_user/"> delete_user </a></td>
<td style="text-align: left;">Deletes the specified IAM user</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_delete_user_permissions_boundary/"> delete_user_permissions_boundary </a></td>
<td style="text-align: left;">Deletes the permissions boundary for the
specified IAM user</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_delete_user_policy/"> delete_user_policy </a></td>
<td style="text-align: left;">Deletes the specified inline policy that
is embedded in the specified IAM user</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_delete_virtual_mfa_device/"> delete_virtual_mfa_device </a></td>
<td style="text-align: left;">Deletes a virtual MFA device</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_detach_group_policy/"> detach_group_policy </a></td>
<td style="text-align: left;">Removes the specified managed policy from
the specified IAM group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_detach_role_policy/"> detach_role_policy </a></td>
<td style="text-align: left;">Removes the specified managed policy from
the specified role</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_detach_user_policy/"> detach_user_policy </a></td>
<td style="text-align: left;">Removes the specified managed policy from
the specified user</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_enable_mfa_device/"> enable_mfa_device </a></td>
<td style="text-align: left;">Enables the specified MFA device and
associates it with the specified IAM user</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_generate_credential_report/"> generate_credential_report </a></td>
<td style="text-align: left;">Generates a credential report for the
Amazon Web Services account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_generate_organizations_access_report/"> generate_organizations_access_report </a></td>
<td style="text-align: left;">Generates a report for service last
accessed data for Organizations</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../iam_generate_service_last_accessed_details/"> generate_service_last_accessed_details </a></td>
<td style="text-align: left;">Generates a report that includes details
about when an IAM resource (user, group, role, or policy) was last used
in an attempt to access Amazon Web Services services</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_get_access_key_last_used/"> get_access_key_last_used </a></td>
<td style="text-align: left;">Retrieves information about when the
specified access key was last used</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_get_account_authorization_details/"> get_account_authorization_details </a></td>
<td style="text-align: left;">Retrieves information about all IAM users,
groups, roles, and policies in your Amazon Web Services account,
including their relationships to one another</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_get_account_password_policy/"> get_account_password_policy </a></td>
<td style="text-align: left;">Retrieves the password policy for the
Amazon Web Services account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_get_account_summary/"> get_account_summary </a></td>
<td style="text-align: left;">Retrieves information about IAM entity
usage and IAM quotas in the Amazon Web Services account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_get_context_keys_for_custom_policy/"> get_context_keys_for_custom_policy </a></td>
<td style="text-align: left;">Gets a list of all of the context keys
referenced in the input policies</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_get_context_keys_for_principal_policy/"> get_context_keys_for_principal_policy </a></td>
<td style="text-align: left;">Gets a list of all of the context keys
referenced in all the IAM policies that are attached to the specified
IAM entity</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_get_credential_report/"> get_credential_report </a></td>
<td style="text-align: left;">Retrieves a credential report for the
Amazon Web Services account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_get_group/"> get_group </a></td>
<td style="text-align: left;">Returns a list of IAM users that are in
the specified IAM group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_get_group_policy/"> get_group_policy </a></td>
<td style="text-align: left;">Retrieves the specified inline policy
document that is embedded in the specified IAM group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_get_instance_profile/"> get_instance_profile </a></td>
<td style="text-align: left;">Retrieves information about the specified
instance profile, including the instance profile's path, GUID, ARN, and
role</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_get_login_profile/"> get_login_profile </a></td>
<td style="text-align: left;">Retrieves the user name for the specified
IAM user</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_get_open_id_connect_provider/"> get_open_id_connect_provider </a></td>
<td style="text-align: left;">Returns information about the specified
OpenID Connect (OIDC) provider resource object in IAM</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_get_organizations_access_report/"> get_organizations_access_report </a></td>
<td style="text-align: left;">Retrieves the service last accessed data
report for Organizations that was previously generated using the
GenerateOrganizationsAccessReport operation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_get_policy/"> get_policy </a></td>
<td style="text-align: left;">Retrieves information about the specified
managed policy, including the policy's default version and the total
number of IAM users, groups, and roles to which the policy is
attached</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_get_policy_version/"> get_policy_version </a></td>
<td style="text-align: left;">Retrieves information about the specified
version of the specified managed policy, including the policy
document</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_get_role/"> get_role </a></td>
<td style="text-align: left;">Retrieves information about the specified
role, including the role's path, GUID, ARN, and the role's trust policy
that grants permission to assume the role</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_get_role_policy/"> get_role_policy </a></td>
<td style="text-align: left;">Retrieves the specified inline policy
document that is embedded with the specified IAM role</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_get_saml_provider/"> get_saml_provider </a></td>
<td style="text-align: left;">Returns the SAML provider metadocument
that was uploaded when the IAM SAML provider resource object was created
or updated</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_get_server_certificate/"> get_server_certificate </a></td>
<td style="text-align: left;">Retrieves information about the specified
server certificate stored in IAM</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_get_service_last_accessed_details/"> get_service_last_accessed_details </a></td>
<td style="text-align: left;">Retrieves a service last accessed report
that was created using the GenerateServiceLastAccessedDetails
operation</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../iam_get_service_last_accessed_details_with_entities/"> get_service_last_accessed_details_with_entities </a></td>
<td style="text-align: left;">After you generate a group or policy
report using the GenerateServiceLastAccessedDetails operation, you can
use the JobId parameter in
GetServiceLastAccessedDetailsWithEntities</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../iam_get_service_linked_role_deletion_status/"> get_service_linked_role_deletion_status </a></td>
<td style="text-align: left;">Retrieves the status of your
service-linked role deletion</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_get_ssh_public_key/"> get_ssh_public_key </a></td>
<td style="text-align: left;">Retrieves the specified SSH public key,
including metadata about the key</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_get_user/"> get_user </a></td>
<td style="text-align: left;">Retrieves information about the specified
IAM user, including the user's creation date, path, unique ID, and
ARN</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_get_user_policy/"> get_user_policy </a></td>
<td style="text-align: left;">Retrieves the specified inline policy
document that is embedded in the specified IAM user</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_list_access_keys/"> list_access_keys </a></td>
<td style="text-align: left;">Returns information about the access key
IDs associated with the specified IAM user</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_list_account_aliases/"> list_account_aliases </a></td>
<td style="text-align: left;">Lists the account alias associated with
the Amazon Web Services account (Note: you can have only one)</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_list_attached_group_policies/"> list_attached_group_policies </a></td>
<td style="text-align: left;">Lists all managed policies that are
attached to the specified IAM group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_list_attached_role_policies/"> list_attached_role_policies </a></td>
<td style="text-align: left;">Lists all managed policies that are
attached to the specified IAM role</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_list_attached_user_policies/"> list_attached_user_policies </a></td>
<td style="text-align: left;">Lists all managed policies that are
attached to the specified IAM user</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_list_entities_for_policy/"> list_entities_for_policy </a></td>
<td style="text-align: left;">Lists all IAM users, groups, and roles
that the specified managed policy is attached to</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_list_group_policies/"> list_group_policies </a></td>
<td style="text-align: left;">Lists the names of the inline policies
that are embedded in the specified IAM group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_list_groups/"> list_groups </a></td>
<td style="text-align: left;">Lists the IAM groups that have the
specified path prefix</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_list_groups_for_user/"> list_groups_for_user </a></td>
<td style="text-align: left;">Lists the IAM groups that the specified
IAM user belongs to</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_list_instance_profiles/"> list_instance_profiles </a></td>
<td style="text-align: left;">Lists the instance profiles that have the
specified path prefix</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_list_instance_profiles_for_role/"> list_instance_profiles_for_role </a></td>
<td style="text-align: left;">Lists the instance profiles that have the
specified associated IAM role</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_list_instance_profile_tags/"> list_instance_profile_tags </a></td>
<td style="text-align: left;">Lists the tags that are attached to the
specified IAM instance profile</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_list_mfa_devices/"> list_mfa_devices </a></td>
<td style="text-align: left;">Lists the MFA devices for an IAM user</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_list_mfa_device_tags/"> list_mfa_device_tags </a></td>
<td style="text-align: left;">Lists the tags that are attached to the
specified IAM virtual multi-factor authentication (MFA) device</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_list_open_id_connect_providers/"> list_open_id_connect_providers </a></td>
<td style="text-align: left;">Lists information about the IAM OpenID
Connect (OIDC) provider resource objects defined in the Amazon Web
Services account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_list_open_id_connect_provider_tags/"> list_open_id_connect_provider_tags </a></td>
<td style="text-align: left;">Lists the tags that are attached to the
specified OpenID Connect (OIDC)-compatible identity provider</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_list_policies/"> list_policies </a></td>
<td style="text-align: left;">Lists all the managed policies that are
available in your Amazon Web Services account, including your own
customer-defined managed policies and all Amazon Web Services managed
policies</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_list_policies_granting_service_access/"> list_policies_granting_service_access </a></td>
<td style="text-align: left;">Retrieves a list of policies that the IAM
identity (user, group, or role) can use to access each specified
service</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_list_policy_tags/"> list_policy_tags </a></td>
<td style="text-align: left;">Lists the tags that are attached to the
specified IAM customer managed policy</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_list_policy_versions/"> list_policy_versions </a></td>
<td style="text-align: left;">Lists information about the versions of
the specified managed policy, including the version that is currently
set as the policy's default version</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_list_role_policies/"> list_role_policies </a></td>
<td style="text-align: left;">Lists the names of the inline policies
that are embedded in the specified IAM role</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_list_roles/"> list_roles </a></td>
<td style="text-align: left;">Lists the IAM roles that have the
specified path prefix</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_list_role_tags/"> list_role_tags </a></td>
<td style="text-align: left;">Lists the tags that are attached to the
specified role</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_list_saml_providers/"> list_saml_providers </a></td>
<td style="text-align: left;">Lists the SAML provider resource objects
defined in IAM in the account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_list_saml_provider_tags/"> list_saml_provider_tags </a></td>
<td style="text-align: left;">Lists the tags that are attached to the
specified Security Assertion Markup Language (SAML) identity
provider</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_list_server_certificates/"> list_server_certificates </a></td>
<td style="text-align: left;">Lists the server certificates stored in
IAM that have the specified path prefix</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_list_server_certificate_tags/"> list_server_certificate_tags </a></td>
<td style="text-align: left;">Lists the tags that are attached to the
specified IAM server certificate</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_list_service_specific_credentials/"> list_service_specific_credentials </a></td>
<td style="text-align: left;">Returns information about the
service-specific credentials associated with the specified IAM user</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_list_signing_certificates/"> list_signing_certificates </a></td>
<td style="text-align: left;">Returns information about the signing
certificates associated with the specified IAM user</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_list_ssh_public_keys/"> list_ssh_public_keys </a></td>
<td style="text-align: left;">Returns information about the SSH public
keys associated with the specified IAM user</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_list_user_policies/"> list_user_policies </a></td>
<td style="text-align: left;">Lists the names of the inline policies
embedded in the specified IAM user</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_list_users/"> list_users </a></td>
<td style="text-align: left;">Lists the IAM users that have the
specified path prefix</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_list_user_tags/"> list_user_tags </a></td>
<td style="text-align: left;">Lists the tags that are attached to the
specified IAM user</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_list_virtual_mfa_devices/"> list_virtual_mfa_devices </a></td>
<td style="text-align: left;">Lists the virtual MFA devices defined in
the Amazon Web Services account by assignment status</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_put_group_policy/"> put_group_policy </a></td>
<td style="text-align: left;">Adds or updates an inline policy document
that is embedded in the specified IAM group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_put_role_permissions_boundary/"> put_role_permissions_boundary </a></td>
<td style="text-align: left;">Adds or updates the policy that is
specified as the IAM role's permissions boundary</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_put_role_policy/"> put_role_policy </a></td>
<td style="text-align: left;">Adds or updates an inline policy document
that is embedded in the specified IAM role</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_put_user_permissions_boundary/"> put_user_permissions_boundary </a></td>
<td style="text-align: left;">Adds or updates the policy that is
specified as the IAM user's permissions boundary</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_put_user_policy/"> put_user_policy </a></td>
<td style="text-align: left;">Adds or updates an inline policy document
that is embedded in the specified IAM user</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../iam_remove_client_id_from_open_id_connect_provider/"> remove_client_id_from_open_id_connect_provider </a></td>
<td style="text-align: left;">Removes the specified client ID (also
known as audience) from the list of client IDs registered for the
specified IAM OpenID Connect (OIDC) provider resource object</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_remove_role_from_instance_profile/"> remove_role_from_instance_profile </a></td>
<td style="text-align: left;">Removes the specified IAM role from the
specified EC2 instance profile</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_remove_user_from_group/"> remove_user_from_group </a></td>
<td style="text-align: left;">Removes the specified user from the
specified group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_reset_service_specific_credential/"> reset_service_specific_credential </a></td>
<td style="text-align: left;">Resets the password for a service-specific
credential</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_resync_mfa_device/"> resync_mfa_device </a></td>
<td style="text-align: left;">Synchronizes the specified MFA device with
its IAM resource object on the Amazon Web Services servers</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_set_default_policy_version/"> set_default_policy_version </a></td>
<td style="text-align: left;">Sets the specified version of the
specified policy as the policy's default (operative) version</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../iam_set_security_token_service_preferences/"> set_security_token_service_preferences </a></td>
<td style="text-align: left;">Sets the specified version of the global
endpoint token as the token version used for the Amazon Web Services
account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_simulate_custom_policy/"> simulate_custom_policy </a></td>
<td style="text-align: left;">Simulate how a set of IAM policies and
optionally a resource-based policy works with a list of API operations
and Amazon Web Services resources to determine the policies' effective
permissions</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_simulate_principal_policy/"> simulate_principal_policy </a></td>
<td style="text-align: left;">Simulate how a set of IAM policies
attached to an IAM entity works with a list of API operations and Amazon
Web Services resources to determine the policies' effective
permissions</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_tag_instance_profile/"> tag_instance_profile </a></td>
<td style="text-align: left;">Adds one or more tags to an IAM instance
profile</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_tag_mfa_device/"> tag_mfa_device </a></td>
<td style="text-align: left;">Adds one or more tags to an IAM virtual
multi-factor authentication (MFA) device</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_tag_open_id_connect_provider/"> tag_open_id_connect_provider </a></td>
<td style="text-align: left;">Adds one or more tags to an OpenID Connect
(OIDC)-compatible identity provider</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_tag_policy/"> tag_policy </a></td>
<td style="text-align: left;">Adds one or more tags to an IAM customer
managed policy</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_tag_role/"> tag_role </a></td>
<td style="text-align: left;">Adds one or more tags to an IAM role</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_tag_saml_provider/"> tag_saml_provider </a></td>
<td style="text-align: left;">Adds one or more tags to a Security
Assertion Markup Language (SAML) identity provider</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_tag_server_certificate/"> tag_server_certificate </a></td>
<td style="text-align: left;">Adds one or more tags to an IAM server
certificate</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_tag_user/"> tag_user </a></td>
<td style="text-align: left;">Adds one or more tags to an IAM user</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_untag_instance_profile/"> untag_instance_profile </a></td>
<td style="text-align: left;">Removes the specified tags from the IAM
instance profile</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_untag_mfa_device/"> untag_mfa_device </a></td>
<td style="text-align: left;">Removes the specified tags from the IAM
virtual multi-factor authentication (MFA) device</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_untag_open_id_connect_provider/"> untag_open_id_connect_provider </a></td>
<td style="text-align: left;">Removes the specified tags from the
specified OpenID Connect (OIDC)-compatible identity provider in IAM</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_untag_policy/"> untag_policy </a></td>
<td style="text-align: left;">Removes the specified tags from the
customer managed policy</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_untag_role/"> untag_role </a></td>
<td style="text-align: left;">Removes the specified tags from the
role</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_untag_saml_provider/"> untag_saml_provider </a></td>
<td style="text-align: left;">Removes the specified tags from the
specified Security Assertion Markup Language (SAML) identity provider in
IAM</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_untag_server_certificate/"> untag_server_certificate </a></td>
<td style="text-align: left;">Removes the specified tags from the IAM
server certificate</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_untag_user/"> untag_user </a></td>
<td style="text-align: left;">Removes the specified tags from the
user</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_update_access_key/"> update_access_key </a></td>
<td style="text-align: left;">Changes the status of the specified access
key from Active to Inactive, or vice versa</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_update_account_password_policy/"> update_account_password_policy </a></td>
<td style="text-align: left;">Updates the password policy settings for
the Amazon Web Services account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_update_assume_role_policy/"> update_assume_role_policy </a></td>
<td style="text-align: left;">Updates the policy that grants an IAM
entity permission to assume a role</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_update_group/"> update_group </a></td>
<td style="text-align: left;">Updates the name and/or the path of the
specified IAM group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_update_login_profile/"> update_login_profile </a></td>
<td style="text-align: left;">Changes the password for the specified IAM
user</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../iam_update_open_id_connect_provider_thumbprint/"> update_open_id_connect_provider_thumbprint </a></td>
<td style="text-align: left;">Replaces the existing list of server
certificate thumbprints associated with an OpenID Connect (OIDC)
provider resource object with a new list of thumbprints</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_update_role/"> update_role </a></td>
<td style="text-align: left;">Updates the description or maximum session
duration setting of a role</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_update_role_description/"> update_role_description </a></td>
<td style="text-align: left;">Use UpdateRole instead</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_update_saml_provider/"> update_saml_provider </a></td>
<td style="text-align: left;">Updates the metadata document for an
existing SAML provider resource object</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_update_server_certificate/"> update_server_certificate </a></td>
<td style="text-align: left;">Updates the name and/or the path of the
specified server certificate stored in IAM</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_update_service_specific_credential/"> update_service_specific_credential </a></td>
<td style="text-align: left;">Sets the status of a service-specific
credential to Active or Inactive</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_update_signing_certificate/"> update_signing_certificate </a></td>
<td style="text-align: left;">Changes the status of the specified user
signing certificate from active to disabled, or vice versa</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_update_ssh_public_key/"> update_ssh_public_key </a></td>
<td style="text-align: left;">Sets the status of an IAM user's SSH
public key to active or inactive</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_update_user/"> update_user </a></td>
<td style="text-align: left;">Updates the name and/or the path of the
specified IAM user</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_upload_server_certificate/"> upload_server_certificate </a></td>
<td style="text-align: left;">Uploads a server certificate entity for
the Amazon Web Services account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iam_upload_signing_certificate/"> upload_signing_certificate </a></td>
<td style="text-align: left;">Uploads an X</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iam_upload_ssh_public_key/"> upload_ssh_public_key </a></td>
<td style="text-align: left;">Uploads an SSH public key and associates
it with the specified IAM user</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- iam()
    # The following add-client-id-to-open-id-connect-provider command adds the
    # client ID my-application-ID to the OIDC provider named
    # server.example.com:
    svc$add_client_id_to_open_id_connect_provider(
      ClientID = "my-application-ID",
      OpenIDConnectProviderArn = "arn:aws:iam::123456789012:oidc-provider/server.example.com"
    )

    ## End(Not run)
