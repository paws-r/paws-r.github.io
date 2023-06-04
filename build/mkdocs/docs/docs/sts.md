<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sts</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS Security Token Service

### Description

Security Token Service

Security Token Service (STS) enables you to request temporary,
limited-privilege credentials for users. This guide provides
descriptions of the STS API. For more information about using this
service, see [Temporary Security
Credentials](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp.html).

### Usage

    sts(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sts_:_config">config</code></td>
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

    svc <- sts(
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
<td style="text-align: left;"><a href="../sts_assume_role/"> assume_role </a></td>
<td style="text-align: left;">Returns a set of temporary security
credentials that you can use to access Amazon Web Services
resources</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sts_assume_role_with_saml/"> assume_role_with_saml </a></td>
<td style="text-align: left;">Returns a set of temporary security
credentials for users who have been authenticated via a SAML
authentication response</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sts_assume_role_with_web_identity/"> assume_role_with_web_identity </a></td>
<td style="text-align: left;">Returns a set of temporary security
credentials for users who have been authenticated in a mobile or web
application with a web identity provider</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sts_decode_authorization_message/"> decode_authorization_message </a></td>
<td style="text-align: left;">Decodes additional information about the
authorization status of a request from an encoded message returned in
response to an Amazon Web Services request</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sts_get_access_key_info/"> get_access_key_info </a></td>
<td style="text-align: left;">Returns the account identifier for the
specified access key ID</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sts_get_caller_identity/"> get_caller_identity </a></td>
<td style="text-align: left;">Returns details about the IAM user or role
whose credentials are used to call the operation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sts_get_federation_token/"> get_federation_token </a></td>
<td style="text-align: left;">Returns a set of temporary security
credentials (consisting of an access key ID, a secret access key, and a
security token) for a user</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sts_get_session_token/"> get_session_token </a></td>
<td style="text-align: left;">Returns a set of temporary credentials for
an Amazon Web Services account or IAM user</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- sts()
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
