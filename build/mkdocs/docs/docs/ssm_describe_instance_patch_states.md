<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_describe_instance_patch_states</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the high-level patch state of one or more managed nodes

### Description

Retrieves the high-level patch state of one or more managed nodes.

### Usage

    ssm_describe_instance_patch_states(InstanceIds, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_describe_instance_patch_states_:_InstanceIds">InstanceIds</code></td>
<td><p>[required] The ID of the managed node for which patch state
information should be retrieved.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_describe_instance_patch_states_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of items to return. (You received this
token from a previous call.)</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_describe_instance_patch_states_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of managed nodes to return (per
page).</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      InstancePatchStates = list(
        list(
          InstanceId = "string",
          PatchGroup = "string",
          BaselineId = "string",
          SnapshotId = "string",
          InstallOverrideList = "string",
          OwnerInformation = "string",
          InstalledCount = 123,
          InstalledOtherCount = 123,
          InstalledPendingRebootCount = 123,
          InstalledRejectedCount = 123,
          MissingCount = 123,
          FailedCount = 123,
          UnreportedNotApplicableCount = 123,
          NotApplicableCount = 123,
          OperationStartTime = as.POSIXct(
            "2015-01-01"
          ),
          OperationEndTime = as.POSIXct(
            "2015-01-01"
          ),
          Operation = "Scan"|"Install",
          LastNoRebootInstallOperationTime = as.POSIXct(
            "2015-01-01"
          ),
          RebootOption = "RebootIfNeeded"|"NoReboot",
          CriticalNonCompliantCount = 123,
          SecurityNonCompliantCount = 123,
          OtherNonCompliantCount = 123
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_instance_patch_states(
      InstanceIds = list(
        "string"
      ),
      NextToken = "string",
      MaxResults = 123
    )
