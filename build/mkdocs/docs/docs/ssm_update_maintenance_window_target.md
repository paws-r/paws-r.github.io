<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_update_maintenance_window_target</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the target of an existing maintenance window

### Description

Modifies the target of an existing maintenance window. You can change
the following:

-   Name

-   Description

-   Owner

-   IDs for an ID target

-   Tags for a Tag target

-   From any supported tag type to another. The three supported tag
    types are ID target, Tag target, and resource group. For more
    information, see Target.

If a parameter is null, then the corresponding field isn't modified.

### Usage

    ssm_update_maintenance_window_target(WindowId, WindowTargetId, Targets,
      OwnerInformation, Name, Description, Replace)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_update_maintenance_window_target_:_WindowId">WindowId</code></td>
<td><p>[required] The maintenance window ID with which to modify the
target.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_update_maintenance_window_target_:_WindowTargetId">WindowTargetId</code></td>
<td><p>[required] The target ID to modify.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_update_maintenance_window_target_:_Targets">Targets</code></td>
<td><p>The targets to add or replace.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_update_maintenance_window_target_:_OwnerInformation">OwnerInformation</code></td>
<td><p>User-provided value that will be included in any Amazon
CloudWatch Events events raised while running tasks for these targets in
this maintenance window.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_update_maintenance_window_target_:_Name">Name</code></td>
<td><p>A name for the update.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_update_maintenance_window_target_:_Description">Description</code></td>
<td><p>An optional description for the update.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_update_maintenance_window_target_:_Replace">Replace</code></td>
<td><p>If <code>True</code>, then all fields that are required by the
<code>register_target_with_maintenance_window</code> operation are also
required for this API request. Optional fields that aren't specified are
set to null.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      WindowId = "string",
      WindowTargetId = "string",
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
      Description = "string"
    )

### Request syntax

    svc$update_maintenance_window_target(
      WindowId = "string",
      WindowTargetId = "string",
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
      Replace = TRUE|FALSE
    )
