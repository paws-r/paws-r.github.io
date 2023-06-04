<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_put_conformance_pack</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates or updates a conformance pack

### Description

Creates or updates a conformance pack. A conformance pack is a
collection of Config rules that can be easily deployed in an account and
a region and across an organization. For information on how many
conformance packs you can have per account, see [**Service
Limits**](https://docs.aws.amazon.com/config/latest/developerguide/configlimits.html)
in the Config Developer Guide.

This API creates a service-linked role `AWSServiceRoleForConfigConforms`
in your account. The service-linked role is created only when the role
does not exist in your account.

You must specify only one of the follow parameters: `TemplateS3Uri`,
`TemplateBody` or `TemplateSSMDocumentDetails`.

### Usage

    configservice_put_conformance_pack(ConformancePackName, TemplateS3Uri,
      TemplateBody, DeliveryS3Bucket, DeliveryS3KeyPrefix,
      ConformancePackInputParameters, TemplateSSMDocumentDetails)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="configservice_put_conformance_pack_:_ConformancePackName">ConformancePackName</code></td>
<td><p>[required] The unique name of the conformance pack you want to
deploy.</p></td>
</tr>
<tr class="even">
<td><code
id="configservice_put_conformance_pack_:_TemplateS3Uri">TemplateS3Uri</code></td>
<td><p>The location of the file containing the template body (<code
style="white-space: pre;">⁠s3://bucketname/prefix⁠</code>). The uri must
point to a conformance pack template (max size: 300 KB) that is located
in an Amazon S3 bucket in the same Region as the conformance pack.</p>
<p>You must have access to read Amazon S3 bucket.</p></td>
</tr>
<tr class="odd">
<td><code
id="configservice_put_conformance_pack_:_TemplateBody">TemplateBody</code></td>
<td><p>A string containing the full conformance pack template body. The
structure containing the template body has a minimum length of 1 byte
and a maximum length of 51,200 bytes.</p>
<p>You can use a YAML template with two resource types: Config rule
(<code style="white-space: pre;">⁠AWS::Config::ConfigRule⁠</code>) and
remediation action (<code
style="white-space: pre;">⁠AWS::Config::RemediationConfiguration⁠</code>).</p></td>
</tr>
<tr class="even">
<td><code
id="configservice_put_conformance_pack_:_DeliveryS3Bucket">DeliveryS3Bucket</code></td>
<td><p>The name of the Amazon S3 bucket where Config stores conformance
pack templates.</p>
<p>This field is optional.</p></td>
</tr>
<tr class="odd">
<td><code
id="configservice_put_conformance_pack_:_DeliveryS3KeyPrefix">DeliveryS3KeyPrefix</code></td>
<td><p>The prefix for the Amazon S3 bucket.</p>
<p>This field is optional.</p></td>
</tr>
<tr class="even">
<td><code
id="configservice_put_conformance_pack_:_ConformancePackInputParameters">ConformancePackInputParameters</code></td>
<td><p>A list of <code>ConformancePackInputParameter</code>
objects.</p></td>
</tr>
<tr class="odd">
<td><code
id="configservice_put_conformance_pack_:_TemplateSSMDocumentDetails">TemplateSSMDocumentDetails</code></td>
<td><p>An object of type <code>TemplateSSMDocumentDetails</code>, which
contains the name or the Amazon Resource Name (ARN) of the Amazon Web
Services Systems Manager document (SSM document) and the version of the
SSM document that is used to create a conformance pack.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ConformancePackArn = "string"
    )

### Request syntax

    svc$put_conformance_pack(
      ConformancePackName = "string",
      TemplateS3Uri = "string",
      TemplateBody = "string",
      DeliveryS3Bucket = "string",
      DeliveryS3KeyPrefix = "string",
      ConformancePackInputParameters = list(
        list(
          ParameterName = "string",
          ParameterValue = "string"
        )
      ),
      TemplateSSMDocumentDetails = list(
        DocumentName = "string",
        DocumentVersion = "string"
      )
    )
