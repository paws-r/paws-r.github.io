<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backupgateway_import_hypervisor_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Connect to a hypervisor by importing its configuration

### Description

Connect to a hypervisor by importing its configuration.

### Usage

    backupgateway_import_hypervisor_configuration(Host, KmsKeyArn, Name,
      Password, Tags, Username)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backupgateway_import_hypervisor_configuration_:_Host">Host</code></td>
<td><p>[required] The server host of the hypervisor. This can be either
an IP address or a fully-qualified domain name (FQDN).</p></td>
</tr>
<tr class="even">
<td><code
id="backupgateway_import_hypervisor_configuration_:_KmsKeyArn">KmsKeyArn</code></td>
<td><p>The Key Management Service for the hypervisor.</p></td>
</tr>
<tr class="odd">
<td><code
id="backupgateway_import_hypervisor_configuration_:_Name">Name</code></td>
<td><p>[required] The name of the hypervisor.</p></td>
</tr>
<tr class="even">
<td><code
id="backupgateway_import_hypervisor_configuration_:_Password">Password</code></td>
<td><p>The password for the hypervisor.</p></td>
</tr>
<tr class="odd">
<td><code
id="backupgateway_import_hypervisor_configuration_:_Tags">Tags</code></td>
<td><p>The tags of the hypervisor configuration to import.</p></td>
</tr>
<tr class="even">
<td><code
id="backupgateway_import_hypervisor_configuration_:_Username">Username</code></td>
<td><p>The username for the hypervisor.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      HypervisorArn = "string"
    )

### Request syntax

    svc$import_hypervisor_configuration(
      Host = "string",
      KmsKeyArn = "string",
      Name = "string",
      Password = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      Username = "string"
    )
