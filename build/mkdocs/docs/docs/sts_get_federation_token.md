<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sts_get_federation_token</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a set of temporary security credentials (consisting of an access key ID, a secret access key, and a security token) for a user

### Description

Returns a set of temporary security credentials (consisting of an access
key ID, a secret access key, and a security token) for a user. A typical
use is in a proxy application that gets temporary security credentials
on behalf of distributed applications inside a corporate network.

You must call the `get_federation_token` operation using the long-term
security credentials of an IAM user. As a result, this call is
appropriate in contexts where those credentials can be safeguarded,
usually in a server-based application. For a comparison of
`get_federation_token` with the other API operations that produce
temporary credentials, see [Requesting Temporary Security
Credentials](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html)
and [Comparing the Amazon Web Services STS API
operations](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#stsapi_comparison)
in the *IAM User Guide*.

Although it is possible to call `get_federation_token` using the
security credentials of an Amazon Web Services account root user rather
than an IAM user that you create for the purpose of a proxy application,
we do not recommend it. For more information, see [Safeguard your root
user credentials and don't use them for everyday
tasks](https://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html#lock-away-credentials)
in the *IAM User Guide*.

You can create a mobile-based or browser-based app that can authenticate
users using a web identity provider like Login with Amazon, Facebook,
Google, or an OpenID Connect-compatible identity provider. In this case,
we recommend that you use [Amazon
Cognito](https://aws.amazon.com/cognito/) or
`assume_role_with_web_identity`. For more information, see [Federation
Through a Web-based Identity
Provider](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#api_assumerolewithwebidentity)
in the *IAM User Guide*.

**Session duration**

The temporary credentials are valid for the specified duration, from 900
seconds (15 minutes) up to a maximum of 129,600 seconds (36 hours). The
default session duration is 43,200 seconds (12 hours). Temporary
credentials obtained by using the root user credentials have a maximum
duration of 3,600 seconds (1 hour).

**Permissions**

You can use the temporary credentials created by `get_federation_token`
in any Amazon Web Services service with the following exceptions:

-   You cannot call any IAM operations using the CLI or the Amazon Web
    Services API. This limitation does not apply to console sessions.

-   You cannot call any STS operations except `get_caller_identity`.

You can use temporary credentials for single sign-on (SSO) to the
console.

You must pass an inline or managed [session
policy](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session)
to this operation. You can pass a single JSON policy document to use as
an inline session policy. You can also specify up to 10 managed policy
Amazon Resource Names (ARNs) to use as managed session policies. The
plaintext that you use for both inline and managed session policies
can't exceed 2,048 characters.

Though the session policy parameters are optional, if you do not pass a
policy, then the resulting federated user session has no permissions.
When you pass session policies, the session permissions are the
intersection of the IAM user policies and the session policies that you
pass. This gives you a way to further restrict the permissions for a
federated user. You cannot use session policies to grant more
permissions than those that are defined in the permissions policy of the
IAM user. For more information, see [Session
Policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session)
in the *IAM User Guide*. For information about using
`get_federation_token` to create temporary security credentials, see
[GetFederationToken—Federation Through a Custom Identity
Broker](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#api_getfederationtoken).

You can use the credentials to access a resource that has a
resource-based policy. If that policy specifically references the
federated user session in the `Principal` element of the policy, the
session has the permissions allowed by the policy. These permissions are
granted in addition to the permissions granted by the session policies.

**Tags**

(Optional) You can pass tag key-value pairs to your session. These are
called session tags. For more information about session tags, see
[Passing Session Tags in
STS](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html)
in the *IAM User Guide*.

You can create a mobile-based or browser-based app that can authenticate
users using a web identity provider like Login with Amazon, Facebook,
Google, or an OpenID Connect-compatible identity provider. In this case,
we recommend that you use [Amazon
Cognito](https://aws.amazon.com/cognito/) or
`assume_role_with_web_identity`. For more information, see [Federation
Through a Web-based Identity
Provider](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#api_assumerolewithwebidentity)
in the *IAM User Guide*.

An administrator must grant you the permissions necessary to pass
session tags. The administrator can also create granular permissions to
allow you to pass only specific session tags. For more information, see
[Tutorial: Using Tags for Attribute-Based Access
Control](https://docs.aws.amazon.com/IAM/latest/UserGuide/tutorial_attribute-based-access-control.html)
in the *IAM User Guide*.

Tag key–value pairs are not case sensitive, but case is preserved. This
means that you cannot have separate `Department` and `department` tag
keys. Assume that the user that you are federating has the
`Department`=`Marketing` tag and you pass the `department`=`engineering`
session tag. `Department` and `department` are not saved as separate
tags, and the session tag passed in the request takes precedence over
the user tag.

### Usage

    sts_get_federation_token(Name, Policy, PolicyArns, DurationSeconds,
      Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sts_get_federation_token_:_Name">Name</code></td>
<td><p>[required] The name of the federated user. The name is used as an
identifier for the temporary security credentials (such as
<code>Bob</code>). For example, you can reference the federated user
name in a resource-based policy, such as in an Amazon S3 bucket
policy.</p>
<p>The regex used to validate this parameter is a string of characters
consisting of upper- and lower-case alphanumeric characters with no
spaces. You can also include underscores or any of the following
characters: =,.@-</p></td>
</tr>
<tr class="even">
<td><code id="sts_get_federation_token_:_Policy">Policy</code></td>
<td><p>An IAM policy in JSON format that you want to use as an inline
session policy.</p>
<p>You must pass an inline or managed <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session">session
policy</a> to this operation. You can pass a single JSON policy document
to use as an inline session policy. You can also specify up to 10
managed policy Amazon Resource Names (ARNs) to use as managed session
policies.</p>
<p>This parameter is optional. However, if you do not pass any session
policies, then the resulting federated user session has no
permissions.</p>
<p>When you pass session policies, the session permissions are the
intersection of the IAM user policies and the session policies that you
pass. This gives you a way to further restrict the permissions for a
federated user. You cannot use session policies to grant more
permissions than those that are defined in the permissions policy of the
IAM user. For more information, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session">Session
Policies</a> in the <em>IAM User Guide</em>.</p>
<p>The resulting credentials can be used to access a resource that has a
resource-based policy. If that policy specifically references the
federated user session in the <code>Principal</code> element of the
policy, the session has the permissions allowed by the policy. These
permissions are granted in addition to the permissions that are granted
by the session policies.</p>
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
id="sts_get_federation_token_:_PolicyArns">PolicyArns</code></td>
<td><p>The Amazon Resource Names (ARNs) of the IAM managed policies that
you want to use as a managed session policy. The policies must exist in
the same account as the IAM user that is requesting federated
access.</p>
<p>You must pass an inline or managed <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session">session
policy</a> to this operation. You can pass a single JSON policy document
to use as an inline session policy. You can also specify up to 10
managed policy Amazon Resource Names (ARNs) to use as managed session
policies. The plaintext that you use for both inline and managed session
policies can't exceed 2,048 characters. You can provide up to 10 managed
policy ARNs. For more information about ARNs, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in
the Amazon Web Services General Reference.</p>
<p>This parameter is optional. However, if you do not pass any session
policies, then the resulting federated user session has no
permissions.</p>
<p>When you pass session policies, the session permissions are the
intersection of the IAM user policies and the session policies that you
pass. This gives you a way to further restrict the permissions for a
federated user. You cannot use session policies to grant more
permissions than those that are defined in the permissions policy of the
IAM user. For more information, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session">Session
Policies</a> in the <em>IAM User Guide</em>.</p>
<p>The resulting credentials can be used to access a resource that has a
resource-based policy. If that policy specifically references the
federated user session in the <code>Principal</code> element of the
policy, the session has the permissions allowed by the policy. These
permissions are granted in addition to the permissions that are granted
by the session policies.</p>
<p>An Amazon Web Services conversion compresses the passed inline
session policy, managed policy ARNs, and session tags into a packed
binary format that has a separate limit. Your request can fail for this
limit even if your plaintext meets the other requirements. The
<code>PackedPolicySize</code> response element indicates by percentage
how close the policies and tags for your request are to the upper size
limit.</p></td>
</tr>
<tr class="even">
<td><code
id="sts_get_federation_token_:_DurationSeconds">DurationSeconds</code></td>
<td><p>The duration, in seconds, that the session should last.
Acceptable durations for federation sessions range from 900 seconds (15
minutes) to 129,600 seconds (36 hours), with 43,200 seconds (12 hours)
as the default. Sessions obtained using root user credentials are
restricted to a maximum of 3,600 seconds (one hour). If the specified
duration is longer than one hour, the session obtained by using root
user credentials defaults to one hour.</p></td>
</tr>
<tr class="odd">
<td><code id="sts_get_federation_token_:_Tags">Tags</code></td>
<td><p>A list of session tags. Each session tag consists of a key name
and an associated value. For more information about session tags, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html">Passing
Session Tags in STS</a> in the <em>IAM User Guide</em>.</p>
<p>This parameter is optional. You can pass up to 50 session tags. The
plaintext session tag keys can’t exceed 128 characters and the values
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
attached to the user you are federating. When you do, session tags
override a user tag with the same key.</p>
<p>Tag key–value pairs are not case sensitive, but case is preserved.
This means that you cannot have separate <code>Department</code> and
<code>department</code> tag keys. Assume that the role has the
<code>Department</code>=<code>Marketing</code> tag and you pass the
<code>department</code>=<code>engineering</code> session tag.
<code>Department</code> and <code>department</code> are not saved as
separate tags, and the session tag passed in the request takes
precedence over the role tag.</p></td>
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
      FederatedUser = list(
        FederatedUserId = "string",
        Arn = "string"
      ),
      PackedPolicySize = 123
    )

### Request syntax

    svc$get_federation_token(
      Name = "string",
      Policy = "string",
      PolicyArns = list(
        list(
          arn = "string"
        )
      ),
      DurationSeconds = 123,
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Examples

    ## Not run: 
    # 
    svc$get_federation_token(
      DurationSeconds = 3600L,
      Name = "testFedUserSession",
      Policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Sid\":\"Stmt1\",\"Effect\":\"A...",
      Tags = list(
        list(
          Key = "Project",
          Value = "Pegasus"
        ),
        list(
          Key = "Cost-Center",
          Value = "98765"
        )
      )
    )

    ## End(Not run)
