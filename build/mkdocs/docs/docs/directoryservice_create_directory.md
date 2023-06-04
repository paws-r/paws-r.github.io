<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directoryservice_create_directory</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a Simple AD directory

### Description

Creates a Simple AD directory. For more information, see [Simple Active
Directory](https://docs.aws.amazon.com/directoryservice/latest/admin-guide/directory_simple_ad.html)
in the *Directory Service Admin Guide*.

Before you call `create_directory`, ensure that all of the required
permissions have been explicitly granted through a policy. For details
about what permissions are required to run the `create_directory`
operation, see [Directory Service API Permissions: Actions, Resources,
and Conditions
Reference](https://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html).

### Usage

    directoryservice_create_directory(Name, ShortName, Password,
      Description, Size, VpcSettings, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="directoryservice_create_directory_:_Name">Name</code></td>
<td><p>[required] The fully qualified name for the directory, such as
<code>corp.example.com</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="directoryservice_create_directory_:_ShortName">ShortName</code></td>
<td><p>The NetBIOS name of the directory, such as
<code>CORP</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="directoryservice_create_directory_:_Password">Password</code></td>
<td><p>[required] The password for the directory administrator. The
directory creation process creates a directory administrator account
with the user name <code>Administrator</code> and this password.</p>
<p>If you need to change the password for the administrator account, you
can use the <code>reset_user_password</code> API call.</p>
<p>The regex pattern for this string is made up of the following
conditions:</p>
<ul>
<li><p>Length (?=^.{8,64}$) – Must be between 8 and 64
characters</p></li>
</ul>
<p>AND any 3 of the following password complexity rules required by
Active Directory:</p>
<ul>
<li><p>Numbers and upper case and lowercase
(?=.<em>\d)(?=.</em>[A-Z])(?=.*[a-z])</p></li>
<li><p>Numbers and special characters and lower case
(?=.<em>\d)(?=.</em>[^A-Za-z0-9\s])(?=.*[a-z])</p></li>
<li><p>Special characters and upper case and lower case
(?=.<em>[^A-Za-z0-9\s])(?=.</em>[A-Z])(?=.*[a-z])</p></li>
<li><p>Numbers and upper case and special characters
(?=.<em>\d)(?=.</em>[A-Z])(?=.*[^A-Za-z0-9\s])</p></li>
</ul>
<p>For additional information about how Active Directory passwords are
enforced, see <a
href="https://learn.microsoft.com/en-us/windows/security/threat-protection/security-policy-settings/password-must-meet-complexity-requirements">Password
must meet complexity requirements</a> on the Microsoft website.</p></td>
</tr>
<tr class="even">
<td><code
id="directoryservice_create_directory_:_Description">Description</code></td>
<td><p>A description for the directory.</p></td>
</tr>
<tr class="odd">
<td><code id="directoryservice_create_directory_:_Size">Size</code></td>
<td><p>[required] The size of the directory.</p></td>
</tr>
<tr class="even">
<td><code
id="directoryservice_create_directory_:_VpcSettings">VpcSettings</code></td>
<td><p>A DirectoryVpcSettings object that contains additional
information for the operation.</p></td>
</tr>
<tr class="odd">
<td><code id="directoryservice_create_directory_:_Tags">Tags</code></td>
<td><p>The tags to be assigned to the Simple AD directory.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DirectoryId = "string"
    )

### Request syntax

    svc$create_directory(
      Name = "string",
      ShortName = "string",
      Password = "string",
      Description = "string",
      Size = "Small"|"Large",
      VpcSettings = list(
        VpcId = "string",
        SubnetIds = list(
          "string"
        )
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
