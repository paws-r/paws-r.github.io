<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudformation_register_type</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Registers an extension with the CloudFormation service

### Description

Registers an extension with the CloudFormation service. Registering an
extension makes it available for use in CloudFormation templates in your
Amazon Web Services account, and includes:

-   Validating the extension schema.

-   Determining which handlers, if any, have been specified for the
    extension.

-   Making the extension available for use in your account.

For more information about how to develop extensions and ready them for
registration, see [Creating Resource
Providers](https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-types.html)
in the *CloudFormation CLI User Guide*.

You can have a maximum of 50 resource extension versions registered at a
time. This maximum is per account and per region. Use `deregister_type`
to deregister specific extension versions if necessary.

Once you have initiated a registration request using `register_type`,
you can use `describe_type_registration` to monitor the progress of the
registration request.

Once you have registered a private extension in your account and region,
use `set_type_configuration` to specify configuration properties for the
extension. For more information, see [Configuring extensions at the
account
level](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/#registry-set-configuration)
in the *CloudFormation User Guide*.

### Usage

    cloudformation_register_type(Type, TypeName, SchemaHandlerPackage,
      LoggingConfig, ExecutionRoleArn, ClientRequestToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudformation_register_type_:_Type">Type</code></td>
<td><p>The kind of extension.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_register_type_:_TypeName">TypeName</code></td>
<td><p>[required] The name of the extension being registered.</p>
<p>We suggest that extension names adhere to the following patterns:</p>
<ul>
<li><p>For resource types,
<em>company_or_organization</em>::<em>service</em>::<em>type</em>.</p></li>
<li><p>For modules,
<em>company_or_organization</em>::<em>service</em>::<em>type</em>::MODULE.</p></li>
<li><p>For hooks,
<em>MyCompany</em>::<em>Testing</em>::<em>MyTestHook</em>.</p></li>
</ul>
<p>The following organization namespaces are reserved and can't be used
in your extension names:</p>
<ul>
<li><p><code>Alexa</code></p></li>
<li><p><code>AMZN</code></p></li>
<li><p><code>Amazon</code></p></li>
<li><p><code>AWS</code></p></li>
<li><p><code>Custom</code></p></li>
<li><p><code>Dev</code></p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="cloudformation_register_type_:_SchemaHandlerPackage">SchemaHandlerPackage</code></td>
<td><p>[required] A URL to the S3 bucket containing the extension
project package that contains the necessary files for the extension you
want to register.</p>
<p>For information about generating a schema handler package for the
extension you want to register, see <a
href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-cli-submit.html">submit</a>
in the <em>CloudFormation CLI User Guide</em>.</p>
<p>The user registering the extension must be able to access the package
in the S3 bucket. That's, the user needs to have <a
href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html">GetObject</a>
permissions for the schema handler package. For more information, see <a
href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazons3.html">Actions,
Resources, and Condition Keys for Amazon S3</a> in the <em>Identity and
Access Management User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_register_type_:_LoggingConfig">LoggingConfig</code></td>
<td><p>Specifies logging configuration information for an
extension.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudformation_register_type_:_ExecutionRoleArn">ExecutionRoleArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the IAM role for CloudFormation
to assume when invoking the extension.</p>
<p>For CloudFormation to assume the specified execution role, the role
must contain a trust relationship with the CloudFormation service
principle (<code>resources.cloudformation.amazonaws.com</code>). For
more information about adding trust relationships, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/roles-managingrole-editing-console.html#roles-managingrole_edit-trust-policy">Modifying
a role trust policy</a> in the <em>Identity and Access Management User
Guide</em>.</p>
<p>If your extension calls Amazon Web Services APIs in any of its
handlers, you must create an <em><span
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html">IAM
execution role</span></em> that includes the necessary permissions to
call those Amazon Web Services APIs, and provision that execution role
in your account. When CloudFormation needs to invoke the resource type
handler, CloudFormation assumes this execution role to create a
temporary session token, which it then passes to the resource type
handler, thereby supplying your resource type with the appropriate
credentials.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_register_type_:_ClientRequestToken">ClientRequestToken</code></td>
<td><p>A unique identifier that acts as an idempotency key for this
registration request. Specifying a client request token prevents
CloudFormation from generating more than one version of an extension
from the same registration request, even if the request is submitted
multiple times.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RegistrationToken = "string"
    )

### Request syntax

    svc$register_type(
      Type = "RESOURCE"|"MODULE"|"HOOK",
      TypeName = "string",
      SchemaHandlerPackage = "string",
      LoggingConfig = list(
        LogRoleArn = "string",
        LogGroupName = "string"
      ),
      ExecutionRoleArn = "string",
      ClientRequestToken = "string"
    )
