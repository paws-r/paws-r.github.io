<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_get_console_screenshot</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieve a JPG-format screenshot of a running instance to help with troubleshooting

### Description

Retrieve a JPG-format screenshot of a running instance to help with
troubleshooting.

The returned content is Base64-encoded.

### Usage

    ec2_get_console_screenshot(DryRun, InstanceId, WakeUp)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_get_console_screenshot_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_get_console_screenshot_:_InstanceId">InstanceId</code></td>
<td><p>[required] The ID of the instance.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_get_console_screenshot_:_WakeUp">WakeUp</code></td>
<td><p>When set to <code>true</code>, acts as keystroke input and wakes
up an instance that's in standby or "sleep" mode.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ImageData = "string",
      InstanceId = "string"
    )

### Request syntax

    svc$get_console_screenshot(
      DryRun = TRUE|FALSE,
      InstanceId = "string",
      WakeUp = TRUE|FALSE
    )
