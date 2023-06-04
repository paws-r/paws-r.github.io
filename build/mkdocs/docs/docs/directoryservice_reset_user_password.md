<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directoryservice_reset_user_password</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Resets the password for any user in your Managed Microsoft AD or Simple AD directory

### Description

Resets the password for any user in your Managed Microsoft AD or Simple
AD directory.

You can reset the password for any user in your directory with the
following exceptions:

-   For Simple AD, you cannot reset the password for any user that is a
    member of either the **Domain Admins** or **Enterprise Admins**
    group except for the administrator user.

-   For Managed Microsoft AD, you can only reset the password for a user
    that is in an OU based off of the NetBIOS name that you typed when
    you created your directory. For example, you cannot reset the
    password for a user in the **Amazon Web Services Reserved** OU. For
    more information about the OU structure for an Managed Microsoft AD
    directory, see [What Gets
    Created](https://docs.aws.amazon.com/directoryservice/latest/admin-guide/ms_ad_getting_started_what_gets_created.html)
    in the *Directory Service Administration Guide*.

### Usage

    directoryservice_reset_user_password(DirectoryId, UserName, NewPassword)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directoryservice_reset_user_password_:_DirectoryId">DirectoryId</code></td>
<td><p>[required] Identifier of the Managed Microsoft AD or Simple AD
directory in which the user resides.</p></td>
</tr>
<tr class="even">
<td><code
id="directoryservice_reset_user_password_:_UserName">UserName</code></td>
<td><p>[required] The user name of the user whose password will be
reset.</p></td>
</tr>
<tr class="odd">
<td><code
id="directoryservice_reset_user_password_:_NewPassword">NewPassword</code></td>
<td><p>[required] The new password that will be reset.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$reset_user_password(
      DirectoryId = "string",
      UserName = "string",
      NewPassword = "string"
    )
