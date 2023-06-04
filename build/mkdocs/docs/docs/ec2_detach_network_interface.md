<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_detach_network_interface</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Detaches a network interface from an instance

### Description

Detaches a network interface from an instance.

### Usage

    ec2_detach_network_interface(AttachmentId, DryRun, Force)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_detach_network_interface_:_AttachmentId">AttachmentId</code></td>
<td><p>[required] The ID of the attachment.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_detach_network_interface_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_detach_network_interface_:_Force">Force</code></td>
<td><p>Specifies whether to force a detachment.</p>
<ul>
<li><p>Use the <code>Force</code> parameter only as a last resort to
detach a network interface from a failed instance.</p></li>
<li><p>If you use the <code>Force</code> parameter to detach a network
interface, you might not be able to attach a different network interface
to the same index on the instance without first stopping and starting
the instance.</p></li>
<li><p>If you force the detachment of a network interface, the <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html">instance
metadata</a> might not get updated. This means that the attributes
associated with the detached network interface might still be visible.
The instance metadata will get updated when you stop and start the
instance.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$detach_network_interface(
      AttachmentId = "string",
      DryRun = TRUE|FALSE,
      Force = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # This example detaches the specified network interface from its attached
    # instance.
    svc$detach_network_interface(
      AttachmentId = "eni-attach-66c4350a"
    )

    ## End(Not run)
