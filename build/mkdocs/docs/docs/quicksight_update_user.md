<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_update_user</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates an Amazon QuickSight user

### Description

Updates an Amazon QuickSight user.

### Usage

    quicksight_update_user(UserName, AwsAccountId, Namespace, Email, Role,
      CustomPermissionsName, UnapplyCustomPermissions,
      ExternalLoginFederationProviderType, CustomFederationProviderUrl,
      ExternalLoginId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="quicksight_update_user_:_UserName">UserName</code></td>
<td><p>[required] The Amazon QuickSight user name that you want to
update.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_update_user_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID for the Amazon Web Services account that the
user is in. Currently, you use the ID for the Amazon Web Services
account that contains your Amazon QuickSight account.</p></td>
</tr>
<tr class="odd">
<td><code id="quicksight_update_user_:_Namespace">Namespace</code></td>
<td><p>[required] The namespace. Currently, you should set this to
<code>default</code>.</p></td>
</tr>
<tr class="even">
<td><code id="quicksight_update_user_:_Email">Email</code></td>
<td><p>[required] The email address of the user that you want to
update.</p></td>
</tr>
<tr class="odd">
<td><code id="quicksight_update_user_:_Role">Role</code></td>
<td><p>[required] The Amazon QuickSight role of the user. The role can
be one of the following default security cohorts:</p>
<ul>
<li><p><code>READER</code>: A user who has read-only access to
dashboards.</p></li>
<li><p><code>AUTHOR</code>: A user who can create data sources,
datasets, analyses, and dashboards.</p></li>
<li><p><code>ADMIN</code>: A user who is an author, who can also manage
Amazon QuickSight settings.</p></li>
</ul>
<p>The name of the Amazon QuickSight role is invisible to the user
except for the console screens dealing with permissions.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_update_user_:_CustomPermissionsName">CustomPermissionsName</code></td>
<td><p>(Enterprise edition only) The name of the custom permissions
profile that you want to assign to this user. Customized permissions
allows you to control a user's access by restricting access the
following operations:</p>
<ul>
<li><p>Create and update data sources</p></li>
<li><p>Create and update datasets</p></li>
<li><p>Create and update email reports</p></li>
<li><p>Subscribe to email reports</p></li>
</ul>
<p>A set of custom permissions includes any combination of these
restrictions. Currently, you need to create the profile names for custom
permission sets by using the Amazon QuickSight console. Then, you use
the <code>register_user</code> API operation to assign the named set of
permissions to a Amazon QuickSight user.</p>
<p>Amazon QuickSight custom permissions are applied through IAM
policies. Therefore, they override the permissions typically granted by
assigning Amazon QuickSight users to one of the default security cohorts
in Amazon QuickSight (admin, author, reader).</p>
<p>This feature is available only to Amazon QuickSight Enterprise
edition subscriptions.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_update_user_:_UnapplyCustomPermissions">UnapplyCustomPermissions</code></td>
<td><p>A flag that you use to indicate that you want to remove all
custom permissions from this user. Using this parameter resets the user
to the state it was in before a custom permissions profile was applied.
This parameter defaults to NULL and it doesn't accept any other
value.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_update_user_:_ExternalLoginFederationProviderType">ExternalLoginFederationProviderType</code></td>
<td><p>The type of supported external login provider that provides
identity to let a user federate into Amazon QuickSight with an
associated Identity and Access Management(IAM) role. The type of
supported external login provider can be one of the following.</p>
<ul>
<li><p><code>COGNITO</code>: Amazon Cognito. The provider URL is
cognito-identity.amazonaws.com. When choosing the <code>COGNITO</code>
provider type, don’t use the "CustomFederationProviderUrl" parameter
which is only needed when the external provider is custom.</p></li>
<li><p><code>CUSTOM_OIDC</code>: Custom OpenID Connect (OIDC) provider.
When choosing <code>CUSTOM_OIDC</code> type, use the
<code>CustomFederationProviderUrl</code> parameter to provide the custom
OIDC provider URL.</p></li>
<li><p><code>NONE</code>: This clears all the previously saved external
login information for a user. Use the <code>describe_user</code> API
operation to check the external login information.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_update_user_:_CustomFederationProviderUrl">CustomFederationProviderUrl</code></td>
<td><p>The URL of the custom OpenID Connect (OIDC) provider that
provides identity to let a user federate into Amazon QuickSight with an
associated Identity and Access Management(IAM) role. This parameter
should only be used when
<code>ExternalLoginFederationProviderType</code> parameter is set to
<code>CUSTOM_OIDC</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_update_user_:_ExternalLoginId">ExternalLoginId</code></td>
<td><p>The identity ID for a user in the external login
provider.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      User = list(
        Arn = "string",
        UserName = "string",
        Email = "string",
        Role = "ADMIN"|"AUTHOR"|"READER"|"RESTRICTED_AUTHOR"|"RESTRICTED_READER",
        IdentityType = "IAM"|"QUICKSIGHT",
        Active = TRUE|FALSE,
        PrincipalId = "string",
        CustomPermissionsName = "string",
        ExternalLoginFederationProviderType = "string",
        ExternalLoginFederationProviderUrl = "string",
        ExternalLoginId = "string"
      ),
      RequestId = "string",
      Status = 123
    )

### Request syntax

    svc$update_user(
      UserName = "string",
      AwsAccountId = "string",
      Namespace = "string",
      Email = "string",
      Role = "ADMIN"|"AUTHOR"|"READER"|"RESTRICTED_AUTHOR"|"RESTRICTED_READER",
      CustomPermissionsName = "string",
      UnapplyCustomPermissions = TRUE|FALSE,
      ExternalLoginFederationProviderType = "string",
      CustomFederationProviderUrl = "string",
      ExternalLoginId = "string"
    )
