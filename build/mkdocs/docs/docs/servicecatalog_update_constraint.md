<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_update_constraint</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the specified constraint

### Description

Updates the specified constraint.

### Usage

    servicecatalog_update_constraint(AcceptLanguage, Id, Description,
      Parameters)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicecatalog_update_constraint_:_AcceptLanguage">AcceptLanguage</code></td>
<td><p>The language code.</p>
<ul>
<li><p><code>jp</code> - Japanese</p></li>
<li><p><code>zh</code> - Chinese</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code id="servicecatalog_update_constraint_:_Id">Id</code></td>
<td><p>[required] The identifier of the constraint.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_update_constraint_:_Description">Description</code></td>
<td><p>The updated description of the constraint.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_update_constraint_:_Parameters">Parameters</code></td>
<td><p>The constraint parameters, in JSON format. The syntax depends on
the constraint type as follows:</p>
<p><strong>LAUNCH</strong></p>
<p>You are required to specify either the <code>RoleArn</code> or the
<code>LocalRoleName</code> but can't use both.</p>
<p>Specify the <code>RoleArn</code> property as follows:</p>
<p><code>{"RoleArn" : "arn:aws:iam::123456789012:role/LaunchRole"}</code></p>
<p>Specify the <code>LocalRoleName</code> property as follows:</p>
<p><code>{"LocalRoleName": "SCBasicLaunchRole"}</code></p>
<p>If you specify the <code>LocalRoleName</code> property, when an
account uses the launch constraint, the IAM role with that name in the
account will be used. This allows launch-role constraints to be
account-agnostic so the administrator can create fewer resources per
shared account.</p>
<p>The given role name must exist in the account used to create the
launch constraint and the account of the user who launches a product
with this launch constraint.</p>
<p>You cannot have both a <code>LAUNCH</code> and a
<code>STACKSET</code> constraint.</p>
<p>You also cannot have more than one <code>LAUNCH</code> constraint on
a product and portfolio.</p>
<p><strong>NOTIFICATION</strong></p>
<p>Specify the <code>NotificationArns</code> property as follows:</p>
<p><code
style="white-space: pre;">⁠{"NotificationArns" : ["arn:aws:sns:us-east-1:123456789012:Topic"]}⁠</code></p>
<p><strong>RESOURCE_UPDATE</strong></p>
<p>Specify the <code>TagUpdatesOnProvisionedProduct</code> property as
follows:</p>
<p><code
style="white-space: pre;">⁠{"Version":"2.0","Properties":{"TagUpdateOnProvisionedProduct":"String"}}⁠</code></p>
<p>The <code>TagUpdatesOnProvisionedProduct</code> property accepts a
string value of <code>ALLOWED</code> or <code>NOT_ALLOWED</code>.</p>
<p><strong>STACKSET</strong></p>
<p>Specify the <code>Parameters</code> property as follows:</p>
<p><code
style="white-space: pre;">⁠{"Version": "String", "Properties": {"AccountList": [ "String" ], "RegionList": [ "String" ], "AdminRole": "String", "ExecutionRole": "String"}}⁠</code></p>
<p>You cannot have both a <code>LAUNCH</code> and a
<code>STACKSET</code> constraint.</p>
<p>You also cannot have more than one <code>STACKSET</code> constraint
on a product and portfolio.</p>
<p>Products with a <code>STACKSET</code> constraint will launch an
CloudFormation stack set.</p>
<p><strong>TEMPLATE</strong></p>
<p>Specify the <code>Rules</code> property. For more information, see <a
href="https://docs.aws.amazon.com/servicecatalog/latest/adminguide/reference-template_constraint_rules.html">Template
Constraint Rules</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ConstraintDetail = list(
        ConstraintId = "string",
        Type = "string",
        Description = "string",
        Owner = "string",
        ProductId = "string",
        PortfolioId = "string"
      ),
      ConstraintParameters = "string",
      Status = "AVAILABLE"|"CREATING"|"FAILED"
    )

### Request syntax

    svc$update_constraint(
      AcceptLanguage = "string",
      Id = "string",
      Description = "string",
      Parameters = "string"
    )
