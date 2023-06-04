<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backupgateway_update_hypervisor</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a hypervisor metadata, including its host, username, and password

### Description

Updates a hypervisor metadata, including its host, username, and
password. Specify which hypervisor to update using the Amazon Resource
Name (ARN) of the hypervisor in your request.

### Usage

    backupgateway_update_hypervisor(Host, HypervisorArn, LogGroupArn, Name,
      Password, Username)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="backupgateway_update_hypervisor_:_Host">Host</code></td>
<td><p>The updated host of the hypervisor. This can be either an IP
address or a fully-qualified domain name (FQDN).</p></td>
</tr>
<tr class="even">
<td><code
id="backupgateway_update_hypervisor_:_HypervisorArn">HypervisorArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the hypervisor to
update.</p></td>
</tr>
<tr class="odd">
<td><code
id="backupgateway_update_hypervisor_:_LogGroupArn">LogGroupArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the group of gateways within
the requested log.</p></td>
</tr>
<tr class="even">
<td><code id="backupgateway_update_hypervisor_:_Name">Name</code></td>
<td><p>The updated name for the hypervisor</p></td>
</tr>
<tr class="odd">
<td><code
id="backupgateway_update_hypervisor_:_Password">Password</code></td>
<td><p>The updated password for the hypervisor.</p></td>
</tr>
<tr class="even">
<td><code
id="backupgateway_update_hypervisor_:_Username">Username</code></td>
<td><p>The updated username for the hypervisor.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      HypervisorArn = "string"
    )

### Request syntax

    svc$update_hypervisor(
      Host = "string",
      HypervisorArn = "string",
      LogGroupArn = "string",
      Name = "string",
      Password = "string",
      Username = "string"
    )
