<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sts_get_caller_identity</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns details about the IAM user or role whose credentials are used to call the operation

### Description

Returns details about the IAM user or role whose credentials are used to
call the operation.

No permissions are required to perform this operation. If an
administrator attaches a policy to your identity that explicitly denies
access to the `sts:GetCallerIdentity` action, you can still perform this
operation. Permissions are not required because the same information is
returned when access is denied. To view an example response, see [I Am
Not Authorized to Perform:
iam:DeleteVirtualMFADevice](https://docs.aws.amazon.com/IAM/latest/UserGuide/troubleshoot_general.html#troubleshoot_general_access-denied-delete-mfa)
in the *IAM User Guide*.

### Usage

    sts_get_caller_identity()

### Value

A list with the following syntax:

    list(
      UserId = "string",
      Account = "string",
      Arn = "string"
    )

### Request syntax

    svc$get_caller_identity()

### Examples

    ## Not run: 
    # This example shows a request and response made with the credentials for
    # a user named Alice in the AWS account 123456789012.
    svc$get_caller_identity()

    # This example shows a request and response made with temporary
    # credentials created by AssumeRole. The name of the assumed role is
    # my-role-name, and the RoleSessionName is set to my-role-session-name.
    svc$get_caller_identity()

    # This example shows a request and response made with temporary
    # credentials created by using GetFederationToken. The Name parameter is
    # set to my-federated-user-name.
    svc$get_caller_identity()

    ## End(Not run)
