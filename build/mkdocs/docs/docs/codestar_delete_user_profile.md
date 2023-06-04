<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codestar_delete_user_profile</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a user profile in AWS CodeStar, including all personal preference data associated with that profile, such as display name and email address

### Description

Deletes a user profile in AWS CodeStar, including all personal
preference data associated with that profile, such as display name and
email address. It does not delete the history of that user, for example
the history of commits made by that user.

### Usage

    codestar_delete_user_profile(userArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codestar_delete_user_profile_:_userArn">userArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the user to delete
from AWS CodeStar.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      userArn = "string"
    )

### Request syntax

    svc$delete_user_profile(
      userArn = "string"
    )
