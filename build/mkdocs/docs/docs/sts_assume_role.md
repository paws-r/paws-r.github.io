<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sts_assume_role</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a set of temporary security credentials that you can use to access Amazon Web Services resources

### Description

Returns a set of temporary security credentials that you can use to
access Amazon Web Services resources. These temporary credentials
consist of an access key ID, a secret access key, and a security token.
Typically, you use `assume_role` within your account or for
cross-account access. For a comparison of `assume_role` with other API
operations that produce temporary credentials, see [Requesting Temporary
Security
Credentials](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html)
and [Comparing the Amazon Web Services STS API
operations](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#stsapi_comparison)
in the *IAM User Guide*.

**Permissions**

The temporary security credentials created by `assume_role` can be used
to make API calls to any Amazon Web Services service with the following
exception: You cannot call the Amazon Web Services STS
`get_federation_token` or `get_session_token` API operations.

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

When you create a role, you create two policies: a role trust policy
that specifies *who* can assume the role, and a permissions policy that
specifies *what* can be done with the role. You specify the trusted
principal that is allowed to assume the role in the role trust policy.

To assume a role from a different account, your Amazon Web Services
account must be trusted by the role. The trust relationship is defined
in the role's trust policy when the role is created. That trust policy
states which accounts are allowed to delegate that access to users in
the account.

A user who wants to access a role in a different account must also have
permissions that are delegated from the account administrator. The
administrator must attach a policy that allows the user to call
`assume_role` for the ARN of the role in the other account.

To allow a user to assume a role in the same account, you can do either
of the following:

-   Attach a policy to the user that allows the user to call
    `assume_role` (as long as the role's trust policy trusts the
    account).

-   Add the user as a principal directly in the role's trust policy.

You can do either because the role’s trust policy acts as an IAM
resource-based policy. When a resource-based policy grants access to a
principal in the same account, no additional identity-based policy is
required. For more information about trust policies and resource-based
policies, see [IAM
Policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html)
in the *IAM User Guide*.

**Tags**

(Optional) You can pass tag key-value pairs to your session. These tags
are called session tags. For more information about session tags, see
[Passing Session Tags in
STS](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html)
in the *IAM User Guide*.

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

**Using MFA with AssumeRole**

(Optional) You can include multi-factor authentication (MFA) information
when you call `assume_role`. This is useful for cross-account scenarios
to ensure that the user that assumes the role has been authenticated
with an Amazon Web Services MFA device. In that scenario, the trust
policy of the role being assumed includes a condition that tests for MFA
authentication. If the caller does not include valid MFA information,
the request to assume the role is denied. The condition in a trust
policy that tests for MFA authentication might look like the following
example.

`"Condition": {"Bool": {"aws:MultiFactorAuthPresent": true}}`

For more information, see [Configuring MFA-Protected API
Access](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_mfa_configure-api-require.html)
in the *IAM User Guide* guide.

To use MFA with `assume_role`, you pass values for the `SerialNumber`
and `TokenCode` parameters. The `SerialNumber` value identifies the
user's hardware or virtual MFA device. The `TokenCode` is the time-based
one-time password (TOTP) that the MFA device produces.

### Usage

    sts_assume_role(RoleArn, RoleSessionName, PolicyArns, Policy,
      DurationSeconds, Tags, TransitiveTagKeys, ExternalId, SerialNumber,
      TokenCode, SourceIdentity)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sts_assume_role_:_RoleArn">RoleArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the role to
assume.</p></td>
</tr>
<tr class="even">
<td><code
id="sts_assume_role_:_RoleSessionName">RoleSessionName</code></td>
<td><p>[required] An identifier for the assumed role session.</p>
<p>Use the role session name to uniquely identify a session when the
same role is assumed by different principals or for different reasons.
In cross-account scenarios, the role session name is visible to, and can
be logged by the account that owns the role. The role session name is
also used in the ARN of the assumed role principal. This means that
subsequent cross-account API requests that use the temporary security
credentials will expose the role session name to the external account in
their CloudTrail logs.</p>
<p>The regex used to validate this parameter is a string of characters
consisting of upper- and lower-case alphanumeric characters with no
spaces. You can also include underscores or any of the following
characters: =,.@-</p></td>
</tr>
<tr class="odd">
<td><code id="sts_assume_role_:_PolicyArns">PolicyArns</code></td>
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
<td><code id="sts_assume_role_:_Policy">Policy</code></td>
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
id="sts_assume_role_:_DurationSeconds">DurationSeconds</code></td>
<td><p>The duration, in seconds, of the role session. The value
specified can range from 900 seconds (15 minutes) up to the maximum
session duration set for the role. The maximum session duration setting
can have a value from 1 hour to 12 hours. If you specify a value higher
than this setting or the administrator setting (whichever is lower), the
operation fails. For example, if you specify a session duration of 12
hours, but your administrator set the maximum session duration to 6
hours, your operation fails.</p>
<p>Role chaining limits your Amazon Web Services CLI or Amazon Web
Services API role session to a maximum of one hour. When you use the
<code>assume_role</code> API operation to assume a role, you can specify
the duration of your role session with the <code>DurationSeconds</code>
parameter. You can specify a parameter value of up to 43200 seconds (12
hours), depending on the maximum session duration setting for your role.
However, if you assume a role using role chaining and provide a
<code>DurationSeconds</code> parameter value greater than one hour, the
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
<tr class="even">
<td><code id="sts_assume_role_:_Tags">Tags</code></td>
<td><p>A list of session tags that you want to pass. Each session tag
consists of a key name and an associated value. For more information
about session tags, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html">Tagging
Amazon Web Services STS Sessions</a> in the <em>IAM User Guide</em>.</p>
<p>This parameter is optional. You can pass up to 50 session tags. The
plaintext session tag keys can’t exceed 128 characters, and the values
can’t exceed 256 characters. For these and additional limits, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html#reference_iam-limits-entity-length">IAM
and STS Character Limits</a> in the <em>IAM User Guide</em>.</p>
<p>An Amazon Web Services conversion compresses the passed inline
session policy, managed policy ARNs, and session tags into a packed
binary format that has a separate limit. Your request can fail for this
limit even if your plaintext meets the other requirements. The
<code>PackedPolicySize</code> response element indicates by percentage
how close the policies and tags for your request are to the upper size
limit.</p>
<p>You can pass a session tag with the same key as a tag that is already
attached to the role. When you do, session tags override a role tag with
the same key.</p>
<p>Tag key–value pairs are not case sensitive, but case is preserved.
This means that you cannot have separate <code>Department</code> and
<code>department</code> tag keys. Assume that the role has the
<code>Department</code>=<code>Marketing</code> tag and you pass the
<code>department</code>=<code>engineering</code> session tag.
<code>Department</code> and <code>department</code> are not saved as
separate tags, and the session tag passed in the request takes
precedence over the role tag.</p>
<p>Additionally, if you used temporary credentials to perform this
operation, the new session inherits any transitive session tags from the
calling session. If you pass a session tag with the same key as an
inherited tag, the operation fails. To view the inherited tags for a
session, see the CloudTrail logs. For more information, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html#id_session-tags_ctlogs">Viewing
Session Tags in CloudTrail</a> in the <em>IAM User Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="sts_assume_role_:_TransitiveTagKeys">TransitiveTagKeys</code></td>
<td><p>A list of keys for session tags that you want to set as
transitive. If you set a tag key as transitive, the corresponding key
and value passes to subsequent sessions in a role chain. For more
information, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html#id_session-tags_role-chaining">Chaining
Roles with Session Tags</a> in the <em>IAM User Guide</em>.</p>
<p>This parameter is optional. When you set session tags as transitive,
the session policy and session tags packed binary limit is not
affected.</p>
<p>If you choose not to specify a transitive tag key, then no tags are
passed from this session to any subsequent sessions.</p></td>
</tr>
<tr class="even">
<td><code id="sts_assume_role_:_ExternalId">ExternalId</code></td>
<td><p>A unique identifier that might be required when you assume a role
in another account. If the administrator of the account to which the
role belongs provided you with an external ID, then provide that value
in the <code>ExternalId</code> parameter. This value can be any string,
such as a passphrase or account number. A cross-account role is usually
set up to trust everyone in an account. Therefore, the administrator of
the trusting account might send an external ID to the administrator of
the trusted account. That way, only someone with the ID can assume the
role, rather than everyone in the account. For more information about
the external ID, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_create_for-user_externalid.html">How
to Use an External ID When Granting Access to Your Amazon Web Services
Resources to a Third Party</a> in the <em>IAM User Guide</em>.</p>
<p>The regex used to validate this parameter is a string of characters
consisting of upper- and lower-case alphanumeric characters with no
spaces. You can also include underscores or any of the following
characters: =,.@:/-</p></td>
</tr>
<tr class="odd">
<td><code id="sts_assume_role_:_SerialNumber">SerialNumber</code></td>
<td><p>The identification number of the MFA device that is associated
with the user who is making the <code>assume_role</code> call. Specify
this value if the trust policy of the role being assumed includes a
condition that requires MFA authentication. The value is either the
serial number for a hardware device (such as <code>GAHT12345678</code>)
or an Amazon Resource Name (ARN) for a virtual device (such as <code
style="white-space: pre;">⁠arn:aws:iam::123456789012:mfa/user⁠</code>).</p>
<p>The regex used to validate this parameter is a string of characters
consisting of upper- and lower-case alphanumeric characters with no
spaces. You can also include underscores or any of the following
characters: =,.@-</p></td>
</tr>
<tr class="even">
<td><code id="sts_assume_role_:_TokenCode">TokenCode</code></td>
<td><p>The value provided by the MFA device, if the trust policy of the
role being assumed requires MFA. (In other words, if the policy includes
a condition that tests for MFA). If the role being assumed requires MFA
and if the <code>TokenCode</code> value is missing or expired, the
<code>assume_role</code> call returns an "access denied" error.</p>
<p>The format for this parameter, as described by its regex pattern, is
a sequence of six numeric digits.</p></td>
</tr>
<tr class="odd">
<td><code
id="sts_assume_role_:_SourceIdentity">SourceIdentity</code></td>
<td><p>The source identity specified by the principal that is calling
the <code>assume_role</code> operation.</p>
<p>You can require users to specify a source identity when they assume a
role. You do this by using the <code>sts:SourceIdentity</code> condition
key in a role trust policy. You can use source identity information in
CloudTrail logs to determine who took actions with a role. You can use
the <code>aws:SourceIdentity</code> condition key to further control
access to Amazon Web Services resources based on the value of source
identity. For more information about using source identity, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_control-access_monitor.html">Monitor
and control actions taken with assumed roles</a> in the <em>IAM User
Guide</em>.</p>
<p>The regex used to validate this parameter is a string of characters
consisting of upper- and lower-case alphanumeric characters with no
spaces. You can also include underscores or any of the following
characters: =,.@-. You cannot use a value that begins with the text
<code style="white-space: pre;">⁠aws:⁠</code>. This prefix is reserved for
Amazon Web Services internal use.</p></td>
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
      AssumedRoleUser = list(
        AssumedRoleId = "string",
        Arn = "string"
      ),
      PackedPolicySize = 123,
      SourceIdentity = "string"
    )

### Request syntax

    svc$assume_role(
      RoleArn = "string",
      RoleSessionName = "string",
      PolicyArns = list(
        list(
          arn = "string"
        )
      ),
      Policy = "string",
      DurationSeconds = 123,
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      TransitiveTagKeys = list(
        "string"
      ),
      ExternalId = "string",
      SerialNumber = "string",
      TokenCode = "string",
      SourceIdentity = "string"
    )

### Examples

    ## Not run: 
    # 
    svc$assume_role(
      ExternalId = "123ABC",
      Policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Sid\":\"Stmt1\",\"Effect\":\"A...",
      RoleArn = "arn:aws:iam::123456789012:role/demo",
      RoleSessionName = "testAssumeRoleSession",
      Tags = list(
        list(
          Key = "Project",
          Value = "Unicorn"
        ),
        list(
          Key = "Team",
          Value = "Automation"
        ),
        list(
          Key = "Cost-Center",
          Value = "12345"
        )
      ),
      TransitiveTagKeys = list(
        "Project",
        "Cost-Center"
      )
    )

    ## End(Not run)
