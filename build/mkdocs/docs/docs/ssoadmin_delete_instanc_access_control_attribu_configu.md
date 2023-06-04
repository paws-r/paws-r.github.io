<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssoadmin_delete_instance_access_control_attribute_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disables the attributes-based access control (ABAC) feature for the specified IAM Identity Center instance and deletes all of the attribute mappings that have been configured

### Description

Disables the attributes-based access control (ABAC) feature for the
specified IAM Identity Center instance and deletes all of the attribute
mappings that have been configured. Once deleted, any attributes that
are received from an identity source and any custom attributes you have
previously configured will not be passed. For more information about
ABAC, see Attribute-Based Access Control in the *IAM Identity Center
User Guide*.

### Usage

    ssoadmin_delete_instance_access_control_attribute_configuration(
      InstanceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssoadmin_delete_instance_access_control_attribute_configuration_:_InstanceArn">InstanceArn</code></td>
<td><p>[required] The ARN of the IAM Identity Center instance under
which the operation will be executed.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_instance_access_control_attribute_configuration(
      InstanceArn = "string"
    )
