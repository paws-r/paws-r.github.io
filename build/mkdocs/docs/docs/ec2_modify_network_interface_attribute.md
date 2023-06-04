<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_modify_network_interface_attribute</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the specified network interface attribute

### Description

Modifies the specified network interface attribute. You can specify only
one attribute at a time. You can use this action to attach and detach
security groups from an existing EC2 instance.

### Usage

    ec2_modify_network_interface_attribute(Attachment, Description, DryRun,
      Groups, NetworkInterfaceId, SourceDestCheck, EnaSrdSpecification)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_modify_network_interface_attribute_:_Attachment">Attachment</code></td>
<td><p>Information about the interface attachment. If modifying the
<code style="white-space: pre;">⁠delete on termination⁠</code> attribute,
you must specify the ID of the interface attachment.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_network_interface_attribute_:_Description">Description</code></td>
<td><p>A description for the network interface.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_network_interface_attribute_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_network_interface_attribute_:_Groups">Groups</code></td>
<td><p>Changes the security groups for the network interface. The new
set of groups you specify replaces the current set. You must specify at
least one group, even if it's just the default security group in the
VPC. You must specify the ID of the security group, not the
name.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_network_interface_attribute_:_NetworkInterfaceId">NetworkInterfaceId</code></td>
<td><p>[required] The ID of the network interface.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_network_interface_attribute_:_SourceDestCheck">SourceDestCheck</code></td>
<td><p>Enable or disable source/destination checks, which ensure that
the instance is either the source or the destination of any traffic that
it receives. If the value is <code>true</code>, source/destination
checks are enabled; otherwise, they are disabled. The default value is
<code>true</code>. You must disable source/destination checks if the
instance runs services such as network address translation, routing, or
firewalls.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_network_interface_attribute_:_EnaSrdSpecification">EnaSrdSpecification</code></td>
<td><p>Updates the ENA Express configuration for the network interface
that’s attached to the instance.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$modify_network_interface_attribute(
      Attachment = list(
        AttachmentId = "string",
        DeleteOnTermination = TRUE|FALSE
      ),
      Description = list(
        Value = "string"
      ),
      DryRun = TRUE|FALSE,
      Groups = list(
        "string"
      ),
      NetworkInterfaceId = "string",
      SourceDestCheck = list(
        Value = TRUE|FALSE
      ),
      EnaSrdSpecification = list(
        EnaSrdEnabled = TRUE|FALSE,
        EnaSrdUdpSpecification = list(
          EnaSrdUdpEnabled = TRUE|FALSE
        )
      )
    )

### Examples

    ## Not run: 
    # This example modifies the attachment attribute of the specified network
    # interface.
    svc$modify_network_interface_attribute(
      Attachment = list(
        AttachmentId = "eni-attach-43348162",
        DeleteOnTermination = FALSE
      ),
      NetworkInterfaceId = "eni-686ea200"
    )

    # This example modifies the description attribute of the specified network
    # interface.
    svc$modify_network_interface_attribute(
      Description = list(
        Value = "My description"
      ),
      NetworkInterfaceId = "eni-686ea200"
    )

    # This example command modifies the groupSet attribute of the specified
    # network interface.
    svc$modify_network_interface_attribute(
      Groups = list(
        "sg-903004f8",
        "sg-1a2b3c4d"
      ),
      NetworkInterfaceId = "eni-686ea200"
    )

    # This example command modifies the sourceDestCheck attribute of the
    # specified network interface.
    svc$modify_network_interface_attribute(
      NetworkInterfaceId = "eni-686ea200",
      SourceDestCheck = list(
        Value = FALSE
      )
    )

    ## End(Not run)
