<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentity</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon Cognito Identity

### Description

Amazon Cognito Federated Identities

Amazon Cognito Federated Identities is a web service that delivers
scoped temporary credentials to mobile devices and other untrusted
environments. It uniquely identifies a device and supplies the user with
a consistent identity over the lifetime of an application.

Using Amazon Cognito Federated Identities, you can enable authentication
with one or more third-party identity providers (Facebook, Google, or
Login with Amazon) or an Amazon Cognito user pool, and you can also
choose to support unauthenticated access from your app. Cognito delivers
a unique identifier for each user and acts as an OpenID token provider
trusted by AWS Security Token Service (STS) to access temporary,
limited-privilege AWS credentials.

For a description of the authentication flow from the Amazon Cognito
Developer Guide see [Authentication
Flow](https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flow.html).

For more information see [Amazon Cognito Federated
Identities](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-identity.html).

### Usage

    cognitoidentity(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cognitoidentity_:_config">config</code></td>
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

    svc <- cognitoidentity(
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
<td style="text-align: left;"><a href="../cognitoidentity_create_identity_pool/"> create_identity_pool </a></td>
<td style="text-align: left;">Creates a new identity pool</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cognitoidentity_delete_identities/"> delete_identities </a></td>
<td style="text-align: left;">Deletes identities from an identity
pool</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cognitoidentity_delete_identity_pool/"> delete_identity_pool </a></td>
<td style="text-align: left;">Deletes an identity pool</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cognitoidentity_describe_identity/"> describe_identity </a></td>
<td style="text-align: left;">Returns metadata related to the given
identity, including when the identity was created and any associated
linked logins</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cognitoidentity_describe_identity_pool/"> describe_identity_pool </a></td>
<td style="text-align: left;">Gets details about a particular identity
pool, including the pool name, ID description, creation date, and
current number of users</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cognitoidentity_get_credentials_for_identity/"> get_credentials_for_identity </a></td>
<td style="text-align: left;">Returns credentials for the provided
identity ID</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cognitoidentity_get_id/"> get_id </a></td>
<td style="text-align: left;">Generates (or retrieves) a Cognito ID</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cognitoidentity_get_identity_pool_roles/"> get_identity_pool_roles </a></td>
<td style="text-align: left;">Gets the roles for an identity pool</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cognitoidentity_get_open_id_token/"> get_open_id_token </a></td>
<td style="text-align: left;">Gets an OpenID token, using a known
Cognito ID</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../cognitoidentity_get_open_id_token_for_developer_identity/"> get_open_id_token_for_developer_identity </a></td>
<td style="text-align: left;">Registers (or retrieves) a Cognito
IdentityId and an OpenID Connect token for a user authenticated by your
backend authentication process</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cognitoidentity_get_principal_tag_attribute_map/"> get_principal_tag_attribute_map </a></td>
<td style="text-align: left;">Use GetPrincipalTagAttributeMap to list
all mappings between PrincipalTags and user attributes</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cognitoidentity_list_identities/"> list_identities </a></td>
<td style="text-align: left;">Lists the identities in an identity
pool</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cognitoidentity_list_identity_pools/"> list_identity_pools </a></td>
<td style="text-align: left;">Lists all of the Cognito identity pools
registered for your account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cognitoidentity_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Lists the tags that are assigned to an
Amazon Cognito identity pool</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cognitoidentity_lookup_developer_identity/"> lookup_developer_identity </a></td>
<td style="text-align: left;">Retrieves the IdentityID associated with a
DeveloperUserIdentifier or the list of DeveloperUserIdentifier values
associated with an IdentityId for an existing identity</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cognitoidentity_merge_developer_identities/"> merge_developer_identities </a></td>
<td style="text-align: left;">Merges two users having different
IdentityIds, existing in the same identity pool, and identified by the
same developer provider</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cognitoidentity_set_identity_pool_roles/"> set_identity_pool_roles </a></td>
<td style="text-align: left;">Sets the roles for an identity pool</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cognitoidentity_set_principal_tag_attribute_map/"> set_principal_tag_attribute_map </a></td>
<td style="text-align: left;">You can use this operation to use default
(username and clientID) attribute or custom attribute mappings</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cognitoidentity_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Assigns a set of tags to the specified
Amazon Cognito identity pool</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cognitoidentity_unlink_developer_identity/"> unlink_developer_identity </a></td>
<td style="text-align: left;">Unlinks a DeveloperUserIdentifier from an
existing identity</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cognitoidentity_unlink_identity/"> unlink_identity </a></td>
<td style="text-align: left;">Unlinks a federated identity from an
existing account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cognitoidentity_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes the specified tags from the
specified Amazon Cognito identity pool</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cognitoidentity_update_identity_pool/"> update_identity_pool </a></td>
<td style="text-align: left;">Updates an identity pool</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- cognitoidentity()
    svc$create_identity_pool(
      Foo = 123
    )

    ## End(Not run)
