<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backupgateway_put_hypervisor_property_mappings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This action sets the property mappings for the specified hypervisor

### Description

This action sets the property mappings for the specified hypervisor. A
hypervisor property mapping displays the relationship of entity
properties available from the on-premises hypervisor to the properties
available in Amazon Web Services.

### Usage

    backupgateway_put_hypervisor_property_mappings(HypervisorArn,
      IamRoleArn, VmwareToAwsTagMappings)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backupgateway_put_hypervisor_property_mappings_:_HypervisorArn">HypervisorArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the
hypervisor.</p></td>
</tr>
<tr class="even">
<td><code
id="backupgateway_put_hypervisor_property_mappings_:_IamRoleArn">IamRoleArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the IAM
role.</p></td>
</tr>
<tr class="odd">
<td><code
id="backupgateway_put_hypervisor_property_mappings_:_VmwareToAwsTagMappings">VmwareToAwsTagMappings</code></td>
<td><p>[required] This action requests the mappings of on-premises
VMware tags to the Amazon Web Services tags.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      HypervisorArn = "string"
    )

### Request syntax

    svc$put_hypervisor_property_mappings(
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
