<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emr_create_studio_session_mapping</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Maps a user or group to the Amazon EMR Studio specified by StudioId, and applies a session policy to refine Studio permissions for that user or group

### Description

Maps a user or group to the Amazon EMR Studio specified by `StudioId`,
and applies a session policy to refine Studio permissions for that user
or group. Use `create_studio_session_mapping` to assign users to a
Studio when you use IAM Identity Center authentication. For instructions
on how to assign users to a Studio when you use IAM authentication, see
[Assign a user or group to your EMR
Studio](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-studio-manage-users.html#emr-studio-assign-users-groups).

### Usage

    emr_create_studio_session_mapping(StudioId, IdentityId, IdentityName,
      IdentityType, SessionPolicyArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="emr_create_studio_session_mapping_:_StudioId">StudioId</code></td>
<td><p>[required] The ID of the Amazon EMR Studio to which the user or
group will be mapped.</p></td>
</tr>
<tr class="even">
<td><code
id="emr_create_studio_session_mapping_:_IdentityId">IdentityId</code></td>
<td><p>The globally unique identifier (GUID) of the user or group from
the IAM Identity Center Identity Store. For more information, see <a
href="https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_User.html#singlesignon-Type-User-UserId">UserId</a>
and <a
href="https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_Group.html#singlesignon-Type-Group-GroupId">GroupId</a>
in the <em>IAM Identity Center Identity Store API Reference</em>. Either
<code>IdentityName</code> or <code>IdentityId</code> must be specified,
but not both.</p></td>
</tr>
<tr class="odd">
<td><code
id="emr_create_studio_session_mapping_:_IdentityName">IdentityName</code></td>
<td><p>The name of the user or group. For more information, see <a
href="https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_User.html#singlesignon-Type-User-UserName">UserName</a>
and <a
href="https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_Group.html#singlesignon-Type-Group-DisplayName">DisplayName</a>
in the <em>IAM Identity Center Identity Store API Reference</em>. Either
<code>IdentityName</code> or <code>IdentityId</code> must be specified,
but not both.</p></td>
</tr>
<tr class="even">
<td><code
id="emr_create_studio_session_mapping_:_IdentityType">IdentityType</code></td>
<td><p>[required] Specifies whether the identity to map to the Amazon
EMR Studio is a user or a group.</p></td>
</tr>
<tr class="odd">
<td><code
id="emr_create_studio_session_mapping_:_SessionPolicyArn">SessionPolicyArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) for the session policy
that will be applied to the user or group. You should specify the ARN
for the session policy that you want to apply, not the ARN of your user
role. For more information, see <a
href="https://docs.aws.amazon.com/emr/latest/ManagementGuide/">Create an
Amazon EMR Studio User Role with Session Policies</a>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_studio_session_mapping(
      StudioId = "string",
      IdentityId = "string",
      IdentityName = "string",
      IdentityType = "USER"|"GROUP",
      SessionPolicyArn = "string"
    )
