<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_update_managed_instance_role</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Changes the Identity and Access Management (IAM) role that is assigned to the on-premises server, edge device, or virtual machines (VM)

### Description

Changes the Identity and Access Management (IAM) role that is assigned
to the on-premises server, edge device, or virtual machines (VM). IAM
roles are first assigned to these hybrid nodes during the activation
process. For more information, see `create_activation`.

### Usage

    ssm_update_managed_instance_role(InstanceId, IamRole)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_update_managed_instance_role_:_InstanceId">InstanceId</code></td>
<td><p>[required] The ID of the managed node where you want to update
the role.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_update_managed_instance_role_:_IamRole">IamRole</code></td>
<td><p>[required] The name of the Identity and Access Management (IAM)
role that you want to assign to the managed node. This IAM role must
provide AssumeRole permissions for the Amazon Web Services Systems
Manager service principal <code>ssm.amazonaws.com</code>. For more
information, see <a
href="https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-service-role.html">Create
an IAM service role for a hybrid environment</a> in the <em>Amazon Web
Services Systems Manager User Guide</em>.</p>
<p>You can't specify an IAM service-linked role for this parameter. You
must create a unique role.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_managed_instance_role(
      InstanceId = "string",
      IamRole = "string"
    )
