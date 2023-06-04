<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_describe_instance_patches</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves information about the patches on the specified managed node and their state relative to the patch baseline being used for the node

### Description

Retrieves information about the patches on the specified managed node
and their state relative to the patch baseline being used for the node.

### Usage

    ssm_describe_instance_patches(InstanceId, Filters, NextToken,
      MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_describe_instance_patches_:_InstanceId">InstanceId</code></td>
<td><p>[required] The ID of the managed node whose patch state
information should be retrieved.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_describe_instance_patches_:_Filters">Filters</code></td>
<td><p>Each element in the array is a structure containing a key-value
pair.</p>
<p>Supported keys for <code>describe_instance_patches</code>include the
following:</p>
<ul>
<li><p><strong><code>Classification</code></strong></p>
<p>Sample values: <code>Security</code> |
<code>SecurityUpdates</code></p></li>
<li><p><strong><code>KBId</code></strong></p>
<p>Sample values: <code>KB4480056</code> | <code
style="white-space: pre;">⁠java-1.7.0-openjdk.x86_64⁠</code></p></li>
<li><p><strong><code>Severity</code></strong></p>
<p>Sample values: <code>Important</code> | <code>Medium</code> |
<code>Low</code></p></li>
<li><p><strong><code>State</code></strong></p>
<p>Sample values: <code>Installed</code> | <code>InstalledOther</code> |
<code>InstalledPendingReboot</code></p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="ssm_describe_instance_patches_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of items to return. (You received this
token from a previous call.)</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_describe_instance_patches_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of patches to return (per page).</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Patches = list(
        list(
          Title = "string",
          KBId = "string",
          Classification = "string",
          Severity = "string",
          State = "INSTALLED"|"INSTALLED_OTHER"|"INSTALLED_PENDING_REBOOT"|"INSTALLED_REJECTED"|"MISSING"|"NOT_APPLICABLE"|"FAILED",
          InstalledTime = as.POSIXct(
            "2015-01-01"
          ),
          CVEIds = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_instance_patches(
      InstanceId = "string",
      Filters = list(
        list(
          Key = "string",
          Values = list(
            "string"
          )
        )
      ),
      NextToken = "string",
      MaxResults = 123
    )
