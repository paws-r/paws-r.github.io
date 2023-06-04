<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_register_user</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an Amazon QuickSight user whose identity is associated with the Identity and Access Management (IAM) identity or role specified in the request

### Description

Creates an Amazon QuickSight user whose identity is associated with the
Identity and Access Management (IAM) identity or role specified in the
request. When you register a new user from the Amazon QuickSight API,
Amazon QuickSight generates a registration URL. The user accesses this
registration URL to create their account. Amazon QuickSight doesn't send
a registration email to users who are registered from the Amazon
QuickSight API. If you want new users to receive a registration email,
then add those users in the Amazon QuickSight console. For more
information on registering a new user in the Amazon QuickSight console,
see [Inviting users to access Amazon
QuickSight](https://docs.aws.amazon.com/quicksight/latest/user/managing-users.html#inviting-users).

### Usage

    quicksight_register_user(IdentityType, Email, UserRole, IamArn,
      SessionName, AwsAccountId, Namespace, UserName, CustomPermissionsName,
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
<td><code
id="quicksight_register_user_:_IdentityType">IdentityType</code></td>
<td><p>[required] Amazon QuickSight supports several ways of managing
the identity of users. This parameter accepts two values:</p>
<ul>
<li><p><code>IAM</code>: A user whose identity maps to an existing IAM
user or role.</p></li>
<li><p><code>QUICKSIGHT</code>: A user whose identity is owned and
managed internally by Amazon QuickSight.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code id="quicksight_register_user_:_Email">Email</code></td>
<td><p>[required] The email address of the user that you want to
register.</p></td>
</tr>
<tr class="odd">
<td><code id="quicksight_register_user_:_UserRole">UserRole</code></td>
<td><p>[required] The Amazon QuickSight role for the user. The user role
can be one of the following:</p>
<ul>
<li><p><code>READER</code>: A user who has read-only access to
dashboards.</p></li>
<li><p><code>AUTHOR</code>: A user who can create data sources,
datasets, analyses, and dashboards.</p></li>
<li><p><code>ADMIN</code>: A user who is an author, who can also manage
Amazon QuickSight settings.</p></li>
<li><p><code>RESTRICTED_READER</code>: This role isn't currently
available for use.</p></li>
<li><p><code>RESTRICTED_AUTHOR</code>: This role isn't currently
available for use.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code id="quicksight_register_user_:_IamArn">IamArn</code></td>
<td><p>The ARN of the IAM user or role that you are registering with
Amazon QuickSight.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_register_user_:_SessionName">SessionName</code></td>
<td><p>You need to use this parameter only when you register one or more
users using an assumed IAM role. You don't need to provide the session
name for other scenarios, for example when you are registering an IAM
user or an Amazon QuickSight user. You can register multiple users using
the same IAM role if each user has a different session name. For more
information on assuming IAM roles, see <a
href="https://docs.aws.amazon.com/cli/latest/reference/sts/assume-role.html"><code>assume-role</code></a>
in the <em>CLI Reference.</em></p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_register_user_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID for the Amazon Web Services account that the
user is in. Currently, you use the ID for the Amazon Web Services
account that contains your Amazon QuickSight account.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_register_user_:_Namespace">Namespace</code></td>
<td><p>[required] The namespace. Currently, you should set this to
<code>default</code>.</p></td>
</tr>
<tr class="even">
<td><code id="quicksight_register_user_:_UserName">UserName</code></td>
<td><p>The Amazon QuickSight user name that you want to create for the
user you are registering.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_register_user_:_CustomPermissionsName">CustomPermissionsName</code></td>
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
<p>To add custom permissions to an existing user, use
<code>update_user</code> instead.</p>
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
<tr class="even">
<td><code
id="quicksight_register_user_:_ExternalLoginFederationProviderType">ExternalLoginFederationProviderType</code></td>
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
</ul></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_register_user_:_CustomFederationProviderUrl">CustomFederationProviderUrl</code></td>
<td><p>The URL of the custom OpenID Connect (OIDC) provider that
provides identity to let a user federate into Amazon QuickSight with an
associated Identity and Access Management(IAM) role. This parameter
should only be used when
<code>ExternalLoginFederationProviderType</code> parameter is set to
<code>CUSTOM_OIDC</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_register_user_:_ExternalLoginId">ExternalLoginId</code></td>
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
      UserInvitationUrl = "string",
      RequestId = "string",
      Status = 123
    )

### Request syntax

    svc$register_user(
      IdentityType = "IAM"|"QUICKSIGHT",
      Email = "string",
      UserRole = "ADMIN"|"AUTHOR"|"READER"|"RESTRICTED_AUTHOR"|"RESTRICTED_READER",
      IamArn = "string",
      SessionName = "string",
      AwsAccountId = "string",
      Namespace = "string",
      UserName = "string",
      CustomPermissionsName = "string",
      ExternalLoginFederationProviderType = "string",
      CustomFederationProviderUrl = "string",
      ExternalLoginId = "string"
    )
