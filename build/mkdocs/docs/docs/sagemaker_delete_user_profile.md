<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_delete_user_profile</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a user profile

### Description

Deletes a user profile. When a user profile is deleted, the user loses
access to their EFS volume, including data, notebooks, and other
artifacts.

### Usage

    sagemaker_delete_user_profile(DomainId, UserProfileName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_delete_user_profile_:_DomainId">DomainId</code></td>
<td><p>[required] The domain ID.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_delete_user_profile_:_UserProfileName">UserProfileName</code></td>
<td><p>[required] The user profile name.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_user_profile(
      DomainId = "string",
      UserProfileName = "string"
    )
