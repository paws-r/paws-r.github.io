<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>efs_put_file_system_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Applies an Amazon EFS FileSystemPolicy to an Amazon EFS file system

### Description

Applies an Amazon EFS `FileSystemPolicy` to an Amazon EFS file system. A
file system policy is an IAM resource-based policy and can contain
multiple policy statements. A file system always has exactly one file
system policy, which can be the default policy or an explicit policy set
or updated using this API operation. EFS file system policies have a
20,000 character limit. When an explicit policy is set, it overrides the
default policy. For more information about the default file system
policy, see [Default EFS File System
Policy](https://docs.aws.amazon.com/efs/latest/ug/iam-access-control-nfs-efs.html#default-filesystempolicy).

EFS file system policies have a 20,000 character limit.

This operation requires permissions for the
`elasticfilesystem:PutFileSystemPolicy` action.

### Usage

    efs_put_file_system_policy(FileSystemId, Policy,
      BypassPolicyLockoutSafetyCheck)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="efs_put_file_system_policy_:_FileSystemId">FileSystemId</code></td>
<td><p>[required] The ID of the EFS file system that you want to create
or update the <code>FileSystemPolicy</code> for.</p></td>
</tr>
<tr class="even">
<td><code id="efs_put_file_system_policy_:_Policy">Policy</code></td>
<td><p>[required] The <code>FileSystemPolicy</code> that you're
creating. Accepts a JSON formatted policy definition. EFS file system
policies have a 20,000 character limit. To find out more about the
elements that make up a file system policy, see <a
href="https://docs.aws.amazon.com/efs/latest/ug/#access-control-manage-access-intro-resource-policies">EFS
Resource-based Policies</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="efs_put_file_system_policy_:_BypassPolicyLockoutSafetyCheck">BypassPolicyLockoutSafetyCheck</code></td>
<td><p>(Optional) A boolean that specifies whether or not to bypass the
<code>FileSystemPolicy</code> lockout safety check. The lockout safety
check determines whether the policy in the request will lock out, or
prevent, the IAM principal that is making the request from making future
<code>put_file_system_policy</code> requests on this file system. Set
<code>BypassPolicyLockoutSafetyCheck</code> to <code>True</code> only
when you intend to prevent the IAM principal that is making the request
from making subsequent <code>put_file_system_policy</code> requests on
this file system. The default value is <code>False</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FileSystemId = "string",
      Policy = "string"
    )

### Request syntax

    svc$put_file_system_policy(
      FileSystemId = "string",
      Policy = "string",
      BypassPolicyLockoutSafetyCheck = TRUE|FALSE
    )
