<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_reboot_instances</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Requests a reboot of the specified instances

### Description

Requests a reboot of the specified instances. This operation is
asynchronous; it only queues a request to reboot the specified
instances. The operation succeeds if the instances are valid and belong
to you. Requests to reboot terminated instances are ignored.

If an instance does not cleanly shut down within a few minutes, Amazon
EC2 performs a hard reboot.

For more information about troubleshooting, see [Troubleshoot an
unreachable
instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-console.html)
in the *Amazon EC2 User Guide*.

### Usage

    ec2_reboot_instances(InstanceIds, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_reboot_instances_:_InstanceIds">InstanceIds</code></td>
<td><p>[required] The instance IDs.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_reboot_instances_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$reboot_instances(
      InstanceIds = list(
        "string"
      ),
      DryRun = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # This example reboots the specified EC2 instance.
    svc$reboot_instances(
      InstanceIds = list(
        "i-1234567890abcdef5"
      )
    )

    ## End(Not run)
