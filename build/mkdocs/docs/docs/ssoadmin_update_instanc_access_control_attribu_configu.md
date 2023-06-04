<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssoadmin_update_instance_access_control_attribute_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the IAM Identity Center identity store attributes that you can use with the IAM Identity Center instance for attributes-based access control (ABAC)

### Description

Updates the IAM Identity Center identity store attributes that you can
use with the IAM Identity Center instance for attributes-based access
control (ABAC). When using an external identity provider as an identity
source, you can pass attributes through the SAML assertion as an
alternative to configuring attributes from the IAM Identity Center
identity store. If a SAML assertion passes any of these attributes, IAM
Identity Center replaces the attribute value with the value from the IAM
Identity Center identity store. For more information about ABAC, see
Attribute-Based Access Control in the *IAM Identity Center User Guide*.

### Usage

    ssoadmin_update_instance_access_control_attribute_configuration(
      InstanceArn, InstanceAccessControlAttributeConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssoadmin_update_instance_access_control_attribute_configuration_:_InstanceArn">InstanceArn</code></td>
<td><p>[required] The ARN of the IAM Identity Center instance under
which the operation will be executed.</p></td>
</tr>
<tr class="even">
<td><code
id="ssoadmin_update_instance_access_control_attribute_configuration_:_InstanceAccessControlAttributeConfiguration">InstanceAccessControlAttributeConfiguration</code></td>
<td><p>[required] Updates the attributes for your ABAC
configuration.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_instance_access_control_attribute_configuration(
      InstanceArn = "string",
      InstanceAccessControlAttributeConfiguration = list(
        AccessControlAttributes = list(
          list(
            Key = "string",
            Value = list(
              Source = list(
                "string"
              )
            )
          )
        )
      )
    )
