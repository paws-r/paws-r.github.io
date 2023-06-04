<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directoryservice_connect_directory</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an AD Connector to connect to a self-managed directory

### Description

Creates an AD Connector to connect to a self-managed directory.

Before you call `connect_directory`, ensure that all of the required
permissions have been explicitly granted through a policy. For details
about what permissions are required to run the `connect_directory`
operation, see [Directory Service API Permissions: Actions, Resources,
and Conditions
Reference](https://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html).

### Usage

    directoryservice_connect_directory(Name, ShortName, Password,
      Description, Size, ConnectSettings, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directoryservice_connect_directory_:_Name">Name</code></td>
<td><p>[required] The fully qualified name of your self-managed
directory, such as <code>corp.example.com</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="directoryservice_connect_directory_:_ShortName">ShortName</code></td>
<td><p>The NetBIOS name of your self-managed directory, such as
<code>CORP</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="directoryservice_connect_directory_:_Password">Password</code></td>
<td><p>[required] The password for your self-managed user
account.</p></td>
</tr>
<tr class="even">
<td><code
id="directoryservice_connect_directory_:_Description">Description</code></td>
<td><p>A description for the directory.</p></td>
</tr>
<tr class="odd">
<td><code
id="directoryservice_connect_directory_:_Size">Size</code></td>
<td><p>[required] The size of the directory.</p></td>
</tr>
<tr class="even">
<td><code
id="directoryservice_connect_directory_:_ConnectSettings">ConnectSettings</code></td>
<td><p>[required] A DirectoryConnectSettings object that contains
additional information for the operation.</p></td>
</tr>
<tr class="odd">
<td><code
id="directoryservice_connect_directory_:_Tags">Tags</code></td>
<td><p>The tags to be assigned to AD Connector.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DirectoryId = "string"
    )

### Request syntax

    svc$connect_directory(
      Name = "string",
      ShortName = "string",
      Password = "string",
      Description = "string",
      Size = "Small"|"Large",
      ConnectSettings = list(
        VpcId = "string",
        SubnetIds = list(
          "string"
        ),
        CustomerDnsIps = list(
          "string"
        ),
        CustomerUserName = "string"
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
