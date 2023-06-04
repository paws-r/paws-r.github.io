<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directoryservice_create_microsoft_ad</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a Microsoft AD directory in the Amazon Web Services Cloud

### Description

Creates a Microsoft AD directory in the Amazon Web Services Cloud. For
more information, see [Managed Microsoft
AD](https://docs.aws.amazon.com/directoryservice/latest/admin-guide/directory_microsoft_ad.html)
in the *Directory Service Admin Guide*.

Before you call *CreateMicrosoftAD*, ensure that all of the required
permissions have been explicitly granted through a policy. For details
about what permissions are required to run the *CreateMicrosoftAD*
operation, see [Directory Service API Permissions: Actions, Resources,
and Conditions
Reference](https://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html).

### Usage

    directoryservice_create_microsoft_ad(Name, ShortName, Password,
      Description, VpcSettings, Edition, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directoryservice_create_microsoft_ad_:_Name">Name</code></td>
<td><p>[required] The fully qualified domain name for the Managed
Microsoft AD directory, such as <code>corp.example.com</code>. This name
will resolve inside your VPC only. It does not need to be publicly
resolvable.</p></td>
</tr>
<tr class="even">
<td><code
id="directoryservice_create_microsoft_ad_:_ShortName">ShortName</code></td>
<td><p>The NetBIOS name for your domain, such as <code>CORP</code>. If
you don't specify a NetBIOS name, it will default to the first part of
your directory DNS. For example, <code>CORP</code> for the directory DNS
<code>corp.example.com</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="directoryservice_create_microsoft_ad_:_Password">Password</code></td>
<td><p>[required] The password for the default administrative user named
<code>Admin</code>.</p>
<p>If you need to change the password for the administrator account, you
can use the <code>reset_user_password</code> API call.</p></td>
</tr>
<tr class="even">
<td><code
id="directoryservice_create_microsoft_ad_:_Description">Description</code></td>
<td><p>A description for the directory. This label will appear on the
Amazon Web Services console <code
style="white-space: pre;">⁠Directory Details⁠</code> page after the
directory is created.</p></td>
</tr>
<tr class="odd">
<td><code
id="directoryservice_create_microsoft_ad_:_VpcSettings">VpcSettings</code></td>
<td><p>[required] Contains VPC information for the
<code>create_directory</code> or <code>create_microsoft_ad</code>
operation.</p></td>
</tr>
<tr class="even">
<td><code
id="directoryservice_create_microsoft_ad_:_Edition">Edition</code></td>
<td><p>Managed Microsoft AD is available in two editions:
<code>Standard</code> and <code>Enterprise</code>.
<code>Enterprise</code> is the default.</p></td>
</tr>
<tr class="odd">
<td><code
id="directoryservice_create_microsoft_ad_:_Tags">Tags</code></td>
<td><p>The tags to be assigned to the Managed Microsoft AD
directory.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DirectoryId = "string"
    )

### Request syntax

    svc$create_microsoft_ad(
      Name = "string",
      ShortName = "string",
      Password = "string",
      Description = "string",
      VpcSettings = list(
        VpcId = "string",
        SubnetIds = list(
          "string"
        )
      ),
      Edition = "Enterprise"|"Standard",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
