<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sso</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS Single Sign-On

### Description

AWS IAM Identity Center (successor to AWS Single Sign-On) Portal is a
web service that makes it easy for you to assign user access to IAM
Identity Center resources such as the AWS access portal. Users can get
AWS account applications and roles assigned to them and get federated
into the application.

Although AWS Single Sign-On was renamed, the `sso` and `identitystore`
API namespaces will continue to retain their original name for backward
compatibility purposes. For more information, see [IAM Identity Center
rename](https://docs.aws.amazon.com/singlesignon/latest/userguide/what-is.html#renamed).

This reference guide describes the IAM Identity Center Portal operations
that you can call programatically and includes detailed information on
data types and errors.

AWS provides SDKs that consist of libraries and sample code for various
programming languages and platforms, such as Java, Ruby, .Net, iOS, or
Android. The SDKs provide a convenient way to create programmatic access
to IAM Identity Center and other AWS services. For more information
about the AWS SDKs, including how to download and install them, see
[Tools for Amazon Web
Services](https://aws.amazon.com/developer/tools/).

### Usage

    sso(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sso_:_config">config</code></td>
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

    svc <- sso(
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
<td style="text-align: left;"><a href="../sso_get_role_credentials/"> get_role_credentials </a></td>
<td style="text-align: left;">Returns the STS short-term credentials for
a given role name that is assigned to the user</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sso_list_account_roles/"> list_account_roles </a></td>
<td style="text-align: left;">Lists all roles that are assigned to the
user for a given AWS account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sso_list_accounts/"> list_accounts </a></td>
<td style="text-align: left;">Lists all AWS accounts assigned to the
user</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sso_logout/"> logout </a></td>
<td style="text-align: left;">Removes the locally stored SSO tokens from
the client-side cache and sends an API call to the IAM Identity Center
service to invalidate the corresponding server-side IAM Identity Center
sign in session</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- sso()
    svc$get_role_credentials(
      Foo = 123
    )

    ## End(Not run)
