<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticbeanstalk_associate_environment_operations_role</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Add or change the operations role used by an environment

### Description

Add or change the operations role used by an environment. After this
call is made, Elastic Beanstalk uses the associated operations role for
permissions to downstream services during subsequent calls acting on
this environment. For more information, see [Operations
roles](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/) in the
*AWS Elastic Beanstalk Developer Guide*.

### Usage

    elasticbeanstalk_associate_environment_operations_role(EnvironmentName,
      OperationsRole)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticbeanstalk_associate_environment_operations_role_:_EnvironmentName">EnvironmentName</code></td>
<td><p>[required] The name of the environment to which to set the
operations role.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_associate_environment_operations_role_:_OperationsRole">OperationsRole</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of an existing IAM role
to be used as the environment's operations role.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$associate_environment_operations_role(
      EnvironmentName = "string",
      OperationsRole = "string"
    )
