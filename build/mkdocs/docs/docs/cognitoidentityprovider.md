<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon Cognito Identity Provider

### Description

Using the Amazon Cognito user pools API, you can create a user pool to
manage directories and users. You can authenticate a user to obtain
tokens related to user identity and access policies.

This API reference provides information about user pools in Amazon
Cognito user pools.

For more information, see the [Amazon Cognito
Documentation](https://docs.aws.amazon.com/cognito/latest/developerguide/what-is-amazon-cognito.html).

### Usage

    cognitoidentityprovider(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cognitoidentityprovider_:_config">config</code></td>
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

    svc <- cognitoidentityprovider(
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
<td style="text-align: left;"><a href="../cognitoidentityprovider_add_custom_attributes/"> add_custom_attributes </a></td>
<td style="text-align: left;">Adds additional user attributes to the
user pool schema</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cognitoidentityprovider_admin_add_user_to_group/"> admin_add_user_to_group </a></td>
<td style="text-align: left;">Adds the specified user to the specified
group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cognitoidentityprovider_admin_confirm_sign_up/"> admin_confirm_sign_up </a></td>
<td style="text-align: left;">Confirms user registration as an admin
without using a confirmation code</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cognitoidentityprovider_admin_create_user/"> admin_create_user </a></td>
<td style="text-align: left;">Creates a new user in the specified user
pool</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cognitoidentityprovider_admin_delete_user/"> admin_delete_user </a></td>
<td style="text-align: left;">Deletes a user as an administrator</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cognitoidentityprovider_admin_delete_user_attributes/"> admin_delete_user_attributes </a></td>
<td style="text-align: left;">Deletes the user attributes in a user pool
as an administrator</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cognitoidentityprovider_admin_disable_provider_for_user/"> admin_disable_provider_for_user </a></td>
<td style="text-align: left;">Prevents the user from signing in with the
specified external (SAML or social) identity provider (IdP)</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cognitoidentityprovider_admin_disable_user/"> admin_disable_user </a></td>
<td style="text-align: left;">Deactivates a user and revokes all access
tokens for the user</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cognitoidentityprovider_admin_enable_user/"> admin_enable_user </a></td>
<td style="text-align: left;">Enables the specified user as an
administrator</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cognitoidentityprovider_admin_forget_device/"> admin_forget_device </a></td>
<td style="text-align: left;">Forgets the device, as an
administrator</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cognitoidentityprovider_admin_get_device/"> admin_get_device </a></td>
<td style="text-align: left;">Gets the device, as an administrator</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cognitoidentityprovider_admin_get_user/"> admin_get_user </a></td>
<td style="text-align: left;">Gets the specified user by user name in a
user pool as an administrator</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cognitoidentityprovider_admin_initiate_auth/"> admin_initiate_auth </a></td>
<td style="text-align: left;">Initiates the authentication flow, as an
administrator</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cognitoidentityprovider_admin_link_provider_for_user/"> admin_link_provider_for_user </a></td>
<td style="text-align: left;">Links an existing user account in a user
pool (DestinationUser) to an identity from an external IdP (SourceUser)
based on a specified attribute name and value from the external IdP</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cognitoidentityprovider_admin_list_devices/"> admin_list_devices </a></td>
<td style="text-align: left;">Lists devices, as an administrator</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cognitoidentityprovider_admin_list_groups_for_user/"> admin_list_groups_for_user </a></td>
<td style="text-align: left;">Lists the groups that the user belongs
to</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cognitoidentityprovider_admin_list_user_auth_events/"> admin_list_user_auth_events </a></td>
<td style="text-align: left;">A history of user activity and any risks
detected as part of Amazon Cognito advanced security</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cognitoidentityprovider_admin_remove_user_from_group/"> admin_remove_user_from_group </a></td>
<td style="text-align: left;">Removes the specified user from the
specified group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cognitoidentityprovider_admin_reset_user_password/"> admin_reset_user_password </a></td>
<td style="text-align: left;">Resets the specified user's password in a
user pool as an administrator</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cognitoidentityprovider_admin_respond_to_auth_challenge/"> admin_respond_to_auth_challenge </a></td>
<td style="text-align: left;">Responds to an authentication challenge,
as an administrator</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cognitoidentityprovider_admin_set_user_mfa_preference/"> admin_set_user_mfa_preference </a></td>
<td style="text-align: left;">The user's multi-factor authentication
(MFA) preference, including which MFA options are activated, and if any
are preferred</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cognitoidentityprovider_admin_set_user_password/"> admin_set_user_password </a></td>
<td style="text-align: left;">Sets the specified user's password in a
user pool as an administrator</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cognitoidentityprovider_admin_set_user_settings/"> admin_set_user_settings </a></td>
<td style="text-align: left;">This action is no longer supported</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cognitoidentityprovider_admin_update_auth_event_feedback/"> admin_update_auth_event_feedback </a></td>
<td style="text-align: left;">Provides feedback for an authentication
event indicating if it was from a valid user</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cognitoidentityprovider_admin_update_device_status/"> admin_update_device_status </a></td>
<td style="text-align: left;">Updates the device status as an
administrator</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cognitoidentityprovider_admin_update_user_attributes/"> admin_update_user_attributes </a></td>
<td style="text-align: left;">Updates the specified user's attributes,
including developer attributes, as an administrator</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cognitoidentityprovider_admin_user_global_sign_out/"> admin_user_global_sign_out </a></td>
<td style="text-align: left;">Signs out a user from all devices</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cognitoidentityprovider_associate_software_token/"> associate_software_token </a></td>
<td style="text-align: left;">Begins setup of time-based one-time
password (TOTP) multi-factor authentication (MFA) for a user, with a
unique private key that Amazon Cognito generates and returns in the API
response</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cognitoidentityprovider_change_password/"> change_password </a></td>
<td style="text-align: left;">Changes the password for a specified user
in a user pool</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cognitoidentityprovider_confirm_device/"> confirm_device </a></td>
<td style="text-align: left;">Confirms tracking of the device</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cognitoidentityprovider_confirm_forgot_password/"> confirm_forgot_password </a></td>
<td style="text-align: left;">Allows a user to enter a confirmation code
to reset a forgotten password</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cognitoidentityprovider_confirm_sign_up/"> confirm_sign_up </a></td>
<td style="text-align: left;">Confirms registration of a new user</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cognitoidentityprovider_create_group/"> create_group </a></td>
<td style="text-align: left;">Creates a new group in the specified user
pool</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cognitoidentityprovider_create_identity_provider/"> create_identity_provider </a></td>
<td style="text-align: left;">Creates an IdP for a user pool</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cognitoidentityprovider_create_resource_server/"> create_resource_server </a></td>
<td style="text-align: left;">Creates a new OAuth2</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cognitoidentityprovider_create_user_import_job/"> create_user_import_job </a></td>
<td style="text-align: left;">Creates the user import job</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cognitoidentityprovider_create_user_pool/"> create_user_pool </a></td>
<td style="text-align: left;">Creates a new Amazon Cognito user pool and
sets the password policy for the pool</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cognitoidentityprovider_create_user_pool_client/"> create_user_pool_client </a></td>
<td style="text-align: left;">Creates the user pool client</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cognitoidentityprovider_create_user_pool_domain/"> create_user_pool_domain </a></td>
<td style="text-align: left;">Creates a new domain for a user pool</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cognitoidentityprovider_delete_group/"> delete_group </a></td>
<td style="text-align: left;">Deletes a group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cognitoidentityprovider_delete_identity_provider/"> delete_identity_provider </a></td>
<td style="text-align: left;">Deletes an IdP for a user pool</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cognitoidentityprovider_delete_resource_server/"> delete_resource_server </a></td>
<td style="text-align: left;">Deletes a resource server</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cognitoidentityprovider_delete_user/"> delete_user </a></td>
<td style="text-align: left;">Allows a user to delete himself or
herself</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cognitoidentityprovider_delete_user_attributes/"> delete_user_attributes </a></td>
<td style="text-align: left;">Deletes the attributes for a user</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cognitoidentityprovider_delete_user_pool/"> delete_user_pool </a></td>
<td style="text-align: left;">Deletes the specified Amazon Cognito user
pool</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cognitoidentityprovider_delete_user_pool_client/"> delete_user_pool_client </a></td>
<td style="text-align: left;">Allows the developer to delete the user
pool client</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cognitoidentityprovider_delete_user_pool_domain/"> delete_user_pool_domain </a></td>
<td style="text-align: left;">Deletes a domain for a user pool</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cognitoidentityprovider_describe_identity_provider/"> describe_identity_provider </a></td>
<td style="text-align: left;">Gets information about a specific IdP</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cognitoidentityprovider_describe_resource_server/"> describe_resource_server </a></td>
<td style="text-align: left;">Describes a resource server</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cognitoidentityprovider_describe_risk_configuration/"> describe_risk_configuration </a></td>
<td style="text-align: left;">Describes the risk configuration</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cognitoidentityprovider_describe_user_import_job/"> describe_user_import_job </a></td>
<td style="text-align: left;">Describes the user import job</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cognitoidentityprovider_describe_user_pool/"> describe_user_pool </a></td>
<td style="text-align: left;">Returns the configuration information and
metadata of the specified user pool</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cognitoidentityprovider_describe_user_pool_client/"> describe_user_pool_client </a></td>
<td style="text-align: left;">Client method for returning the
configuration information and metadata of the specified user pool app
client</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cognitoidentityprovider_describe_user_pool_domain/"> describe_user_pool_domain </a></td>
<td style="text-align: left;">Gets information about a domain</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cognitoidentityprovider_forget_device/"> forget_device </a></td>
<td style="text-align: left;">Forgets the specified device</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cognitoidentityprovider_forgot_password/"> forgot_password </a></td>
<td style="text-align: left;">Calling this API causes a message to be
sent to the end user with a confirmation code that is required to change
the user's password</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cognitoidentityprovider_get_csv_header/"> get_csv_header </a></td>
<td style="text-align: left;">Gets the header information for the
comma-separated value (CSV) file to be used as input for the user import
job</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cognitoidentityprovider_get_device/"> get_device </a></td>
<td style="text-align: left;">Gets the device</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cognitoidentityprovider_get_group/"> get_group </a></td>
<td style="text-align: left;">Gets a group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cognitoidentityprovider_get_identity_provider_by_identifier/"> get_identity_provider_by_identifier </a></td>
<td style="text-align: left;">Gets the specified IdP</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cognitoidentityprovider_get_signing_certificate/"> get_signing_certificate </a></td>
<td style="text-align: left;">This method takes a user pool ID, and
returns the signing certificate</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cognitoidentityprovider_get_ui_customization/"> get_ui_customization </a></td>
<td style="text-align: left;">Gets the user interface (UI) Customization
information for a particular app client's app UI, if any such
information exists for the client</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cognitoidentityprovider_get_user/"> get_user </a></td>
<td style="text-align: left;">Gets the user attributes and metadata for
a user</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cognitoidentityprovider_get_user_attribute_verification_code/"> get_user_attribute_verification_code </a></td>
<td style="text-align: left;">Generates a user attribute verification
code for the specified attribute name</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cognitoidentityprovider_get_user_pool_mfa_config/"> get_user_pool_mfa_config </a></td>
<td style="text-align: left;">Gets the user pool multi-factor
authentication (MFA) configuration</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cognitoidentityprovider_global_sign_out/"> global_sign_out </a></td>
<td style="text-align: left;">Signs out users from all devices</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cognitoidentityprovider_initiate_auth/"> initiate_auth </a></td>
<td style="text-align: left;">Initiates sign-in for a user in the Amazon
Cognito user directory</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cognitoidentityprovider_list_devices/"> list_devices </a></td>
<td style="text-align: left;">Lists the sign-in devices that Amazon
Cognito has registered to the current user</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cognitoidentityprovider_list_groups/"> list_groups </a></td>
<td style="text-align: left;">Lists the groups associated with a user
pool</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cognitoidentityprovider_list_identity_providers/"> list_identity_providers </a></td>
<td style="text-align: left;">Lists information about all IdPs for a
user pool</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cognitoidentityprovider_list_resource_servers/"> list_resource_servers </a></td>
<td style="text-align: left;">Lists the resource servers for a user
pool</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cognitoidentityprovider_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Lists the tags that are assigned to an
Amazon Cognito user pool</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cognitoidentityprovider_list_user_import_jobs/"> list_user_import_jobs </a></td>
<td style="text-align: left;">Lists the user import jobs</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cognitoidentityprovider_list_user_pool_clients/"> list_user_pool_clients </a></td>
<td style="text-align: left;">Lists the clients that have been created
for the specified user pool</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cognitoidentityprovider_list_user_pools/"> list_user_pools </a></td>
<td style="text-align: left;">Lists the user pools associated with an
Amazon Web Services account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cognitoidentityprovider_list_users/"> list_users </a></td>
<td style="text-align: left;">Lists the users in the Amazon Cognito user
pool</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cognitoidentityprovider_list_users_in_group/"> list_users_in_group </a></td>
<td style="text-align: left;">Lists the users in the specified
group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cognitoidentityprovider_resend_confirmation_code/"> resend_confirmation_code </a></td>
<td style="text-align: left;">Resends the confirmation (for confirmation
of registration) to a specific user in the user pool</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cognitoidentityprovider_respond_to_auth_challenge/"> respond_to_auth_challenge </a></td>
<td style="text-align: left;">Responds to the authentication
challenge</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cognitoidentityprovider_revoke_token/"> revoke_token </a></td>
<td style="text-align: left;">Revokes all of the access tokens generated
by, and at the same time as, the specified refresh token</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cognitoidentityprovider_set_risk_configuration/"> set_risk_configuration </a></td>
<td style="text-align: left;">Configures actions on detected risks</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cognitoidentityprovider_set_ui_customization/"> set_ui_customization </a></td>
<td style="text-align: left;">Sets the user interface (UI) customization
information for a user pool's built-in app UI</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cognitoidentityprovider_set_user_mfa_preference/"> set_user_mfa_preference </a></td>
<td style="text-align: left;">Set the user's multi-factor authentication
(MFA) method preference, including which MFA factors are activated and
if any are preferred</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cognitoidentityprovider_set_user_pool_mfa_config/"> set_user_pool_mfa_config </a></td>
<td style="text-align: left;">Sets the user pool multi-factor
authentication (MFA) configuration</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cognitoidentityprovider_set_user_settings/"> set_user_settings </a></td>
<td style="text-align: left;">This action is no longer supported</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cognitoidentityprovider_sign_up/"> sign_up </a></td>
<td style="text-align: left;">Registers the user in the specified user
pool and creates a user name, password, and user attributes</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cognitoidentityprovider_start_user_import_job/"> start_user_import_job </a></td>
<td style="text-align: left;">Starts the user import</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cognitoidentityprovider_stop_user_import_job/"> stop_user_import_job </a></td>
<td style="text-align: left;">Stops the user import job</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cognitoidentityprovider_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Assigns a set of tags to an Amazon Cognito
user pool</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cognitoidentityprovider_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes the specified tags from an Amazon
Cognito user pool</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cognitoidentityprovider_update_auth_event_feedback/"> update_auth_event_feedback </a></td>
<td style="text-align: left;">Provides the feedback for an
authentication event, whether it was from a valid user or not</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cognitoidentityprovider_update_device_status/"> update_device_status </a></td>
<td style="text-align: left;">Updates the device status</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cognitoidentityprovider_update_group/"> update_group </a></td>
<td style="text-align: left;">Updates the specified group with the
specified attributes</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cognitoidentityprovider_update_identity_provider/"> update_identity_provider </a></td>
<td style="text-align: left;">Updates IdP information for a user
pool</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cognitoidentityprovider_update_resource_server/"> update_resource_server </a></td>
<td style="text-align: left;">Updates the name and scopes of resource
server</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cognitoidentityprovider_update_user_attributes/"> update_user_attributes </a></td>
<td style="text-align: left;">Allows a user to update a specific
attribute (one at a time)</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cognitoidentityprovider_update_user_pool/"> update_user_pool </a></td>
<td style="text-align: left;">Updates the specified user pool with the
specified attributes</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cognitoidentityprovider_update_user_pool_client/"> update_user_pool_client </a></td>
<td style="text-align: left;">Updates the specified user pool app client
with the specified attributes</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cognitoidentityprovider_update_user_pool_domain/"> update_user_pool_domain </a></td>
<td style="text-align: left;">Updates the Secure Sockets Layer (SSL)
certificate for the custom domain for your user pool</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cognitoidentityprovider_verify_software_token/"> verify_software_token </a></td>
<td style="text-align: left;">Use this API to register a user's entered
time-based one-time password (TOTP) code and mark the user's software
token MFA status as "verified" if successful</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cognitoidentityprovider_verify_user_attribute/"> verify_user_attribute </a></td>
<td style="text-align: left;">Verifies the specified user attributes in
the user pool</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- cognitoidentityprovider()
    svc$add_custom_attributes(
      Foo = 123
    )

    ## End(Not run)
