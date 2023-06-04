<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>fsx_update_storage_virtual_machine</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates an Amazon FSx for ONTAP storage virtual machine (SVM)

### Description

Updates an Amazon FSx for ONTAP storage virtual machine (SVM).

### Usage

    fsx_update_storage_virtual_machine(ActiveDirectoryConfiguration,
      ClientRequestToken, StorageVirtualMachineId, SvmAdminPassword)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="fsx_update_storage_virtual_machine_:_ActiveDirectoryConfiguration">ActiveDirectoryConfiguration</code></td>
<td><p>Updates the Microsoft Active Directory (AD) configuration for an
SVM that is joined to an AD.</p></td>
</tr>
<tr class="even">
<td><code
id="fsx_update_storage_virtual_machine_:_ClientRequestToken">ClientRequestToken</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="fsx_update_storage_virtual_machine_:_StorageVirtualMachineId">StorageVirtualMachineId</code></td>
<td><p>[required] The ID of the SVM that you want to update, in the
format <code
style="white-space: pre;">⁠svm-0123456789abcdef0⁠</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="fsx_update_storage_virtual_machine_:_SvmAdminPassword">SvmAdminPassword</code></td>
<td><p>Enter a new SvmAdminPassword if you are updating it.</p></td>
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

    svc$update_storage_virtual_machine(
      ActiveDirectoryConfiguration = list(
        SelfManagedActiveDirectoryConfiguration = list(
          UserName = "string",
          Password = "string",
          DnsIps = list(
            "string"
          )
        )
      ),
      ClientRequestToken = "string",
      StorageVirtualMachineId = "string",
      SvmAdminPassword = "string"
    )
