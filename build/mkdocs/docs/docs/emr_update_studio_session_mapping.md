<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emr_update_studio_session_mapping</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the session policy attached to the user or group for the specified Amazon EMR Studio

### Description

Updates the session policy attached to the user or group for the
specified Amazon EMR Studio.

### Usage

    emr_update_studio_session_mapping(StudioId, IdentityId, IdentityName,
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
id="emr_update_studio_session_mapping_:_StudioId">StudioId</code></td>
<td><p>[required] The ID of the Amazon EMR Studio.</p></td>
</tr>
<tr class="even">
<td><code
id="emr_update_studio_session_mapping_:_IdentityId">IdentityId</code></td>
<td><p>The globally unique identifier (GUID) of the user or group. For
more information, see <a
href="https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_User.html#singlesignon-Type-User-UserId">UserId</a>
and <a
href="https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_Group.html#singlesignon-Type-Group-GroupId">GroupId</a>
in the <em>IAM Identity Center Identity Store API Reference</em>. Either
<code>IdentityName</code> or <code>IdentityId</code> must be
specified.</p></td>
</tr>
<tr class="odd">
<td><code
id="emr_update_studio_session_mapping_:_IdentityName">IdentityName</code></td>
<td><p>The name of the user or group to update. For more information,
see <a
href="https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_User.html#singlesignon-Type-User-UserName">UserName</a>
and <a
href="https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_Group.html#singlesignon-Type-Group-DisplayName">DisplayName</a>
in the <em>IAM Identity Center Identity Store API Reference</em>. Either
<code>IdentityName</code> or <code>IdentityId</code> must be
specified.</p></td>
</tr>
<tr class="even">
<td><code
id="emr_update_studio_session_mapping_:_IdentityType">IdentityType</code></td>
<td><p>[required] Specifies whether the identity to update is a user or
a group.</p></td>
</tr>
<tr class="odd">
<td><code
id="emr_update_studio_session_mapping_:_SessionPolicyArn">SessionPolicyArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the session policy
to associate with the specified user or group.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_studio_session_mapping(
      StudioId = "string",
      IdentityId = "string",
      IdentityName = "string",
      IdentityType = "USER"|"GROUP",
      SessionPolicyArn = "string"
    )
