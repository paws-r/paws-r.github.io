<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backupgateway_get_hypervisor_property_mappings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This action retrieves the property mappings for the specified hypervisor

### Description

This action retrieves the property mappings for the specified
hypervisor. A hypervisor property mapping displays the relationship of
entity properties available from the on-premises hypervisor to the
properties available in Amazon Web Services.

### Usage

    backupgateway_get_hypervisor_property_mappings(HypervisorArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backupgateway_get_hypervisor_property_mappings_:_HypervisorArn">HypervisorArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the
hypervisor.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      HypervisorArn = "string",
      IamRoleArn = "string",
      VmwareToAwsTagMappings = list(
        list(
          AwsTagKey = "string",
          AwsTagValue = "string",
          VmwareCategory = "string",
          VmwareTagName = "string"
        )
      )
    )

### Request syntax

    svc$get_hypervisor_property_mappings(
      HypervisorArn = "string"
    )
