<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backupgateway_list_virtual_machines</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists your virtual machines

### Description

Lists your virtual machines.

### Usage

    backupgateway_list_virtual_machines(HypervisorArn, MaxResults,
      NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backupgateway_list_virtual_machines_:_HypervisorArn">HypervisorArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the hypervisor connected to
your virtual machine.</p></td>
</tr>
<tr class="even">
<td><code
id="backupgateway_list_virtual_machines_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of virtual machines to list.</p></td>
</tr>
<tr class="odd">
<td><code
id="backupgateway_list_virtual_machines_:_NextToken">NextToken</code></td>
<td><p>The next item following a partial list of returned resources. For
example, if a request is made to return <code>maxResults</code> number
of resources, <code>NextToken</code> allows you to return more items in
your list starting at the location pointed to by the next
token.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      VirtualMachines = list(
        list(
          HostName = "string",
          HypervisorId = "string",
          LastBackupDate = as.POSIXct(
            "2015-01-01"
          ),
          Name = "string",
          Path = "string",
          ResourceArn = "string"
        )
      )
    )

### Request syntax

    svc$list_virtual_machines(
      HypervisorArn = "string",
      MaxResults = 123,
      NextToken = "string"
    )
