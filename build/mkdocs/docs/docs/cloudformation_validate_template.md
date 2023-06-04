<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudformation_validate_template</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Validates a specified template

### Description

Validates a specified template. CloudFormation first checks if the
template is valid JSON. If it isn't, CloudFormation checks if the
template is valid YAML. If both these checks fail, CloudFormation
returns a template validation error.

### Usage

    cloudformation_validate_template(TemplateBody, TemplateURL)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudformation_validate_template_:_TemplateBody">TemplateBody</code></td>
<td><p>Structure containing the template body with a minimum length of 1
byte and a maximum length of 51,200 bytes. For more information, go to
<a
href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html">Template
Anatomy</a> in the CloudFormation User Guide.</p>
<p>Conditional: You must pass <code>TemplateURL</code> or
<code>TemplateBody</code>. If both are passed, only
<code>TemplateBody</code> is used.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_validate_template_:_TemplateURL">TemplateURL</code></td>
<td><p>Location of file containing the template body. The URL must point
to a template (max size: 460,800 bytes) that is located in an Amazon S3
bucket or a Systems Manager document. For more information, go to <a
href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html">Template
Anatomy</a> in the CloudFormation User Guide.</p>
<p>Conditional: You must pass <code>TemplateURL</code> or
<code>TemplateBody</code>. If both are passed, only
<code>TemplateBody</code> is used.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Parameters = list(
        list(
          ParameterKey = "string",
          DefaultValue = "string",
          NoEcho = TRUE|FALSE,
          Description = "string"
        )
      ),
      Description = "string",
      Capabilities = list(
        "CAPABILITY_IAM"|"CAPABILITY_NAMED_IAM"|"CAPABILITY_AUTO_EXPAND"
      ),
      CapabilitiesReason = "string",
      DeclaredTransforms = list(
        "string"
      )
    )

### Request syntax

    svc$validate_template(
      TemplateBody = "string",
      TemplateURL = "string"
    )
