<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emr_get_studio_session_mapping</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Fetches mapping details for the specified Amazon EMR Studio and identity (user or group)

### Description

Fetches mapping details for the specified Amazon EMR Studio and identity
(user or group).

### Usage

    emr_get_studio_session_mapping(StudioId, IdentityId, IdentityName,
      IdentityType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="emr_get_studio_session_mapping_:_StudioId">StudioId</code></td>
<td><p>[required] The ID of the Amazon EMR Studio.</p></td>
</tr>
<tr class="even">
<td><code
id="emr_get_studio_session_mapping_:_IdentityId">IdentityId</code></td>
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
id="emr_get_studio_session_mapping_:_IdentityName">IdentityName</code></td>
<td><p>The name of the user or group to fetch. For more information, see
<a
href="https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_User.html#singlesignon-Type-User-UserName">UserName</a>
and <a
href="https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_Group.html#singlesignon-Type-Group-DisplayName">DisplayName</a>
in the <em>IAM Identity Center Identity Store API Reference</em>. Either
<code>IdentityName</code> or <code>IdentityId</code> must be
specified.</p></td>
</tr>
<tr class="even">
<td><code
id="emr_get_studio_session_mapping_:_IdentityType">IdentityType</code></td>
<td><p>[required] Specifies whether the identity to fetch is a user or a
group.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SessionMapping = list(
        StudioId = "string",
        IdentityId = "string",
        IdentityName = "string",
        IdentityType = "USER"|"GROUP",
        SessionPolicyArn = "string",
        CreationTime = as.POSIXct(
          "2015-01-01"
        ),
        LastModifiedTime = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$get_studio_session_mapping(
      StudioId = "string",
      IdentityId = "string",
      IdentityName = "string",
      IdentityType = "USER"|"GROUP"
    )
