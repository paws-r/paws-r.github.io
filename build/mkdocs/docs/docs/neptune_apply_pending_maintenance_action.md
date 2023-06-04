<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>neptune_apply_pending_maintenance_action</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Applies a pending maintenance action to a resource (for example, to a DB instance)

### Description

Applies a pending maintenance action to a resource (for example, to a DB
instance).

### Usage

    neptune_apply_pending_maintenance_action(ResourceIdentifier,
      ApplyAction, OptInType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="neptune_apply_pending_maintenance_action_:_ResourceIdentifier">ResourceIdentifier</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource that
the pending maintenance action applies to. For information about
creating an ARN, see <a
href="https://docs.aws.amazon.com/neptune/latest/userguide/#tagging.ARN.Constructing">Constructing
an Amazon Resource Name (ARN)</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="neptune_apply_pending_maintenance_action_:_ApplyAction">ApplyAction</code></td>
<td><p>[required] The pending maintenance action to apply to this
resource.</p>
<p>Valid values: <code>system-update</code>,
<code>db-upgrade</code></p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_apply_pending_maintenance_action_:_OptInType">OptInType</code></td>
<td><p>[required] A value that specifies the type of opt-in request, or
undoes an opt-in request. An opt-in request of type
<code>immediate</code> can't be undone.</p>
<p>Valid values:</p>
<ul>
<li><p><code>immediate</code> - Apply the maintenance action
immediately.</p></li>
<li><p><code>next-maintenance</code> - Apply the maintenance action
during the next maintenance window for the resource.</p></li>
<li><p><code style="white-space: pre;">⁠undo-opt-in⁠</code> - Cancel any
existing <code>next-maintenance</code> opt-in requests.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ResourcePendingMaintenanceActions = list(
        ResourceIdentifier = "string",
        PendingMaintenanceActionDetails = list(
          list(
            Action = "string",
            AutoAppliedAfterDate = as.POSIXct(
              "2015-01-01"
            ),
            ForcedApplyDate = as.POSIXct(
              "2015-01-01"
            ),
            OptInStatus = "string",
            CurrentApplyDate = as.POSIXct(
              "2015-01-01"
            ),
            Description = "string"
          )
        )
      )
    )

### Request syntax

    svc$apply_pending_maintenance_action(
      ResourceIdentifier = "string",
      ApplyAction = "string",
      OptInType = "string"
    )
