<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>fsx_create_storage_virtual_machine</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a storage virtual machine (SVM) for an Amazon FSx for ONTAP file system

### Description

Creates a storage virtual machine (SVM) for an Amazon FSx for ONTAP file
system.

### Usage

    fsx_create_storage_virtual_machine(ActiveDirectoryConfiguration,
      ClientRequestToken, FileSystemId, Name, SvmAdminPassword, Tags,
      RootVolumeSecurityStyle)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="fsx_create_storage_virtual_machine_:_ActiveDirectoryConfiguration">ActiveDirectoryConfiguration</code></td>
<td><p>Describes the self-managed Microsoft Active Directory to which
you want to join the SVM. Joining an Active Directory provides user
authentication and access control for SMB clients, including Microsoft
Windows and macOS client accessing the file system.</p></td>
</tr>
<tr class="even">
<td><code
id="fsx_create_storage_virtual_machine_:_ClientRequestToken">ClientRequestToken</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="fsx_create_storage_virtual_machine_:_FileSystemId">FileSystemId</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="fsx_create_storage_virtual_machine_:_Name">Name</code></td>
<td><p>[required] The name of the SVM.</p></td>
</tr>
<tr class="odd">
<td><code
id="fsx_create_storage_virtual_machine_:_SvmAdminPassword">SvmAdminPassword</code></td>
<td><p>The password to use when managing the SVM using the NetApp ONTAP
CLI or REST API. If you do not specify a password, you can still use the
file system's <code>fsxadmin</code> user to manage the SVM.</p></td>
</tr>
<tr class="even">
<td><code
id="fsx_create_storage_virtual_machine_:_Tags">Tags</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="fsx_create_storage_virtual_machine_:_RootVolumeSecurityStyle">RootVolumeSecurityStyle</code></td>
<td><p>The security style of the root volume of the SVM. Specify one of
the following values:</p>
<ul>
<li><p><code>UNIX</code> if the file system is managed by a UNIX
administrator, the majority of users are NFS clients, and an application
accessing the data uses a UNIX user as the service account.</p></li>
<li><p><code>NTFS</code> if the file system is managed by a Windows
administrator, the majority of users are SMB clients, and an application
accessing the data uses a Windows user as the service account.</p></li>
<li><p><code>MIXED</code> if the file system is managed by both UNIX and
Windows administrators and users consist of both NFS and SMB
clients.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      StorageVirtualMachine = list(
        ActiveDirectoryConfiguration = list(
          NetBiosName = "string",
          SelfManagedActiveDirectoryConfiguration = list(
            DomainName = "string",
            OrganizationalUnitDistinguishedName = "string",
            FileSystemAdministratorsGroup = "string",
            UserName = "string",
            DnsIps = list(
              "string"
            )
          )
        ),
        CreationTime = as.POSIXct(
          "2015-01-01"
        ),
        Endpoints = list(
          Iscsi = list(
            DNSName = "string",
            IpAddresses = list(
              "string"
            )
          ),
          Management = list(
            DNSName = "string",
            IpAddresses = list(
              "string"
            )
          ),
          Nfs = list(
            DNSName = "string",
            IpAddresses = list(
              "string"
            )
          ),
          Smb = list(
            DNSName = "string",
            IpAddresses = list(
              "string"
            )
          )
        ),
        FileSystemId = "string",
        Lifecycle = "CREATED"|"CREATING"|"DELETING"|"FAILED"|"MISCONFIGURED"|"PENDING",
        Name = "string",
        ResourceARN = "string",
        StorageVirtualMachineId = "string",
        Subtype = "DEFAULT"|"DP_DESTINATION"|"SYNC_DESTINATION"|"SYNC_SOURCE",
        UUID = "string",
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        ),
        LifecycleTransitionReason = list(
          Message = "string"
        ),
        RootVolumeSecurityStyle = "UNIX"|"NTFS"|"MIXED"
      )
    )

### Request syntax

    svc$create_storage_virtual_machine(
      ActiveDirectoryConfiguration = list(
        NetBiosName = "string",
        SelfManagedActiveDirectoryConfiguration = list(
          DomainName = "string",
          OrganizationalUnitDistinguishedName = "string",
          FileSystemAdministratorsGroup = "string",
          UserName = "string",
          Password = "string",
          DnsIps = list(
            "string"
          )
        )
      ),
      ClientRequestToken = "string",
      FileSystemId = "string",
      Name = "string",
      SvmAdminPassword = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      RootVolumeSecurityStyle = "UNIX"|"NTFS"|"MIXED"
    )
