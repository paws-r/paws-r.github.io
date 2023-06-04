<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>fsx_describe_storage_virtual_machines</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes one or more Amazon FSx for NetApp ONTAP storage virtual machines (SVMs)

### Description

Describes one or more Amazon FSx for NetApp ONTAP storage virtual
machines (SVMs).

### Usage

    fsx_describe_storage_virtual_machines(StorageVirtualMachineIds, Filters,
      MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="fsx_describe_storage_virtual_machines_:_StorageVirtualMachineIds">StorageVirtualMachineIds</code></td>
<td><p>Enter the ID of one or more SVMs that you want to view.</p></td>
</tr>
<tr class="even">
<td><code
id="fsx_describe_storage_virtual_machines_:_Filters">Filters</code></td>
<td><p>Enter a filter name:value pair to view a select set of
SVMs.</p></td>
</tr>
<tr class="odd">
<td><code
id="fsx_describe_storage_virtual_machines_:_MaxResults">MaxResults</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="fsx_describe_storage_virtual_machines_:_NextToken">NextToken</code></td>
<td></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      StorageVirtualMachines = list(
        list(
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
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_storage_virtual_machines(
      StorageVirtualMachineIds = list(
        "string"
      ),
      Filters = list(
        list(
          Name = "file-system-id",
          Values = list(
            "string"
          )
        )
      ),
      MaxResults = 123,
      NextToken = "string"
    )
