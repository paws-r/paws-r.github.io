<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_register_target_with_maintenance_window</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Registers a target with a maintenance window

### Description

Registers a target with a maintenance window.

### Usage

    ssm_register_target_with_maintenance_window(WindowId, ResourceType,
      Targets, OwnerInformation, Name, Description, ClientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_register_target_with_maintenance_window_:_WindowId">WindowId</code></td>
<td><p>[required] The ID of the maintenance window the target should be
registered with.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_register_target_with_maintenance_window_:_ResourceType">ResourceType</code></td>
<td><p>[required] The type of target being registered with the
maintenance window.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_register_target_with_maintenance_window_:_Targets">Targets</code></td>
<td><p>[required] The targets to register with the maintenance window.
In other words, the managed nodes to run commands on when the
maintenance window runs.</p>
<p>If a single maintenance window task is registered with multiple
targets, its task invocations occur sequentially and not in parallel. If
your task must run on multiple targets at the same time, register a task
for each target individually and assign each task the same priority
level.</p>
<p>You can specify targets using managed node IDs, resource group names,
or tags that have been applied to managed nodes.</p>
<p><strong>Example 1</strong>: Specify managed node IDs</p>
<p><code
style="white-space: pre;">⁠Key=InstanceIds,Values=&lt;instance-id-1&gt;,&lt;instance-id-2&gt;,&lt;instance-id-3&gt;⁠</code></p>
<p><strong>Example 2</strong>: Use tag key-pairs applied to managed
nodes</p>
<p><code
style="white-space: pre;">⁠Key=tag:&lt;my-tag-key&gt;,Values=&lt;my-tag-value-1&gt;,&lt;my-tag-value-2&gt;⁠</code></p>
<p><strong>Example 3</strong>: Use tag-keys applied to managed nodes</p>
<p><code
style="white-space: pre;">⁠Key=tag-key,Values=&lt;my-tag-key-1&gt;,&lt;my-tag-key-2&gt;⁠</code></p>
<p><strong>Example 4</strong>: Use resource group names</p>
<p><code
style="white-space: pre;">⁠Key=resource-groups:Name,Values=&lt;resource-group-name&gt;⁠</code></p>
<p><strong>Example 5</strong>: Use filters for resource group types</p>
<p><code
style="white-space: pre;">⁠Key=resource-groups:ResourceTypeFilters,Values=&lt;resource-type-1&gt;,&lt;resource-type-2&gt;⁠</code></p>
<p>For <code>Key=resource-groups:ResourceTypeFilters</code>, specify
resource types in the following format</p>
<p><code
style="white-space: pre;">⁠Key=resource-groups:ResourceTypeFilters,Values=AWS::EC2::INSTANCE,AWS::EC2::VPC⁠</code></p>
<p>For more information about these examples formats, including the best
use case for each one, see <a
href="https://docs.aws.amazon.com/systems-manager/latest/userguide/mw-cli-tutorial-targets-examples.html">Examples:
Register targets with a maintenance window</a> in the <em>Amazon Web
Services Systems Manager User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_register_target_with_maintenance_window_:_OwnerInformation">OwnerInformation</code></td>
<td><p>User-provided value that will be included in any Amazon
CloudWatch Events events raised while running tasks for these targets in
this maintenance window.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_register_target_with_maintenance_window_:_Name">Name</code></td>
<td><p>An optional name for the target.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_register_target_with_maintenance_window_:_Description">Description</code></td>
<td><p>An optional description for the target.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_register_target_with_maintenance_window_:_ClientToken">ClientToken</code></td>
<td><p>User-provided idempotency token.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      WindowTargetId = "string"
    )

### Request syntax

    svc$register_target_with_maintenance_window(
      WindowId = "string",
      ResourceType = "INSTANCE"|"RESOURCE_GROUP",
      Targets = list(
        list(
          Key = "string",
          Values = list(
            "string"
          )
        )
      ),
      OwnerInformation = "string",
      Name = "string",
      Description = "string",
      ClientToken = "string"
    )
