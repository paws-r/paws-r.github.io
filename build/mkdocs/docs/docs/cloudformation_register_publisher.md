<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudformation_register_publisher</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Registers your account as a publisher of public extensions in the CloudFormation registry

### Description

Registers your account as a publisher of public extensions in the
CloudFormation registry. Public extensions are available for use by all
CloudFormation users. This publisher ID applies to your account in all
Amazon Web Services Regions.

For information about requirements for registering as a public extension
publisher, see [Registering your account to publish CloudFormation
extensions](https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/publish-extension.html#publish-extension-prereqs)
in the *CloudFormation CLI User Guide*.

### Usage

    cloudformation_register_publisher(AcceptTermsAndConditions,
      ConnectionArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudformation_register_publisher_:_AcceptTermsAndConditions">AcceptTermsAndConditions</code></td>
<td><p>Whether you accept the <a
href="https://cloudformation-registry-documents.s3.amazonaws.com/Terms_and_Conditions_for_AWS_CloudFormation_Registry_Publishers.pdf">Terms
and Conditions</a> for publishing extensions in the CloudFormation
registry. You must accept the terms and conditions in order to register
to publish public extensions to the CloudFormation registry.</p>
<p>The default is <code>false</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_register_publisher_:_ConnectionArn">ConnectionArn</code></td>
<td><p>If you are using a Bitbucket or GitHub account for identity
verification, the Amazon Resource Name (ARN) for your connection to that
account.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/publish-extension.html#publish-extension-prereqs">Registering
your account to publish CloudFormation extensions</a> in the
<em>CloudFormation CLI User Guide</em>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PublisherId = "string"
    )

### Request syntax

    svc$register_publisher(
      AcceptTermsAndConditions = TRUE|FALSE,
      ConnectionArn = "string"
    )
