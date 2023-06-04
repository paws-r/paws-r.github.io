<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_send_diagnostic_interrupt</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sends a diagnostic interrupt to the specified Amazon EC2 instance to trigger a kernel panic (on Linux instances), or a blue screen/stop error (on Windows instances)

### Description

Sends a diagnostic interrupt to the specified Amazon EC2 instance to
trigger a *kernel panic* (on Linux instances), or a *blue screen*/*stop
error* (on Windows instances). For instances based on Intel and AMD
processors, the interrupt is received as a *non-maskable interrupt*
(NMI).

In general, the operating system crashes and reboots when a kernel panic
or stop error is triggered. The operating system can also be configured
to perform diagnostic tasks, such as generating a memory dump file,
loading a secondary kernel, or obtaining a call trace.

Before sending a diagnostic interrupt to your instance, ensure that its
operating system is configured to perform the required diagnostic tasks.

For more information about configuring your operating system to generate
a crash dump when a kernel panic or stop error occurs, see [Send a
diagnostic interrupt (for advanced
users)](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/diagnostic-interrupt.html)
(Linux instances) or [Send a diagnostic interrupt (for advanced
users)](https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/diagnostic-interrupt.html)
(Windows instances).

### Usage

    ec2_send_diagnostic_interrupt(InstanceId, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_send_diagnostic_interrupt_:_InstanceId">InstanceId</code></td>
<td><p>[required] The ID of the instance.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_send_diagnostic_interrupt_:_DryRun">DryRun</code></td>
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

    svc$send_diagnostic_interrupt(
      InstanceId = "string",
      DryRun = TRUE|FALSE
    )
