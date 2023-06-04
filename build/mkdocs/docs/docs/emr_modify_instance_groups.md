<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emr_modify_instance_groups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## ModifyInstanceGroups modifies the number of nodes and configuration settings of an instance group

### Description

ModifyInstanceGroups modifies the number of nodes and configuration
settings of an instance group. The input parameters include the new
target instance count for the group and the instance group ID. The call
will either succeed or fail atomically.

### Usage

    emr_modify_instance_groups(ClusterId, InstanceGroups)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="emr_modify_instance_groups_:_ClusterId">ClusterId</code></td>
<td><p>The ID of the cluster to which the instance group
belongs.</p></td>
</tr>
<tr class="even">
<td><code
id="emr_modify_instance_groups_:_InstanceGroups">InstanceGroups</code></td>
<td><p>Instance groups to change.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$modify_instance_groups(
      ClusterId = "string",
      InstanceGroups = list(
        list(
          InstanceGroupId = "string",
          InstanceCount = 123,
          EC2InstanceIdsToTerminate = list(
            "string"
          ),
          ShrinkPolicy = list(
            DecommissionTimeout = 123,
            InstanceResizePolicy = list(
              InstancesToTerminate = list(
                "string"
              ),
              InstancesToProtect = list(
                "string"
              ),
              InstanceTerminationTimeout = 123
            )
          ),
          ReconfigurationType = "OVERWRITE"|"MERGE",
          Configurations = list(
            list(
              Classification = "string",
              Configurations = list(),
              Properties = list(
                "string"
              )
            )
          )
        )
      )
    )
