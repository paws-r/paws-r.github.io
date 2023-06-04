<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sts_assume_role_with_web_identity</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a set of temporary security credentials for users who have been authenticated in a mobile or web application with a web identity provider

### Description

Returns a set of temporary security credentials for users who have been
authenticated in a mobile or web application with a web identity
provider. Example providers include the OAuth 2.0 providers Login with
Amazon and Facebook, or any OpenID Connect-compatible identity provider
such as Google or [Amazon Cognito federated
identities](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-identity.html).

For mobile applications, we recommend that you use Amazon Cognito. You
can use Amazon Cognito with the [Amazon Web Services SDK for iOS
Developer Guide](https://aws.amazon.com/amplify/) and the [Amazon Web
Services SDK for Android Developer
Guide](https://aws.amazon.com/amplify/) to uniquely identify a user. You
can also supply the user with a consistent identity throughout the
lifetime of an application.

To learn more about Amazon Cognito, see [Amazon Cognito identity
pools](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-identity.html)
in *Amazon Cognito Developer Guide*.

Calling `assume_role_with_web_identity` does not require the use of
Amazon Web Services security credentials. Therefore, you can distribute
an application (for example, on mobile devices) that requests temporary
security credentials without including long-term Amazon Web Services
credentials in the application. You also don't need to deploy
server-based proxy services that use long-term Amazon Web Services
credentials. Instead, the identity of the caller is validated by using a
token from the web identity provider. For a comparison of
`assume_role_with_web_identity` with the other API operations that
produce temporary credentials, see [Requesting Temporary Security
Credentials](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html)
and [Comparing the Amazon Web Services STS API
operations](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#stsapi_comparison)
in the *IAM User Guide*.

The temporary security credentials returned by this API consist of an
access key ID, a secret access key, and a security token. Applications
can use these temporary security credentials to sign calls to Amazon Web
Services service API operations.

**Session Duration**

By default, the temporary security credentials created by
`assume_role_with_web_identity` last for one hour. However, you can use
the optional `DurationSeconds` parameter to specify the duration of your
session. You can provide a value from 900 seconds (15 minutes) up to the
maximum session duration setting for the role. This setting can have a
value from 1 hour to 12 hours. To learn how to view the maximum value
for your role, see [View the Maximum Session Duration Setting for a
Role](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html#id_roles_use_view-role-max-session)
in the *IAM User Guide*. The maximum session duration limit applies when
you use the `⁠AssumeRole*⁠` API operations or the `⁠assume-role*⁠` CLI
commands. However the limit does not apply when you use those operations
to create a console URL. For more information, see [Using IAM
Roles](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html)
in the *IAM User Guide*.

**Permissions**

The temporary security credentials created by
`assume_role_with_web_identity` can be used to make API calls to any
Amazon Web Services service with the following exception: you cannot
call the STS `get_federation_token` or `get_session_token` API
operations.

(Optional) You can pass inline or managed [session
policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session)
to this operation. You can pass a single JSON policy document to use as
an inline session policy. You can also specify up to 10 managed policy
Amazon Resource Names (ARNs) to use as managed session policies. The
plaintext that you use for both inline and managed session policies
can't exceed 2,048 characters. Passing policies to this operation
returns new temporary credentials. The resulting session's permissions
are the intersection of the role's identity-based policy and the session
policies. You can use the role's temporary credentials in subsequent
Amazon Web Services API calls to access resources in the account that
owns the role. You cannot use session policies to grant more permissions
than those allowed by the identity-based policy of the role that is
being assumed. For more information, see [Session
Policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session)
in the *IAM User Guide*.

**Tags**

(Optional) You can configure your IdP to pass attributes into your web
identity token as session tags. Each session tag consists of a key name
and an associated value. For more information about session tags, see
[Passing Session Tags in
STS](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html)
in the *IAM User Guide*.

You can pass up to 50 session tags. The plaintext session tag keys can’t
exceed 128 characters and the values can’t exceed 256 characters. For
these and additional limits, see [IAM and STS Character
Limits](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html#reference_iam-limits-entity-length)
in the *IAM User Guide*.

An Amazon Web Services conversion compresses the passed inline session
policy, managed policy ARNs, and session tags into a packed binary
format that has a separate limit. Your request can fail for this limit
even if your plaintext meets the other requirements. The
`PackedPolicySize` response element indicates by percentage how close
the policies and tags for your request are to the upper size limit.

You can pass a session tag with the same key as a tag that is attached
to the role. When you do, the session tag overrides the role tag with
the same key.

An administrator must grant you the permissions necessary to pass
session tags. The administrator can also create granular permissions to
allow you to pass only specific session tags. For more information, see
[Tutorial: Using Tags for Attribute-Based Access
Control](https://docs.aws.amazon.com/IAM/latest/UserGuide/tutorial_attribute-based-access-control.html)
in the *IAM User Guide*.

You can set the session tags as transitive. Transitive tags persist
during role chaining. For more information, see [Chaining Roles with
Session
Tags](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html#id_session-tags_role-chaining)
in the *IAM User Guide*.

**Identities**

Before your application can call `assume_role_with_web_identity`, you
must have an identity token from a supported identity provider and
create a role that the application can assume. The role that your
application assumes must trust the identity provider that is associated
with the identity token. In other words, the identity provider must be
specified in the role's trust policy.

Calling `assume_role_with_web_identity` can result in an entry in your
CloudTrail logs. The entry includes the
[Subject](https://openid.net/specs/openid-connect-core-1_0.html#Claims)
of the provided web identity token. We recommend that you avoid using
any personally identifiable information (PII) in this field. For
example, you could instead use a GUID or a pairwise identifier, as
[suggested in the OIDC
specification](https://openid.net/specs/openid-connect-core-1_0.html#SubjectIDTypes).

For more information about how to use web identity federation and the
`assume_role_with_web_identity` API, see the following resources:

-   [Using Web Identity Federation API Operations for Mobile
    Apps](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_oidc_manual.html)
    and [Federation Through a Web-based Identity
    Provider](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#api_assumerolewithwebidentity).

-   [Web Identity Federation
    Playground](https://aws.amazon.com/blogs/aws/the-aws-web-identity-federation-playground/).
    Walk through the process of authenticating through Login with
    Amazon, Facebook, or Google, getting temporary security credentials,
    and then using those credentials to make a request to Amazon Web
    Services.

-   [Amazon Web Services SDK for iOS Developer
    Guide](https://aws.amazon.com/amplify/) and [Amazon Web Services SDK
    for Android Developer Guide](https://aws.amazon.com/amplify/). These
    toolkits contain sample apps that show how to invoke the identity
    providers. The toolkits then show how to use the information from
    these providers to get and use temporary security credentials.

-   [Web Identity Federation with Mobile
    Applications](https://aws.amazon.com/articles/web-identity-federation-with-mobile-applications/).
    This article discusses web identity federation and shows an example
    of how to use web identity federation to get access to content in
    Amazon S3.

### Usage

    sts_assume_role_with_web_identity(RoleArn, RoleSessionName,
      WebIdentityToken, ProviderId, PolicyArns, Policy, DurationSeconds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sts_assume_role_with_web_identity_:_RoleArn">RoleArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the role that the
caller is assuming.</p></td>
</tr>
<tr class="even">
<td><code
id="sts_assume_role_with_web_identity_:_RoleSessionName">RoleSessionName</code></td>
<td><p>[required] An identifier for the assumed role session. Typically,
you pass the name or identifier that is associated with the user who is
using your application. That way, the temporary security credentials
that your application will use are associated with that user. This
session name is included as part of the ARN and assumed role ID in the
<code>AssumedRoleUser</code> response element.</p>
<p>The regex used to validate this parameter is a string of characters
consisting of upper- and lower-case alphanumeric characters with no
spaces. You can also include underscores or any of the following
characters: =,.@-</p></td>
</tr>
<tr class="odd">
<td><code
id="sts_assume_role_with_web_identity_:_WebIdentityToken">WebIdentityToken</code></td>
<td><p>[required] The OAuth 2.0 access token or OpenID Connect ID token
that is provided by the identity provider. Your application must get
this token by authenticating the user who is using your application with
a web identity provider before the application makes an
<code>assume_role_with_web_identity</code> call.</p></td>
</tr>
<tr class="even">
<td><code
id="sts_assume_role_with_web_identity_:_ProviderId">ProviderId</code></td>
<td><p>The fully qualified host component of the domain name of the
OAuth 2.0 identity provider. Do not specify this value for an OpenID
Connect identity provider.</p>
<p>Currently <code>www.amazon.com</code> and
<code>graph.facebook.com</code> are the only supported identity
providers for OAuth 2.0 access tokens. Do not include URL schemes and
port numbers.</p>
<p>Do not specify this value for OpenID Connect ID tokens.</p></td>
</tr>
<tr class="odd">
<td><code
id="sts_assume_role_with_web_identity_:_PolicyArns">PolicyArns</code></td>
<td><p>The Amazon Resource Names (ARNs) of the IAM managed policies that
you want to use as managed session policies. The policies must exist in
the same account as the role.</p>
<p>This parameter is optional. You can provide up to 10 managed policy
ARNs. However, the plaintext that you use for both inline and managed
session policies can't exceed 2,048 characters. For more information
about ARNs, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in
the Amazon Web Services General Reference.</p>
<p>An Amazon Web Services conversion compresses the passed inline
session policy, managed policy ARNs, and session tags into a packed
binary format that has a separate limit. Your request can fail for this
limit even if your plaintext meets the other requirements. The
<code>PackedPolicySize</code> response element indicates by percentage
how close the policies and tags for your request are to the upper size
limit.</p>
<p>Passing policies to this operation returns new temporary credentials.
The resulting session's permissions are the intersection of the role's
identity-based policy and the session policies. You can use the role's
temporary credentials in subsequent Amazon Web Services API calls to
access resources in the account that owns the role. You cannot use
session policies to grant more permissions than those allowed by the
identity-based policy of the role that is being assumed. For more
information, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session">Session
Policies</a> in the <em>IAM User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="sts_assume_role_with_web_identity_:_Policy">Policy</code></td>
<td><p>An IAM policy in JSON format that you want to use as an inline
session policy.</p>
<p>This parameter is optional. Passing policies to this operation
returns new temporary credentials. The resulting session's permissions
are the intersection of the role's identity-based policy and the session
policies. You can use the role's temporary credentials in subsequent
Amazon Web Services API calls to access resources in the account that
owns the role. You cannot use session policies to grant more permissions
than those allowed by the identity-based policy of the role that is
being assumed. For more information, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session">Session
Policies</a> in the <em>IAM User Guide</em>.</p>
<p>The plaintext that you use for both inline and managed session
policies can't exceed 2,048 characters. The JSON policy characters can
be any ASCII character from the space character to the end of the valid
character list (\codeU+0020 through \verbU+00FF). It can also include
the tab (\codeU+0009), linefeed (\verbU+000A), and carriage return
(\verbU+000D) characters.</p>
<p>An Amazon Web Services conversion compresses the passed inline
session policy, managed policy ARNs, and session tags into a packed
binary format that has a separate limit. Your request can fail for this
limit even if your plaintext meets the other requirements. The
<code>PackedPolicySize</code> response element indicates by percentage
how close the policies and tags for your request are to the upper size
limit.</p></td>
</tr>
<tr class="odd">
<td><code
id="sts_assume_role_with_web_identity_:_DurationSeconds">DurationSeconds</code></td>
<td><p>The duration, in seconds, of the role session. The value can
range from 900 seconds (15 minutes) up to the maximum session duration
setting for the role. This setting can have a value from 1 hour to 12
hours. If you specify a value higher than this setting, the operation
fails. For example, if you specify a session duration of 12 hours, but
your administrator set the maximum session duration to 6 hours, your
operation fails. To learn how to view the maximum value for your role,
see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html#id_roles_use_view-role-max-session">View
the Maximum Session Duration Setting for a Role</a> in the <em>IAM User
Guide</em>.</p>
<p>By default, the value is set to <code>3600</code> seconds.</p>
<p>The <code>DurationSeconds</code> parameter is separate from the
duration of a console session that you might request using the returned
credentials. The request to the federation endpoint for a console
sign-in token takes a <code>SessionDuration</code> parameter that
specifies the maximum length of the console session. For more
information, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_enable-console-custom-url.html">Creating
a URL that Enables Federated Users to Access the Amazon Web Services
Management Console</a> in the <em>IAM User Guide</em>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Credentials = list(
        AccessKeyId = "string",
        SecretAccessKey = "string",
        SessionToken = "string",
        Expiration = as.POSIXct(
          "2015-01-01"
        )
      ),
      SubjectFromWebIdentityToken = "string",
      AssumedRoleUser = list(
        AssumedRoleId = "string",
        Arn = "string"
      ),
      PackedPolicySize = 123,
      Provider = "string",
      Audience = "string",
      SourceIdentity = "string"
    )

### Request syntax

    svc$assume_role_with_web_identity(
      RoleArn = "string",
      RoleSessionName = "string",
      WebIdentityToken = "string",
      ProviderId = "string",
      PolicyArns = list(
        list(
          arn = "string"
        )
      ),
      Policy = "string",
      DurationSeconds = 123
    )

### Examples

    ## Not run: 
    # 
    svc$assume_role_with_web_identity(
      DurationSeconds = 3600L,
      Policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Sid\":\"Stmt1\",\"Effect\":\"A...",
      ProviderId = "www.amazon.com",
      RoleArn = "arn:aws:iam::123456789012:role/FederatedWebIdentityRole",
      RoleSessionName = "app1",
      WebIdentityToken = "Atza%7CIQEBLjAsAhRFiXuWpUXuRvQ9PZL3GMFcYevydwIUFAHZwX..."
    )

    ## End(Not run)
