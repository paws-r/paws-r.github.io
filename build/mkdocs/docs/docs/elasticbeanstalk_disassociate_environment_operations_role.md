<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticbeanstalk_disassociate_environment_operations_role</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disassociate the operations role from an environment

### Description

Disassociate the operations role from an environment. After this call is
made, Elastic Beanstalk uses the caller's permissions for permissions to
downstream services during subsequent calls acting on this environment.
For more information, see [Operations
roles](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/) in the
*AWS Elastic Beanstalk Developer Guide*.

### Usage

    elasticbeanstalk_disassociate_environment_operations_role(
      EnvironmentName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticbeanstalk_disassociate_environment_operations_role_:_EnvironmentName">EnvironmentName</code></td>
<td><p>[required] The name of the environment from which to disassociate
the operations role.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$disassociate_environment_operations_role(
      EnvironmentName = "string"
    )
