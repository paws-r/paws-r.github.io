<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_network_interface_attribute</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes a network interface attribute

### Description

Describes a network interface attribute. You can specify only one
attribute at a time.

### Usage

    ec2_describe_network_interface_attribute(Attribute, DryRun,
      NetworkInterfaceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_network_interface_attribute_:_Attribute">Attribute</code></td>
<td><p>The attribute of the network interface. This parameter is
required.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_network_interface_attribute_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_network_interface_attribute_:_NetworkInterfaceId">NetworkInterfaceId</code></td>
<td><p>[required] The ID of the network interface.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Attachment = list(
        AttachTime = as.POSIXct(
          "2015-01-01"
        ),
        AttachmentId = "string",
        DeleteOnTermination = TRUE|FALSE,
        DeviceIndex = 123,
        NetworkCardIndex = 123,
        InstanceId = "string",
        InstanceOwnerId = "string",
        Status = "attaching"|"attached"|"detaching"|"detached",
        EnaSrdSpecification = list(
          EnaSrdEnabled = TRUE|FALSE,
          EnaSrdUdpSpecification = list(
            EnaSrdUdpEnabled = TRUE|FALSE
          )
        )
      ),
      Description = list(
        Value = "string"
      ),
      Groups = list(
        list(
          GroupName = "string",
          GroupId = "string"
        )
      ),
      NetworkInterfaceId = "string",
      SourceDestCheck = list(
        Value = TRUE|FALSE
      )
    )

### Request syntax

    svc$describe_network_interface_attribute(
      Attribute = "description"|"groupSet"|"sourceDestCheck"|"attachment",
      DryRun = TRUE|FALSE,
      NetworkInterfaceId = "string"
    )

### Examples

    ## Not run: 
    # This example describes the attachment attribute of the specified network
    # interface.
    svc$describe_network_interface_attribute(
      Attribute = "attachment",
      NetworkInterfaceId = "eni-686ea200"
    )

    # This example describes the description attribute of the specified
    # network interface.
    svc$describe_network_interface_attribute(
      Attribute = "description",
      NetworkInterfaceId = "eni-686ea200"
    )

    # This example describes the groupSet attribute of the specified network
    # interface.
    svc$describe_network_interface_attribute(
      Attribute = "groupSet",
      NetworkInterfaceId = "eni-686ea200"
    )

    # This example describes the sourceDestCheck attribute of the specified
    # network interface.
    svc$describe_network_interface_attribute(
      Attribute = "sourceDestCheck",
      NetworkInterfaceId = "eni-686ea200"
    )

    ## End(Not run)
