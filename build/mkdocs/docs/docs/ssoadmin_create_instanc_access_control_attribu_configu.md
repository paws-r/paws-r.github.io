<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssoadmin_create_instance_access_control_attribute_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Enables the attributes-based access control (ABAC) feature for the specified IAM Identity Center instance

### Description

Enables the attributes-based access control (ABAC) feature for the
specified IAM Identity Center instance. You can also specify new
attributes to add to your ABAC configuration during the enabling
process. For more information about ABAC, see Attribute-Based Access
Control in the *IAM Identity Center User Guide*.

After a successful response, call
`describe_instance_access_control_attribute_configuration` to validate
that `InstanceAccessControlAttributeConfiguration` was created.

### Usage

    ssoadmin_create_instance_access_control_attribute_configuration(
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
id="ssoadmin_create_instance_access_control_attribute_configuration_:_InstanceArn">InstanceArn</code></td>
<td><p>[required] The ARN of the IAM Identity Center instance under
which the operation will be executed.</p></td>
</tr>
<tr class="even">
<td><code
id="ssoadmin_create_instance_access_control_attribute_configuration_:_InstanceAccessControlAttributeConfiguration">InstanceAccessControlAttributeConfiguration</code></td>
<td><p>[required] Specifies the IAM Identity Center identity store
attributes to add to your ABAC configuration. When using an external
identity provider as an identity source, you can pass attributes through
the SAML assertion. Doing so provides an alternative to configuring
attributes from the IAM Identity Center identity store. If a SAML
assertion passes any of these attributes, IAM Identity Center will
replace the attribute value with the value from the IAM Identity Center
identity store.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_instance_access_control_attribute_configuration(
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
