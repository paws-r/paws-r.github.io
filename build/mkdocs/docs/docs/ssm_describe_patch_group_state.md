<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_describe_patch_group_state</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns high-level aggregated patch compliance state information for a patch group

### Description

Returns high-level aggregated patch compliance state information for a
patch group.

### Usage

    ssm_describe_patch_group_state(PatchGroup)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_describe_patch_group_state_:_PatchGroup">PatchGroup</code></td>
<td><p>[required] The name of the patch group whose patch snapshot
should be retrieved.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Instances = 123,
      InstancesWithInstalledPatches = 123,
      InstancesWithInstalledOtherPatches = 123,
      InstancesWithInstalledPendingRebootPatches = 123,
      InstancesWithInstalledRejectedPatches = 123,
      InstancesWithMissingPatches = 123,
      InstancesWithFailedPatches = 123,
      InstancesWithNotApplicablePatches = 123,
      InstancesWithUnreportedNotApplicablePatches = 123,
      InstancesWithCriticalNonCompliantPatches = 123,
      InstancesWithSecurityNonCompliantPatches = 123,
      InstancesWithOtherNonCompliantPatches = 123
    )

### Request syntax

    svc$describe_patch_group_state(
      PatchGroup = "string"
    )
