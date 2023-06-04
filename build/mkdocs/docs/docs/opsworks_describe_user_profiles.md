<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworks_describe_user_profiles</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describe specified users

### Description

Describe specified users.

**Required Permissions**: To use this action, an IAM user must have an
attached policy that explicitly grants permissions. For more information
about user permissions, see [Managing User
Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

### Usage

    opsworks_describe_user_profiles(IamUserArns)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opsworks_describe_user_profiles_:_IamUserArns">IamUserArns</code></td>
<td><p>An array of IAM or federated user ARNs that identify the users to
be described.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      UserProfiles = list(
        list(
          IamUserArn = "string",
          Name = "string",
          SshUsername = "string",
          SshPublicKey = "string",
          AllowSelfManagement = TRUE|FALSE
        )
      )
    )

### Request syntax

    svc$describe_user_profiles(
      IamUserArns = list(
        "string"
      )
    )
