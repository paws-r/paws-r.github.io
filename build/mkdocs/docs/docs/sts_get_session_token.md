<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sts_get_session_token</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a set of temporary credentials for an Amazon Web Services account or IAM user

### Description

Returns a set of temporary credentials for an Amazon Web Services
account or IAM user. The credentials consist of an access key ID, a
secret access key, and a security token. Typically, you use
`get_session_token` if you want to use MFA to protect programmatic calls
to specific Amazon Web Services API operations like Amazon EC2
`StopInstances`.

MFA-enabled IAM users must call `get_session_token` and submit an MFA
code that is associated with their MFA device. Using the temporary
security credentials that the call returns, IAM users can then make
programmatic calls to API operations that require MFA authentication. An
incorrect MFA code causes the API to return an access denied error. For
a comparison of `get_session_token` with the other API operations that
produce temporary credentials, see [Requesting Temporary Security
Credentials](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html)
and [Comparing the Amazon Web Services STS API
operations](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#stsapi_comparison)
in the *IAM User Guide*.

No permissions are required for users to perform this operation. The
purpose of the `sts:GetSessionToken` operation is to authenticate the
user using MFA. You cannot use policies to control authentication
operations. For more information, see [Permissions for
GetSessionToken](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_control-access_getsessiontoken.html)
in the *IAM User Guide*.

**Session Duration**

The `get_session_token` operation must be called by using the long-term
Amazon Web Services security credentials of an IAM user. Credentials
that are created by IAM users are valid for the duration that you
specify. This duration can range from 900 seconds (15 minutes) up to a
maximum of 129,600 seconds (36 hours), with a default of 43,200 seconds
(12 hours). Credentials based on account credentials can range from 900
seconds (15 minutes) up to 3,600 seconds (1 hour), with a default of 1
hour.

**Permissions**

The temporary security credentials created by `get_session_token` can be
used to make API calls to any Amazon Web Services service with the
following exceptions:

-   You cannot call any IAM API operations unless MFA authentication
    information is included in the request.

-   You cannot call any STS API *except* `assume_role` or
    `get_caller_identity`.

The credentials that `get_session_token` returns are based on
permissions associated with the IAM user whose credentials were used to
call the operation. The temporary credentials have the same permissions
as the IAM user.

Although it is possible to call `get_session_token` using the security
credentials of an Amazon Web Services account root user rather than an
IAM user, we do not recommend it. If `get_session_token` is called using
root user credentials, the temporary credentials have root user
permissions. For more information, see [Safeguard your root user
credentials and don't use them for everyday
tasks](https://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html#lock-away-credentials)
in the *IAM User Guide*

For more information about using `get_session_token` to create temporary
credentials, see [Temporary Credentials for Users in Untrusted
Environments](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#api_getsessiontoken)
in the *IAM User Guide*.

### Usage

    sts_get_session_token(DurationSeconds, SerialNumber, TokenCode)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sts_get_session_token_:_DurationSeconds">DurationSeconds</code></td>
<td><p>The duration, in seconds, that the credentials should remain
valid. Acceptable durations for IAM user sessions range from 900 seconds
(15 minutes) to 129,600 seconds (36 hours), with 43,200 seconds (12
hours) as the default. Sessions for Amazon Web Services account owners
are restricted to a maximum of 3,600 seconds (one hour). If the duration
is longer than one hour, the session for Amazon Web Services account
owners defaults to one hour.</p></td>
</tr>
<tr class="even">
<td><code
id="sts_get_session_token_:_SerialNumber">SerialNumber</code></td>
<td><p>The identification number of the MFA device that is associated
with the IAM user who is making the <code>get_session_token</code> call.
Specify this value if the IAM user has a policy that requires MFA
authentication. The value is either the serial number for a hardware
device (such as <code>GAHT12345678</code>) or an Amazon Resource Name
(ARN) for a virtual device (such as <code
style="white-space: pre;">⁠arn:aws:iam::123456789012:mfa/user⁠</code>).
You can find the device for an IAM user by going to the Amazon Web
Services Management Console and viewing the user's security
credentials.</p>
<p>The regex used to validate this parameter is a string of characters
consisting of upper- and lower-case alphanumeric characters with no
spaces. You can also include underscores or any of the following
characters: =,.@:/-</p></td>
</tr>
<tr class="odd">
<td><code id="sts_get_session_token_:_TokenCode">TokenCode</code></td>
<td><p>The value provided by the MFA device, if MFA is required. If any
policy requires the IAM user to submit an MFA code, specify this value.
If MFA authentication is required, the user must provide a code when
requesting a set of temporary security credentials. A user who fails to
provide the code receives an "access denied" response when requesting
resources that require MFA authentication.</p>
<p>The format for this parameter, as described by its regex pattern, is
a sequence of six numeric digits.</p></td>
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
      )
    )

### Request syntax

    svc$get_session_token(
      DurationSeconds = 123,
      SerialNumber = "string",
      TokenCode = "string"
    )

### Examples

    ## Not run: 
    # 
    svc$get_session_token(
      DurationSeconds = 3600L,
      SerialNumber = "YourMFASerialNumber",
      TokenCode = "123456"
    )

    ## End(Not run)
