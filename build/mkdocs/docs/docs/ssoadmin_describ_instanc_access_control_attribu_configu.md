<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssoadmin_describe_instance_access_control_attribute_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the list of IAM Identity Center identity store attributes that have been configured to work with attributes-based access control (ABAC) for the specified IAM Identity Center instance

### Description

Returns the list of IAM Identity Center identity store attributes that
have been configured to work with attributes-based access control (ABAC)
for the specified IAM Identity Center instance. This will not return
attributes configured and sent by an external identity provider. For
more information about ABAC, see Attribute-Based Access Control in the
*IAM Identity Center User Guide*.

### Usage

    ssoadmin_describe_instance_access_control_attribute_configuration(
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
id="ssoadmin_describe_instance_access_control_attribute_configuration_:_InstanceArn">InstanceArn</code></td>
<td><p>[required] The ARN of the IAM Identity Center instance under
which the operation will be executed.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Status = "ENABLED"|"CREATION_IN_PROGRESS"|"CREATION_FAILED",
      StatusReason = "string",
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

### Request syntax

    svc$describe_instance_access_control_attribute_configuration(
      InstanceArn = "string"
    )
