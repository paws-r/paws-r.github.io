<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_get_console_output</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the console output for the specified instance

### Description

Gets the console output for the specified instance. For Linux instances,
the instance console output displays the exact console output that would
normally be displayed on a physical monitor attached to a computer. For
Windows instances, the instance console output includes the last three
system event log errors.

By default, the console output returns buffered information that was
posted shortly after an instance transition state (start, stop, reboot,
or terminate). This information is available for at least one hour after
the most recent post. Only the most recent 64 KB of console output is
available.

You can optionally retrieve the latest serial console output at any time
during the instance lifecycle. This option is supported on instance
types that use the Nitro hypervisor.

For more information, see [Instance console
output](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-console.html#instance-console-console-output)
in the *Amazon EC2 User Guide*.

### Usage

    ec2_get_console_output(InstanceId, DryRun, Latest)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_get_console_output_:_InstanceId">InstanceId</code></td>
<td><p>[required] The ID of the instance.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_get_console_output_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_get_console_output_:_Latest">Latest</code></td>
<td><p>When enabled, retrieves the latest console output for the
instance.</p>
<p>Default: disabled (<code>false</code>)</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      InstanceId = "string",
      Output = "string",
      Timestamp = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$get_console_output(
      InstanceId = "string",
      DryRun = TRUE|FALSE,
      Latest = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # This example gets the console output for the specified instance.
    svc$get_console_output(
      InstanceId = "i-1234567890abcdef0"
    )

    ## End(Not run)
