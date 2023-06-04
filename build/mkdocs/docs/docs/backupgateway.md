<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backupgateway</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS Backup Gateway

### Description

Backup gateway

Backup gateway connects Backup to your hypervisor, so you can create,
store, and restore backups of your virtual machines (VMs) anywhere,
whether on-premises or in the VMware Cloud (VMC) on Amazon Web Services.

Add on-premises resources by connecting to a hypervisor through a
gateway. Backup will automatically discover the resources in your
hypervisor.

Use Backup to assign virtual or on-premises resources to a backup plan,
or run on-demand backups. Once you have backed up your resources, you
can view them and restore them like any resource supported by Backup.

To download the Amazon Web Services software to get started, navigate to
the Backup console, choose **Gateways**, then choose **Create gateway**.

### Usage

    backupgateway(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="backupgateway_:_config">config</code></td>
<td><p>Optional configuration of credentials, endpoint, and/or
region.</p>
<ul>
<li><p><strong>access_key_id</strong>: AWS access key ID</p></li>
<li><p><strong>secret_access_key</strong>: AWS secret access
key</p></li>
<li><p><strong>session_token</strong>: AWS temporary session
token</p></li>
<li><p><strong>profile</strong>: The name of a profile to use. If not
given, then the default profile is used.</p></li>
<li><p><strong>anonymous</strong>: Set anonymous credentials.</p></li>
<li><p><strong>endpoint</strong>: The complete URL to use for the
constructed client.</p></li>
<li><p><strong>region</strong>: The AWS Region used in instantiating the
client.</p></li>
<li><p><strong>close_connection</strong>: Immediately close all HTTP
connections.</p></li>
<li><p><strong>timeout</strong>: The time in seconds till a timeout
exception is thrown when attempting to make a connection. The default is
60 seconds.</p></li>
<li><p><strong>s3_force_path_style</strong>: Set this to
<code>true</code> to force the request to use path-style addressing,
i.e., <code
style="white-space: pre;">⁠http://s3.amazonaws.com/BUCKET/KEY⁠</code>.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A client for the service. You can call the service's operations using
syntax like `svc$operation(...)`, where `svc` is the name you've
assigned to the client. The available operations are listed in the
Operations section.

### Service syntax

    svc <- backupgateway(
      config = list(
        credentials = list(
          creds = list(
            access_key_id = "string",
            secret_access_key = "string",
            session_token = "string"
          ),
          profile = "string",
          anonymous = "logical"
        ),
        endpoint = "string",
        region = "string",
        close_connection = "logical",
        timeout = "numeric",
        s3_force_path_style = "logical"
      )
    )

### Operations

<table>
<tbody>
<tr class="odd">
<td style="text-align: left;"><a href="../backupgateway_associate_gateway_to_server/"> associate_gateway_to_server </a></td>
<td style="text-align: left;">Associates a backup gateway with your
server</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../backupgateway_create_gateway/"> create_gateway </a></td>
<td style="text-align: left;">Creates a backup gateway</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../backupgateway_delete_gateway/"> delete_gateway </a></td>
<td style="text-align: left;">Deletes a backup gateway</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../backupgateway_delete_hypervisor/"> delete_hypervisor </a></td>
<td style="text-align: left;">Deletes a hypervisor</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../backupgateway_disassociate_gateway_from_server/"> disassociate_gateway_from_server </a></td>
<td style="text-align: left;">Disassociates a backup gateway from the
specified server</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../backupgateway_get_bandwidth_rate_limit_schedule/"> get_bandwidth_rate_limit_schedule </a></td>
<td style="text-align: left;">Retrieves the bandwidth rate limit
schedule for a specified gateway</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../backupgateway_get_gateway/"> get_gateway </a></td>
<td style="text-align: left;">By providing the ARN (Amazon Resource
Name), this API returns the gateway</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../backupgateway_get_hypervisor/"> get_hypervisor </a></td>
<td style="text-align: left;">This action requests information about the
specified hypervisor to which the gateway will connect</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../backupgateway_get_hypervisor_property_mappings/"> get_hypervisor_property_mappings </a></td>
<td style="text-align: left;">This action retrieves the property
mappings for the specified hypervisor</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../backupgateway_get_virtual_machine/"> get_virtual_machine </a></td>
<td style="text-align: left;">By providing the ARN (Amazon Resource
Name), this API returns the virtual machine</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../backupgateway_import_hypervisor_configuration/"> import_hypervisor_configuration </a></td>
<td style="text-align: left;">Connect to a hypervisor by importing its
configuration</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../backupgateway_list_gateways/"> list_gateways </a></td>
<td style="text-align: left;">Lists backup gateways owned by an Amazon
Web Services account in an Amazon Web Services Region</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../backupgateway_list_hypervisors/"> list_hypervisors </a></td>
<td style="text-align: left;">Lists your hypervisors</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../backupgateway_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Lists the tags applied to the resource
identified by its Amazon Resource Name (ARN)</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../backupgateway_list_virtual_machines/"> list_virtual_machines </a></td>
<td style="text-align: left;">Lists your virtual machines</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../backupgateway_put_bandwidth_rate_limit_schedule/"> put_bandwidth_rate_limit_schedule </a></td>
<td style="text-align: left;">This action sets the bandwidth rate limit
schedule for a specified gateway</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../backupgateway_put_hypervisor_property_mappings/"> put_hypervisor_property_mappings </a></td>
<td style="text-align: left;">This action sets the property mappings for
the specified hypervisor</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../backupgateway_put_maintenance_start_time/"> put_maintenance_start_time </a></td>
<td style="text-align: left;">Set the maintenance start time for a
gateway</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../backupgateway_start_virtual_machines_metadata_sync/"> start_virtual_machines_metadata_sync </a></td>
<td style="text-align: left;">This action sends a request to sync
metadata across the specified virtual machines</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../backupgateway_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Tag the resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../backupgateway_test_hypervisor_configuration/"> test_hypervisor_configuration </a></td>
<td style="text-align: left;">Tests your hypervisor configuration to
validate that backup gateway can connect with the hypervisor and its
resources</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../backupgateway_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes tags from the resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../backupgateway_update_gateway_information/"> update_gateway_information </a></td>
<td style="text-align: left;">Updates a gateway's name</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../backupgateway_update_gateway_software_now/"> update_gateway_software_now </a></td>
<td style="text-align: left;">Updates the gateway virtual machine (VM)
software</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../backupgateway_update_hypervisor/"> update_hypervisor </a></td>
<td style="text-align: left;">Updates a hypervisor metadata, including
its host, username, and password</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- backupgateway()
    svc$associate_gateway_to_server(
      Foo = 123
    )

    ## End(Not run)
