<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudformation_test_type</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Tests a registered extension to make sure it meets all necessary requirements for being published in the CloudFormation registry

### Description

Tests a registered extension to make sure it meets all necessary
requirements for being published in the CloudFormation registry.

-   For resource types, this includes passing all contracts tests
    defined for the type.

-   For modules, this includes determining if the module's model meets
    all necessary requirements.

For more information, see [Testing your public extension prior to
publishing](https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/publish-extension.html#publish-extension-testing)
in the *CloudFormation CLI User Guide*.

If you don't specify a version, CloudFormation uses the default version
of the extension in your account and region for testing.

To perform testing, CloudFormation assumes the execution role specified
when the type was registered. For more information, see `register_type`.

Once you've initiated testing on an extension using `test_type`, you can
pass the returned `TypeVersionArn` into `describe_type` to monitor the
current test status and test status description for the extension.

An extension must have a test status of `PASSED` before it can be
published. For more information, see [Publishing extensions to make them
available for public
use](https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/)
in the *CloudFormation CLI User Guide*.

### Usage

    cloudformation_test_type(Arn, Type, TypeName, VersionId,
      LogDeliveryBucket)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudformation_test_type_:_Arn">Arn</code></td>
<td><p>The Amazon Resource Name (ARN) of the extension.</p>
<p>Conditional: You must specify <code>Arn</code>, or
<code>TypeName</code> and <code>Type</code>.</p></td>
</tr>
<tr class="even">
<td><code id="cloudformation_test_type_:_Type">Type</code></td>
<td><p>The type of the extension to test.</p>
<p>Conditional: You must specify <code>Arn</code>, or
<code>TypeName</code> and <code>Type</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="cloudformation_test_type_:_TypeName">TypeName</code></td>
<td><p>The name of the extension to test.</p>
<p>Conditional: You must specify <code>Arn</code>, or
<code>TypeName</code> and <code>Type</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_test_type_:_VersionId">VersionId</code></td>
<td><p>The version of the extension to test.</p>
<p>You can specify the version id with either <code>Arn</code>, or with
<code>TypeName</code> and <code>Type</code>.</p>
<p>If you don't specify a version, CloudFormation uses the default
version of the extension in this account and region for
testing.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudformation_test_type_:_LogDeliveryBucket">LogDeliveryBucket</code></td>
<td><p>The S3 bucket to which CloudFormation delivers the contract test
execution logs.</p>
<p>CloudFormation delivers the logs by the time contract testing has
completed and the extension has been assigned a test type status of
<code>PASSED</code> or <code>FAILED</code>.</p>
<p>The user calling <code>test_type</code> must be able to access items
in the specified S3 bucket. Specifically, the user needs the following
permissions:</p>
<ul>
<li><p><code>GetObject</code></p></li>
<li><p><code>PutObject</code></p></li>
</ul>
<p>For more information, see <a
href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazons3.html">Actions,
Resources, and Condition Keys for Amazon S3</a> in the <em>Amazon Web
Services Identity and Access Management User Guide</em>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TypeVersionArn = "string"
    )

### Request syntax

    svc$test_type(
      Arn = "string",
      Type = "RESOURCE"|"MODULE"|"HOOK",
      TypeName = "string",
      VersionId = "string",
      LogDeliveryBucket = "string"
    )
