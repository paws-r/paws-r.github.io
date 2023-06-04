<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudformation_set_type_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Specifies the configuration data for a registered CloudFormation extension, in the given account and region

### Description

Specifies the configuration data for a registered CloudFormation
extension, in the given account and region.

To view the current configuration data for an extension, refer to the
`ConfigurationSchema` element of `describe_type`. For more information,
see [Configuring extensions at the account
level](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/#registry-set-configuration)
in the *CloudFormation User Guide*.

It's strongly recommended that you use dynamic references to restrict
sensitive configuration definitions, such as third-party credentials.
For more details on dynamic references, see [Using dynamic references to
specify template values](https://docs.aws.amazon.com/) in the
*CloudFormation User Guide*.

### Usage

    cloudformation_set_type_configuration(TypeArn, Configuration,
      ConfigurationAlias, TypeName, Type)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudformation_set_type_configuration_:_TypeArn">TypeArn</code></td>
<td><p>The Amazon Resource Name (ARN) for the extension, in this account
and region.</p>
<p>For public extensions, this will be the ARN assigned when you <a
href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_ActivateType.html">activate
the type</a> in this account and region. For private extensions, this
will be the ARN assigned when you <a
href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_RegisterType.html">register
the type</a> in this account and region.</p>
<p>Do not include the extension versions suffix at the end of the ARN.
You can set the configuration for an extension, but not for a specific
extension version.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_set_type_configuration_:_Configuration">Configuration</code></td>
<td><p>[required] The configuration data for the extension, in this
account and region.</p>
<p>The configuration data must be formatted as JSON, and validate
against the schema returned in the <code>ConfigurationSchema</code>
response element of <a
href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_DescribeType.html">API_DescribeType</a>.
For more information, see <a
href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-model.html#resource-type-howto-configuration">Defining
account-level configuration data for an extension</a> in the
<em>CloudFormation CLI User Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudformation_set_type_configuration_:_ConfigurationAlias">ConfigurationAlias</code></td>
<td><p>An alias by which to refer to this extension configuration
data.</p>
<p>Conditional: Specifying a configuration alias is required when
setting a configuration for a resource type extension.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_set_type_configuration_:_TypeName">TypeName</code></td>
<td><p>The name of the extension.</p>
<p>Conditional: You must specify <code>ConfigurationArn</code>, or
<code>Type</code> and <code>TypeName</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudformation_set_type_configuration_:_Type">Type</code></td>
<td><p>The type of extension.</p>
<p>Conditional: You must specify <code>ConfigurationArn</code>, or
<code>Type</code> and <code>TypeName</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ConfigurationArn = "string"
    )

### Request syntax

    svc$set_type_configuration(
      TypeArn = "string",
      Configuration = "string",
      ConfigurationAlias = "string",
      TypeName = "string",
      Type = "RESOURCE"|"MODULE"|"HOOK"
    )
